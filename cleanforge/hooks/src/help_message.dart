import 'package:mason/mason.dart';

void showHelpMessage(HookContext context) {
  final mode = context.vars['mode'] as String?;
  final projectName = context.vars['project_name'] as String?;

  context.logger.success(
      '\n✨ ${mode == 'new_project' ? 'Project created' : 'Clean Architecture added'} successfully! ✨\n');

  context.logger.info('''


🔍 Need help or examples?
  • Check out our example project: https://github.com/SHREYANSHSK/CleanForge-example
  • Contains complete API implementation
  • Shows proper architecture patterns
  • Includes state management examples

🛠️ Common commands:
  • Create a new feature:
    mason make cleanforge_feature --feat feature_name
  • Add more features following the same pattern
  
📦 Installed packages:
  • get: State management
  • dio: API client
  • logger: Logging utility
  • dartz: Functional programming
  • And more...

💡 For more information:
  • Github Repo: https://github.com/SHREYANSHSK/cleanforge_bricks
  • Detail Documentation: https://shreyanshsk.github.io/CleanForge-bricks/
  • Medium Documentation: https://medium.com/@khandelwal.shreyansh.sk/getting-started-with-cleanforge-bricks-flutter-clean-architecture-made-easy-30aa57e27abb
  • Example Project: https://github.com/SHREYANSHSK/CleanForge-example
  • Report issues: https://github.com/SHREYANSHSK/cleanforge_bricks/issues

Happy coding! 🚀
''');
}
