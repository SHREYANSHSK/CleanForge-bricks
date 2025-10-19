# CleanForge Bricks 🏗️

A collection of Mason bricks for generating Flutter applications using Clean Architecture with GetX state management.

[![Powered by Mason](https://img.shields.io/badge/Powered%20by-Mason-blue.svg)](https://github.com/felangel/mason)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview 📝

CleanForge Bricks provides a robust toolkit for scaffolding Flutter applications with Clean Architecture principles. It includes:

- 🏢 **Project Generation**: Complete project structure with Clean Architecture
- ⚡ **Feature Generation**: Rapid feature development with full layer compliance
- 🎯 **GetX Integration**: Built-in GetX state management
- 🔧 **Customizable**: Extensive hooks for customization

## Installation 💻

```bash
# Install Mason CLI globally
dart pub global activate mason_cli

# Add bricks to your project
mason add cleanforge
mason add cleanforge_feature
```

## Usage 🚀

### Creating a New Project

```bash
mason make cleanforge --project_name my_awesome_app
```

### Generating a Feature

```bash
mason make cleanforge_feature --feat authentication
```

## Project Structure 📁

```
lib/
├── app/                # App configuration
├── common/            # Shared code
│   ├── core/         # Core utilities
│   ├── resources/    # App resources
│   └── widgets/      # Shared widgets
├── features/         # Feature modules
└── routes/           # Navigation
```

## Features ✨

- 🏛️ **Clean Architecture** compliance
- 📦 **Feature-first** organization
- 🔄 **GetX** state management
- 🎨 **Presentation Layer** scaffolding
- 🔧 **Domain Layer** setup
- 💾 **Data Layer** generation
- 🧪 **Test Templates**
- 📱 **Screen Templates**

## Documentation 📚

- [Feature Guide](docs/FEATURE_GUIDE.md)
- [Hooks Guide](docs/HOOKS_GUIDE.md)
- [Architecture Guide](docs/ARCHITECTURE_GUIDE.md)
- [Roadmap](docs/ROADMAP.md)
- [Medium Doc](https://medium.com/@khandelwal.shreyansh.sk/getting-started-with-cleanforge-bricks-flutter-clean-architecture-made-easy-30aa57e27abb)

## Contributing 🤝

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

Please read our [Contributing Guide](.github/CONTRIBUTING.md) for details.

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments 🙏

- [Mason](https://github.com/felangel/mason)
- [GetX](https://github.com/jonataslaw/getx)
- [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

## Support ❤️

If you find this project helpful, please consider giving it a ⭐️!

For issues and feature requests, please create a new [issue](https://github.com/yourusername/cleanforge_bricks/issues).