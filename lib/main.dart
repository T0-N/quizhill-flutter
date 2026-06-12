import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:quizhill_flutter/core/router/app_router.dart';
import 'package:quizhill_flutter/core/theme/quizhill_colors.dart';

void main() {
  runApp(const ProviderScope(child: QuizhillApp()));
}

class QuizhillApp extends HookConsumerWidget {
  const QuizhillApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: "Quizhill",
      routerConfig: router,
      theme: QuizhillTheme.lightTheme,
      darkTheme: QuizhillTheme.darkTheme,
      themeMode: ThemeMode.system, //TODO
    );
  }
}
