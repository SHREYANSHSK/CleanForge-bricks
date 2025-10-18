# CleanForge Hooks Documentation

This guide explains the hooks used in CleanForge bricks and their functionality. Hooks are special scripts that run before (`pre_gen.dart`) and after (`post_gen.dart`) the brick generation process.

## Cleanforge Brick Hooks

### Pre-Generation Hook (`pre_gen.dart`)

The pre-generation hook for the main CleanForge brick performs several setup validations and preparations:

```dart
// Primary responsibilities of pre_gen.dart
void run(HookContext context) {
  // 1. Validate project name
  // 2. Set up directory structure
  // 3. Configure dependencies
  // 4. Initialize Git repository if needed
  // 5. Prepare environment files
}
```

Key functions:
1. **Project Name Validation**
   - Checks for valid Dart package naming
   - Ensures no special characters
   - Validates length constraints

2. **Directory Structure Setup**
   - Creates necessary folders
   - Sets up initial structure
   - Prepares asset directories

3. **Dependency Configuration**
   - Sets up GetX dependencies
   - Configures dev dependencies
   - Adds required Flutter packages

### Post-Generation Hook (`post_gen.dart`)

The post-generation hook handles final setup and configuration:

```dart
// Primary responsibilities of post_gen.dart
void run(HookContext context) {
  // 1. Update pubspec.yaml
  // 2. Run pub get
  // 3. Initialize GetX structure
  // 4. Set up theme configuration
  // 5. Configure routing
}
```

Key functions:
1. **Pubspec Updates**
   - Adds required dependencies
   - Sets SDK constraints
   - Configures assets and fonts

2. **GetX Setup**
   - Initializes GetX configuration
   - Sets up bindings
   - Configures route management

3. **Theme Configuration**
   - Sets up light/dark themes
   - Configures theme controller
   - Initializes theme persistence

## Cleanforge Feature Brick Hooks

### Pre-Generation Hook (`pre_gen.dart`)

The feature brick's pre-generation hook handles feature-specific validations:

```dart
// Primary responsibilities of pre_gen.dart
void run(HookContext context) {
  // 1. Validate feature name
  // 2. Check for conflicts
  // 3. Prepare feature structure
  // 4. Validate dependencies
}
```

Key functions:
1. **Feature Name Validation**
   - Checks naming conventions
   - Ensures uniqueness
   - Validates format

2. **Dependency Validation**
   - Verifies required packages
   - Checks GetX installation
   - Validates project structure

### Post-Generation Hook (`post_gen.dart`)

The feature brick's post-generation hook handles feature integration:

```dart
// Primary responsibilities of post_gen.dart
void run(HookContext context) {
  // 1. Update route configuration
  // 2. Register bindings
  // 3. Set up feature dependencies
  // 4. Configure feature module
}
```

Key functions:
1. **Route Configuration**
   - Adds feature routes
   - Updates route constants
   - Configures navigation

2. **Binding Registration**
   ```dart
   // Example of auto-generated binding registration
   void registerBindings(String featureName) {
     final bindingPath = 'lib/features/$featureName/presentation/bindings/${featureName}_binding.dart';
     final binding = File(bindingPath);
     
     // Update app_binding.dart to include new feature binding
     final appBinding = File('lib/app/app_binding.dart');
     // Add new binding to dependencies
   }
   ```

3. **Feature Module Setup**
   - Creates feature structure
   - Sets up repositories
   - Configures controllers
   - Initializes state management

## Hook Utilities

Both bricks include common utility functions in their hooks:

### String Manipulation
```dart
// Convert feature name to different cases
String toSnakeCase(String name) => name.replaceAllMapped(
  RegExp(r'[A-Z]'),
  (Match m) => '_${m[0]?.toLowerCase()}',
).toLowerCase();

String toPascalCase(String name) => name
    .split('_')
    .map((word) => word[0].toUpperCase() + word.substring(1))
    .join();
```

### File Operations
```dart
// Add content to existing files
void appendToFile(String path, String content) {
  final file = File(path);
  if (file.existsSync()) {
    file.writeAsStringSync(content, mode: FileMode.append);
  }
}

// Update specific sections in files
void updateSection(String path, String marker, String content) {
  final file = File(path);
  if (file.existsSync()) {
    var text = file.readAsStringSync();
    text = text.replaceAll(RegExp(r'// $marker\n.*// End $marker', dotAll: true),
        '// $marker\n$content\n  // End $marker');
    file.writeAsStringSync(text);
  }
}
```

### Validation Functions
```dart
bool isValidPackageName(String name) {
  final regex = RegExp(r'^[a-zA-Z_][a-zA-Z0-9_]*$');
  return regex.hasMatch(name);
}

bool isValidFeatureName(String name) {
  final regex = RegExp(r'^[a-zA-Z][a-zA-Z0-9_]*$');
  return regex.hasMatch(name);
}
```

## Best Practices

1. **Hook Organization**
   - Keep hooks focused and single-responsibility
   - Use utility functions for common operations
   - Maintain clear error messages
   - Add proper logging

2. **Error Handling**
   ```dart
   void handleErrors(void Function() operation) {
     try {
       operation();
     } catch (e) {
       print('Error during hook execution: $e');
       rethrow;
     }
   }
   ```

3. **File Management**
   - Always check file existence
   - Use atomic operations
   - Handle permissions properly
   - Clean up temporary files

4. **Validation**
   - Validate all inputs
   - Check for system requirements
   - Verify dependencies
   - Test edge cases

## Common Issues and Solutions

1. **Permission Issues**
   ```dart
   void ensureWritePermission(String path) {
     final directory = Directory(path);
     if (!directory.existsSync()) {
       directory.createSync(recursive: true);
     }
   }
   ```

2. **Dependency Conflicts**
   ```dart
   void checkDependencyConflicts(String path) {
     final pubspec = File('$path/pubspec.yaml');
     // Check for version conflicts
   }
   ```

3. **File Path Issues**
   ```dart
   String normalizePath(String path) {
     return path.replaceAll(RegExp(r'\\'), '/');
   }
   ```

## Testing Hooks

To test hooks during development:

1. **Manual Testing**
   ```bash
   # Test main brick
   mason make cleanforge --project_name test_project

   # Test feature brick
   mason make cleanforge_feature --feat test_feature
   ```
