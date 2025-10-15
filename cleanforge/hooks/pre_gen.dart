import 'dart:convert';
import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final projectName = (context.vars['project_name'] as String?)?.trim() ?? '';
  final stateManagement = (context.vars['state_management'] as String?)?.trim() ?? 'getx';

  /// Validate inputs
  if (projectName.isEmpty) {
    context.logger.err(
      '❌ Error: project_name is missing or empty. Please provide a valid project name using --project_name or interactive prompt.',
    );
    return;
  }

  /// Step 0: Validate Flutter project name syntax
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
    return;
  }

  context.logger.info('📦 Project Name: $projectName');
  context.logger.info('🧠 State Management: $stateManagement');

  // 🔍 Step 1: Check if the project folder already exists

  final projectDir = Directory(projectName);

  if (!await projectDir.exists()) {
    /// Step 2: Run `flutter create`
    context.logger.info('🚀 Creating new Flutter project "$projectName"...');

    try {
      final result = await Process.start(
        'flutter',
        ['create', projectName],
        runInShell: true,
      );

      // Pipe stdout/stderr to Mason logger
      await stdout.addStream(result.stdout);
      await stderr.addStream(result.stderr);

      final exitCode = await result.exitCode;
      if (exitCode != 0) {
        context.logger.err('❌ Flutter project creation failed with exit code $exitCode.');
        return;
      }

      context.logger.success('✅ Flutter project "$projectName" created successfully.');
    } catch (e) {
      context.logger.err('❌ Error creating Flutter project: $e');
      return;
    }
  } else {
    context.logger.warn('⚠️ Folder "$projectName" already exists. Skipping flutter create.');
  }

  ///  Step 3: Create .cleanforge directory and config.json
  try {
    final configDir = Directory('$projectName/.cleanforge');
    await configDir.create(recursive: true);

    final configFile = File('$projectName/.cleanforge/config.json');
    final config = {
      'project_name': projectName,
      'state_management': stateManagement,
    };

    await configFile.writeAsString(jsonEncode(config));
    context.logger.info('🧩 Created $projectName/.cleanforge/config.json');
  } catch (e) {
    context.logger.err('❌ Error creating config.json: $e');
    return;
  }

  context.vars['output_dir'] = projectName;

  context.logger.success('🎯 Pre-generation setup complete! You can now generate features inside $projectName.');
}
