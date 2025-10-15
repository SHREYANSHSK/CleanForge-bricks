import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress =
      context.logger.progress('Adding dependencies with flutter pub add');
  final projectName = (context.vars['project_name'] as String?)?.trim() ?? '';


  /// Log current directory
  final projectDir = Directory(projectName);
  context.logger.info('Running in directory: ${projectDir.path}');
  context.logger.info(context.vars['output_dir']);

  /// Check if flutter command is available (for debugging)
  try {
    final flutterCheck = await Process.run(
      'flutter',
      ['--version'],
      workingDirectory: projectDir.path,
      runInShell: true
    );
    context.logger
        .info('Flutter version check exit code: ${flutterCheck.exitCode}');
    context.logger.info('Flutter version output: ${flutterCheck.stdout}');
    if (flutterCheck.exitCode != 0) {
      context.logger
          .warn('Flutter version check failed: ${flutterCheck.stderr}');
      context.logger.info('Ensure `flutter` is in your system PATH.');
    }
  } catch (e) {
    context.logger.warn('Error checking Flutter: $e');
    context.logger.info(
        'Continuing with package addition despite Flutter version check failure.');
    context.logger.info('Ensure `flutter` is in your system PATH.');
  }


  /// List of packages with exact versions
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

  /// Track failed packages
  final failedPackages = <String>[];

  /// Add each package
  for (final package in packages) {
    try {
      context.logger.info('Adding package: $package');
      final result = await Process.run(
        'flutter',
        ['pub', 'add', package],
        runInShell: true,
        workingDirectory: projectDir.path,
      );
      if (result.exitCode == 0) {
        context.logger.info('Successfully added $package');
      } else {
        context.logger.err('Failed to add $package: ${result.stderr}');
        failedPackages.add(package);
      }
    } catch (e) {
      context.logger.err('Error adding $package: $e');
      failedPackages.add(package);
    }
  }

  /// --- FORMAT ALL DART FILES ---
  try {
    context.logger.info('Running "dart format" to clean up all files...');
    final result = await Process.run(
      'dart',
      ['format', '.'],
      runInShell: true,
      workingDirectory: projectDir.path
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

  /// If any packages failed, provide a single set of commands
  if (failedPackages.isNotEmpty) {
    context.logger.err(
        'Some packages failed to install. Run the following commands manually in $projectDir:');
    final commands =
        'flutter pub add ${failedPackages.map((pkg) => pkg).join(" ")}';
    context.logger.info('```\n$commands\n```');
  }
  context.logger.info('Templates generated in: ${Directory.current.path}');

  progress.complete('Dependencies addition process completed');
}
