import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final featureName = context.vars['feature_name'] as String;
  final snake = featureName.snakeCase;
  final camel = featureName.camelCase;
  final pascal = featureName.pascalCase;
  final projectName = context.vars['project_name'] as String;

  // Update app_routes.dart
  final routesFile = File('lib/routes/app_routes.dart');
  if (await routesFile.exists()) {
    var content = await routesFile.readAsString();

    // Add import if needed (but since it's const, no import needed for the class)

    // Find the class and add the const
    final insertPoint = content.lastIndexOf('}');
    if (insertPoint != -1) {
      final newConst = '  static const $camel = \'/$snake\';\n';
      content = content.substring(0, insertPoint) + newConst + content.substring(insertPoint);
      await routesFile.writeAsString(content);
    }
  }

  // Update app_pages.dart
  final pagesFile = File('lib/routes/app_pages.dart');
  if (await pagesFile.exists()) {
    var content = await pagesFile.readAsString();

    // Add imports
    final importBinding = 'import \'package:$projectName/features/$snake/presentation/bindings/${snake}_binding.dart\';\n';
    final importPage = 'import \'package:$projectName/features/$snake/presentation/pages/${snake}_page.dart\';\n';
    final importRoutes = content.contains('import \'package:$projectName/routes/app_routes.dart\';') ? '' : 'import \'package:$projectName/routes/app_routes.dart\';\n';

    content = importBinding + importPage + importRoutes + content;

    // Find the pages list and add the GetPage
    final listStart = content.indexOf('static final pages = [');
    if (listStart != -1) {
      final listEnd = content.indexOf('];', listStart);
      if (listEnd != -1) {
        final newPage = '    GetPage(\n      name: AppRoutes.$camel,\n      page: () => const ${pascal}Page(),\n      binding: ${pascal}Binding(),\n    ),\n';
        content = content.substring(0, listEnd) + ',\n' + newPage + content.substring(listEnd);
        await pagesFile.writeAsString(content);
      }
    }
  }
}