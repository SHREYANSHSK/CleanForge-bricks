import 'dart:convert';
import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final projectName = (context.vars['project_name'] as String?)?.trim() ?? '';
  final stateManagement = (context.vars['state_management'] as String?)?.trim() ?? 'getx';

  // Validate inputs
  if (projectName.isEmpty) {
    context.logger.err('Error: project_name is missing or empty. Please provide a valid project name using --project_name or interactive prompt.');
    return;
  }
  if (stateManagement.isEmpty) {
    context.logger.err('Error: state_management is missing or empty. Defaulting to "getx".');
    return;
  }

  // Create .cleanforge directory and config.json
  try {
    final configDir = Directory('.cleanforge');
    await configDir.create(recursive: true);
    final configFile = File('.cleanforge/config.json');
    final config = {
      'project_name': projectName,
      'state_management': stateManagement,
    };
    await configFile.writeAsString(jsonEncode(config));
    context.logger.info('Created .cleanforge/config.json with project_name: $projectName, state_management: $stateManagement');
  } catch (e) {
    context.logger.err('Error creating .cleanforge/config.json: $e');
    return;
  }
}