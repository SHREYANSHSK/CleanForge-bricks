import 'dart:io';
import 'dart:convert';
import 'package:mason/mason.dart';
import 'src/help_message.dart' as helpMessage;

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Adding dependencies with flutter pub add');

  // Determine the correct project directory
  String projectPath = '.';

  try {
    // Try to read from .cleanforge/config.json
    final configFile = File('.cleanforge/config.json');
    if (await configFile.exists()) {
      final configContent = await configFile.readAsString();
      final config = jsonDecode(configContent) as Map<String, dynamic>;
      final mode = context.vars['mode'] as String?;

      if (mode == 'new_project') {
        // For new projects, use the project_name from config
        projectPath = config['project_name'] as String? ?? '.';
      } else {
        // For existing projects, use current directory
        projectPath = '.';
      }
    } else {
      // Fallback: use project_name if provided, otherwise current directory
      final projectName = (context.vars['project_name'] as String?)?.trim() ?? '';
      projectPath = projectName.isNotEmpty ? projectName : '.';
    }
  } catch (e) {
    context.logger.warn('Could not read config, using current directory: $e');
    projectPath = '.';
  }

  final projectDir = Directory(projectPath);
  context.logger.info('Running in directory: ${projectDir.absolute.path}');

  // Check if flutter command is available
  try {
    final flutterCheck = await Process.run(
      'flutter',
      ['--version'],
      workingDirectory: projectDir.path,
      runInShell: true,
    );

    if (flutterCheck.exitCode == 0) {
      context.logger.info('✅ Flutter detected successfully');
    } else {
      context.logger
          .warn('⚠️ Flutter version check failed: ${flutterCheck.stderr}');
      context.logger.info('Ensure `flutter` is in your system PATH.');
    }
  } catch (e) {
    context.logger.warn('⚠️ Error checking Flutter: $e');
    context.logger.info(
        'Continuing with package addition despite Flutter version check failure.');
    context.logger.info('Ensure `flutter` is in your system PATH.');
  }

  // List of packages to add
  final packages = [
    'get',
    'dio',
    'logger',
    'dartz',
    'toastification',
    'intl',
    'url_launcher',
    'flutter_dotenv',
    'flutter_screenutil',
    'google_fonts',
    'connectivity_plus',
    'get_storage',
  ];

  // Add packages
  try {
    context.logger.info('📦 Adding required packages...');
    final result = await Process.run(
      'flutter',
      ['pub', 'add', ...packages],
      runInShell: true,
      workingDirectory: projectDir.path,
    );

    if (result.exitCode == 0) {
      context.logger.success('✅ Successfully added all packages');
    } else {
      context.logger.err('❌ Failed to add packages: ${result.stderr}');
    }
  } catch (e) {
    context.logger.err('❌ Error adding packages: $e');
  }


  // Format all Dart files
  try {
    context.logger.info('🎨 Formatting code...');
    final result = await Process.run(
      'dart',
      ['format', '.'],
      runInShell: true,
      workingDirectory: projectDir.path,
    );

    if (result.exitCode == 0) {
      context.logger.success('✅ Code formatted successfully');
    } else {
      context.logger.warn('⚠️ dart format exited with code ${result.exitCode}');
    }
  } catch (e) {
    context.logger.warn('⚠️ dart format failed: $e');
  }

  // Apply dart fix
  try {
    context.logger.info('🔧 Applying dart fixes...');
    final result = await Process.run(
      'dart',
      ['fix', '--apply'],
      runInShell: true,
      workingDirectory: projectDir.path,
    );

    if (result.exitCode == 0) {
      context.logger.success('✅ Dart fixes applied successfully');
    } else {
      context.logger.warn('⚠️ dart fix exited with code ${result.exitCode}');
    }
  } catch (e) {
    context.logger.warn('⚠️ dart fix failed: $e');
  }

  progress.complete('✅ Dependencies addition process completed');

  // Show help message
  helpMessage.showHelpMessage(context);
}
