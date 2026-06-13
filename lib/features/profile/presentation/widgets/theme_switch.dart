import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quizhill_flutter/core/theme/theme_mode_notifier.dart';

class ThemeSwitch extends ConsumerWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeNotifierProvider);

    return Switch(
      value: themeMode == ThemeMode.dark,
      onChanged: (bool v) {
        ref.read(themeModeNotifierProvider.notifier).toggleTheme(v);
      },
    );
  }
}
