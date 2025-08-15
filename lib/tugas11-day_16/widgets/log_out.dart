import 'package:flutter/material.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/tugas11-day_16/preference/shared_preference.dart';
import 'package:ppkd_b_3/tugas6flutter/tugas6.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        PreferenceHandler.removeLogin();
        context.pushReplacementNamed(Tugas6.id);
      },
      child: Text("Keluar"),
    );
  }
}
