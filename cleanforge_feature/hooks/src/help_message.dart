import 'package:mason/mason.dart';

void showFeatureHelpMessage(HookContext context, String featureName) {
  context.logger.success('\n✨ Feature "$featureName" generated successfully! ✨\n');
  
  context.logger.info('''

🔍 Need implementation examples?
  • Check our example project: https://github.com/SHREYANSHSK/CleanForge-example
  • Shows complete feature implementation
  • Contains API integration examples
  • Demonstrates proper state management

🛠️ Generated components:
  • Data Layer: Models, Repository impl, Data sources
  • Domain Layer: Entities, Repository interface, Use cases
  • Presentation Layer: Controller, View, Binding, State

💡 Routes are automatically configured:
  • Check lib/routes/app_pages.dart
  • Use Get.toNamed('/${featureName}') for navigation

📚 For more examples and documentation:
  • Documentation: https://github.com/SHREYANSHSK/cleanforge_bricks
  • Example Project: https://github.com/SHREYANSHSK/CleanForge-example
  • Report issues: https://github.com/SHREYANSHSK/cleanforge_bricks/issues

Happy coding! 🚀
''');
}