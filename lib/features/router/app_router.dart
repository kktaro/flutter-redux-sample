import 'package:flutter/material.dart';
import 'package:flutter_redux_sample/features/beer_list_page/beer_list_page.dart';
import 'package:flutter_redux_sample/features/search_page/SearchPage.dart';
import 'package:flutter_redux_sample/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends ConsumerWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: ref.read(lightThemeProvider).theme,
      darkTheme: ref.read(darkThemeProvider).theme,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,);
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const BeerListPage(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchPage(),
    ),
  ],
);
