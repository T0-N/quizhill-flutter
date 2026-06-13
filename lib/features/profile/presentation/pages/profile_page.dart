import 'package:flutter/material.dart';
import 'package:quizhill_flutter/core/widgets/header.dart';
import 'package:quizhill_flutter/features/profile/presentation/widgets/auth_panel.dart';
import 'package:quizhill_flutter/features/profile/presentation/widgets/options.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Profil'),
      body: Column(children: [AuthPanel(), Options()]),
    );
  }
}
