import 'dart:convert';
import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final featureName = (context.vars['feat'] as String?)?.trim() ?? '';
  final overrideProjectName = (context.vars['project_name'] as String?)?.trim();
  final overrideStateManagement = (context.vars['state_management'] as String?)?.trim();

  // Validate feat
  if (featureName.isEmpty) {
    context.logger.err('Error: feat is missing or empty. Please provide a valid feature name using --feat or interactive prompt.');
    return;
  }

  /// Read config from .cleanforge/config.json
  String projectName;
  String stateManagement;
  try {
    final configFile = File('.cleanforge/config.json');
    if (!await configFile.exists()) {
      context.logger.err('Error: .cleanforge/config.json not found. Ensure the project was generated with cleanforge.');
      return;
    }
    final configContent = await configFile.readAsString();
    final config = jsonDecode(configContent) as Map<String, dynamic>;
    projectName = (config['project_name'] as String?)?.trim() ?? '';
    stateManagement = (config['state_management'] as String?)?.trim() ?? 'getx';

    if (projectName.isEmpty) {
      context.logger.err('Error: project_name is missing or empty in .cleanforge/config.json.');
      return;
    }
    if (stateManagement.isEmpty) {
      context.logger.err('Error: state_management is missing or empty in .cleanforge/config.json. Defaulting to "getx".');
      stateManagement = 'getx';
    }
  } catch (e) {
    context.logger.err('Error reading .cleanforge/config.json: $e');
    return;
  }

  /// Apply overrides if provided
  projectName = overrideProjectName?.isNotEmpty == true ? overrideProjectName! : projectName;
  stateManagement = overrideStateManagement?.isNotEmpty == true ? overrideStateManagement! : stateManagement;

  /// Update context.vars for template rendering
  context.vars['project_name'] = projectName;
  context.vars['state_management'] = stateManagement;

  context.logger.info('Pre-gen: Using project_name: $projectName');
  context.logger.info('Pre-gen: Using state_management: $stateManagement');
}