import 'package:flutter/material.dart';
import 'package:flutter_redux_sample/features/router/app_router.dart';
import 'package:flutter_redux_sample/features/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Theme
final lightThemeProvider = Provider<AppTheme>((_) => AppTheme.light());
final darkThemeProvider = Provider<AppTheme>((_) => AppTheme.dark());

void main() {
  runApp(const ProviderScope(child: AppRouter()));
}
