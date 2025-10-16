import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final featureName = (context.vars['feat'] as String?)?.trim() ?? '';
  final projectName = (context.vars['project_name'] as String?)?.trim() ?? '';
  final stateManagement =
      (context.vars['state_management'] as String?)?.trim() ?? 'getx';

  /// Validate inputs (should be set by pre_gen.dart)
  if (featureName.isEmpty) {
    context.logger.err(
        'Error: feat is missing or empty. Please provide a valid feature name using --feat or interactive prompt.');
    return;
  }
  if (projectName.isEmpty) {
    context.logger.err(
        'Error: project_name is missing or empty. Check .cleanforge/config.json or provide --project_name.');
    return;
  }
  if (stateManagement.isEmpty) {
    context.logger.err(
        'Error: state_management is missing or empty. Defaulting to "getx".');
    return;
  }

  /// Warn if state_management isn't getx
  if (stateManagement != 'getx') {
    context.logger.warn(
        'Custom state_management "$stateManagement" detected, but feature templates are GetX-only (as of now). Update templates for support.');
  }

  context.logger.info('Using project_name: $projectName');
  context.logger.info('Using state_management: $stateManagement');

  /// Convert feature name
  final snake = featureName.snakeCase;
  final camel = featureName.camelCase;
  final pascal = featureName.pascalCase;

  /// Update app_routes.dart
  final routesFile = File('lib/routes/app_routes.dart');
  if (await routesFile.exists()) {
    var content = await routesFile.readAsString();
    final insertPoint = content.lastIndexOf('}');
    if (insertPoint != -1) {
      final newConst = '  static const $camel = \'/$snake\';\n';
      content = content.substring(0, insertPoint) +
          newConst +
          content.substring(insertPoint);
      await routesFile.writeAsString(content);
      context.logger.info('✅ Updated app_routes.dart with route: /$snake');
    } else {
      context.logger
          .warn('⚠️ Could not update app_routes.dart (missing closing brace).');
    }
  } else {
    context.logger.warn('⚠️ app_routes.dart not found. Skipping route update.');
  }

  /// Update app_pages.dart
  final pagesFile = File('lib/routes/app_pages.dart');
  if (await pagesFile.exists()) {
    var content = await pagesFile.readAsString();
    final importBinding =
        "import 'package:$projectName/features/$snake/presentation/bindings/${snake}_binding.dart';\n";
    final importPage =
        "import 'package:$projectName/features/$snake/presentation/pages/${snake}_page.dart';\n";
    final importRoutes = content
            .contains("import 'package:$projectName/routes/app_routes.dart';")
        ? ''
        : "import 'package:$projectName/routes/app_routes.dart';\n";

    content = importBinding + importPage + importRoutes + content;

    final listStart = content.indexOf('static final pages = [');
    if (listStart != -1) {
      final listEnd = content.indexOf('];', listStart);
      if (listEnd != -1) {
        final newPage = '''    GetPage(
      name: AppRoutes.$camel,
      page: () => const ${pascal}Page(),
      binding: ${pascal}Binding(),
    )\n''';
        content =
            '${content.substring(0, listEnd)},\n$newPage${content.substring(listEnd)}';
        await pagesFile.writeAsString(content);
        context.logger.info('✅ Updated app_pages.dart with ${pascal}Page');
      } else {
        context.logger.warn(
            '⚠️ Could not update app_pages.dart (missing pages list end).');
      }
    } else {
      context.logger
          .warn('⚠️ Could not update app_pages.dart (missing pages list).');
    }
  } else {
    context.logger.warn('⚠️ app_pages.dart not found. Skipping page update.');
  }

  /// ✅ Update API Endpoints file
  final apiEndpointsFile =
      File('lib/common/resources/network_resources/api_endpoints.dart');
  if (await apiEndpointsFile.exists()) {
    var apiContent = await apiEndpointsFile.readAsString();
    final insertPoint = apiContent.lastIndexOf('}');
    if (insertPoint != -1) {
      final newEndpoint =
          '  static String ${snake}DataEndPointById(id) => "/api/sample/$snake/\$id";\n';
      apiContent = apiContent.substring(0, insertPoint) +
          newEndpoint +
          apiContent.substring(insertPoint);
      await apiEndpointsFile.writeAsString(apiContent);
      context.logger.info(
          '✅ Added new endpoint: /api/sample/$snake in api_endpoints.dart');
    } else {
      context.logger.warn(
          '⚠️ Could not update api_endpoints.dart (missing closing brace).');
    }
  } else {
    context.logger.warn(
        '⚠️ api_endpoints.dart not found at lib/common/resources/network_resources/. Skipping API update.');
  }

  /// --- FORMAT ALL DART FILES ---
  try {
    context.logger.info('Running "dart format" to clean up all files...');
    final result = await Process.run(
      'dart',
      ['format', '.'],
      runInShell: true,
    );

    if (result.exitCode == 0) {
      context.logger.success('✅ Code formatted successfully.');
    } else {
      context.logger.warn(
          '⚠️ dart format exited with code ${result.exitCode}: ${result.stderr}');
    }
  } catch (e) {
    context.logger.warn('⚠️ dart format failed: $e');
  }

  context.logger.success('🎉 Feature "$featureName" added successfully!');
  context.logger.info('Run `flutter pub get` if needed.');
}
