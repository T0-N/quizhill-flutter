import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quizhill_flutter/core/widgets/scaffold_navbar.dart';
import 'package:quizhill_flutter/features/home/presentation/pages/home_page.dart';
import 'package:quizhill_flutter/features/profile/presentation/pages/profile_page.dart';
import 'package:quizhill_flutter/features/quiz/presentation/pages/quiz.dart';
import 'package:quizhill_flutter/features/search/presentation/pages/search_page.dart';
import 'package:quizhill_flutter/features/search/presentation/pages/search_results.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldNavbar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: shellNavigatorKey,
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/search',
                builder: (context, state) => const SearchPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/quizes',
        builder: (context, state) => const SearchResults(),
      ),
      GoRoute(
        path: '/quizes/:id',
        builder: (context, state) {
          final quizId = state.pathParameters['id'];
          return Quiz(quizId: quizId!);
        },
      ),
    ],
  );
});
