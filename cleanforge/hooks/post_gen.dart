import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Adding dependencies with flutter pub add');

  final packages = [
    'get:4.7.2',
    'dio:5.9.0',
    'logger:2.6.1',
    'dartz:0.10.1',
    'toastification:3.0.3',
    'intl:0.19.0',
    'url_launcher:6.2.4',
    'flutter_dotenv:6.0.0',
    'flutter_screenutil:5.9.3',
    'google_fonts:6.3.2',
    'connectivity_plus:7.0.0',
    'get_storage:2.1.1',
  ];

  for (final package in packages) {
    await Process.run('flutter', ['pub', 'add', package], workingDirectory: '.');
  }

  progress.complete('Dependencies added successfully');
}