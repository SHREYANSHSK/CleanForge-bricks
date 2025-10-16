import 'dart:convert';
import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final mode = (context.vars['mode'] as String?)?.trim() ?? 'new_project';
  var projectName = (context.vars['project_name'] as String?)?.trim() ?? '';
  final stateManagement = (context.vars['state_management'] as String?)?.trim() ?? 'getx';

  context.logger.info('🔧 Mode: ${mode == "new_project" ? "Creating New Project" : "Using Existing Project"}');
  context.logger.info('🧠 State Management: $stateManagement');

  if (mode == 'new_project') {
    await _handleNewProject(context, projectName, stateManagement);
    // For new projects, package_name is same as project_name
    context.vars['package_name'] = projectName;
  } else {
    // For existing projects, detect package name from pubspec.yaml
    final packageName = await _handleExistingProject(context, projectName, stateManagement);
    context.vars['project_name'] = '.'; // For file generation path
    context.vars['package_name'] = packageName; // For imports
  }
}

/// Handle creation of a new Flutter project
Future<void> _handleNewProject(
    HookContext context,
    String projectName,
    String stateManagement,
    ) async {
  if (projectName.isEmpty) {
    context.logger.err(
      '❌ Error: project_name is required when creating a new project.',
    );
    exit(1);
  }

  // Validate Flutter project name syntax
  final isValidName = RegExp(r'^[a-z][a-z0-9_]*$').hasMatch(projectName);
  if (!isValidName) {
    context.logger.err(
      '''
❌ Invalid project name: "$projectName"
👉 Flutter project names must follow these rules:
   • Only lowercase letters, numbers, and underscores
   • Must start with a lowercase letter
   • No spaces or hyphens allowed
Example: my_flutter_app
''',
    );
    exit(1);
  }

  context.logger.info('📦 Project Name: $projectName');

  final projectDir = Directory(projectName);

  if (!await projectDir.exists()) {
    context.logger.info('🚀 Creating new Flutter project "$projectName"...');

    try {
      final result = await Process.start(
        'flutter',
        ['create', projectName],
        runInShell: true,
      );

      await stdout.addStream(result.stdout);
      await stderr.addStream(result.stderr);

      final exitCode = await result.exitCode;
      if (exitCode != 0) {
        context.logger.err('❌ Flutter project creation failed with exit code $exitCode.');
        exit(1);
      }

      context.logger.success('✅ Flutter project "$projectName" created successfully.');
    } catch (e) {
      context.logger.err('❌ Error creating Flutter project: $e');
      exit(1);
    }
  } else {
    context.logger.warn('⚠️ Folder "$projectName" already exists. Skipping flutter create.');
  }

  // Create .cleanforge directory and config.json
  await _createConfig(context, projectName, stateManagement);

  context.logger.success('🎯 Pre-generation setup complete! You can now generate features inside $projectName.');
}

/// Handle using an existing Flutter project
Future<String> _handleExistingProject(
    HookContext context,
    String projectName,
    String stateManagement,
    ) async {
  final targetDir = projectName.isEmpty ? Directory.current : Directory(projectName);

  final pubspecFile = File('${targetDir.path}/pubspec.yaml');
  if (!await pubspecFile.exists()) {
    context.logger.err(
      '''
❌ Error: Not a valid Flutter project!
👉 Please ensure you are in a Flutter project directory or specify a valid project path.
   Expected to find: pubspec.yaml
   Current directory: ${targetDir.path}
''',
    );
    exit(1);
  }

  // Read package name from pubspec.yaml
  String packageName = 'my_app';
  try {
    final pubspecContent = await pubspecFile.readAsString();
    final nameMatch = RegExp(r'^name:\s*(.+)$', multiLine: true).firstMatch(pubspecContent);
    if (nameMatch != null) {
      packageName = nameMatch.group(1)!.trim();
      context.logger.info('📦 Detected package name: $packageName');
    }
  } catch (e) {
    context.logger.warn('⚠️ Could not read package name from pubspec.yaml, using default: $packageName');
  }

  final actualProjectName = targetDir.path.split(Platform.pathSeparator).last;
  context.logger.info('📦 Using existing project: $actualProjectName');
  context.logger.info('📁 Project path: ${targetDir.path}');

  // Create .cleanforge directory and config.json
  await _createConfig(context, targetDir.path, stateManagement);

  context.logger.success('🎯 Configuration complete! You can now generate features in this project.');

  return packageName;
}

/// Create .cleanforge directory and config.json
Future<void> _createConfig(
    HookContext context,
    String projectPath,
    String stateManagement,
    ) async {
  try {
    final configDir = Directory('$projectPath/.cleanforge');
    await configDir.create(recursive: true);

    final configFile = File('$projectPath/.cleanforge/config.json');

    final projectName = projectPath.split(Platform.pathSeparator).last;

    final config = {
      'project_name': projectName,
      'package_name': projectName,
      'state_management': stateManagement,
      'created_at': DateTime.now().toIso8601String(),
    };

    await configFile.writeAsString(const JsonEncoder.withIndent('  ').convert(config));

    context.logger.info('🧩 Created .cleanforge/config.json');
  } catch (e) {
    context.logger.err('❌ Error creating config.json: $e');
    exit(1);
  }
}
