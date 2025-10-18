# Welcome to CleanForge Bricks Wiki 🏗️

Welcome to the official wiki for CleanForge Bricks, a powerful Mason brick collection for generating Flutter applications using Clean Architecture with GetX state management.

## Quick Navigation

- [Installation Guide](Installation)
- [Project Structure](Project-Structure)
- [Feature Generation](Feature-Generation)
- [Customization Guide](Customization)
- [Contributing Guidelines](Contributing)

## What is CleanForge Bricks? 🎯

CleanForge Bricks is a comprehensive toolkit that helps Flutter developers scaffold applications following Clean Architecture principles. It provides a structured approach to building scalable and maintainable Flutter applications.

### Key Features 🚀

- **Project Generation**: Complete project structure with Clean Architecture
- **Feature Generation**: Rapid feature development with full layer compliance
- **GetX Integration**: Built-in GetX state management
- **Customizable**: Extensive hooks for customization

## Getting Started 🌟

### Prerequisites

- Dart SDK installed
- Flutter SDK installed
- Basic understanding of Clean Architecture
- Familiarity with GetX state management

### Installation

```bash
# Install Mason CLI globally
dart pub global activate mason_cli

# Add bricks to your project
mason add cleanforge
mason add cleanforge_feature
```

## Available Bricks 🧱

1. **cleanforge**
   - Purpose: Generate a complete Flutter project structure
   - Usage: `mason make cleanforge --project_name my_awesome_app`

2. **cleanforge_feature**
   - Purpose: Generate a new feature with all required layers
   - Usage: `mason make cleanforge_feature --feat authentication`

## Project Structure Overview 📁

```
lib/
├── app/                # App configuration
├── common/            # Shared code
│   ├── core/         # Core utilities
│   ├── resources/    # App resources
│   └── widgets/      # Shared widgets
├── features/         # Application features
└── routes/           # Navigation setup
```

## Feature Generation 🔨

CleanForge provides smart code generation capabilities:

1. **Automatic Routing Integration**
   - Route definitions
   - GetX bindings
   - Named route constants
   - Parameter handling

2. **Clean Architecture Compliance**
   - Data layer
   - Domain layer
   - Presentation layer

3. **Built-in Best Practices**
   - Error handling
   - Dependency injection
   - State management

## Customization Options ⚙️

CleanForge Bricks can be customized through:

1. **Pre-generation Hooks**
   - Modify templates
   - Add custom validations
   - Include additional dependencies

2. **Post-generation Hooks**
   - Custom code formatting
   - Additional file generation
   - Project-specific modifications

## Need Help? 🤝

- Check out our [Feature Generation Guide](Feature-Generation)
- Visit our [Troubleshooting Guide](Troubleshooting)
- Join our community discussions

## Contributing

We welcome contributions! Please check our [Contributing Guidelines](Contributing) for more information.

## License

CleanForge Bricks is released under the MIT License. See the [LICENSE](LICENSE) file for more details.