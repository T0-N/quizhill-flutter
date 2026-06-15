import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:quizhill_flutter/core/router/app_router.dart';
import 'package:quizhill_flutter/core/theme/quizhill_colors.dart';
import 'package:quizhill_flutter/core/theme/theme_mode_notifier.dart';

import 'package:wakelock_plus/wakelock_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kDebugMode) {
    await WakelockPlus.enable();
  }

  runApp(const ProviderScope(child: QuizhillApp()));
}

class QuizhillApp extends HookConsumerWidget {
  const QuizhillApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeModeNotifierProvider);

    return MaterialApp.router(
      title: "Quizhill",
      routerConfig: router,
      theme: QuizhillTheme.lightTheme,
      darkTheme: QuizhillTheme.darkTheme,
      themeMode: themeMode,
    );
  }
}
