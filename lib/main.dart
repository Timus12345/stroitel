import 'package:flutter/material.dart';
import 'package:stroitel/forgot_screen/forgot_screen.dart';
import 'package:stroitel/login_screen/login_screen.dart';
import 'package:stroitel/newpass_screen/newpass_screen.dart';
import 'package:stroitel/notify_screen/notify_screen.dart';
import 'package:stroitel/password_screen/password_screen.dart';
import 'package:stroitel/profile_screen/profile_screen.dart';
import 'package:stroitel/reg_screen/reg_screen.dart';
import 'package:stroitel/regsms_screen/regsms_screen.dart';
import 'package:stroitel/settings_screen/settings_screen.dart';
import 'package:stroitel/sms_screen/sms_screen.dart';

void main() async {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const login_screen(),
      '/pass': (context) => const password_screen(),
      '/forgot': (context) => const forgot_screen(),
      '/sms': (context) => const sms_screen(),
      '/newpass': (context) => const newpass_screen(),
      '/reg': (context) => const reg_screen(),
      '/regsms': (context) => const regsms_screen(),
      '/profile': (context) => const profile_screen(),
      '/notify': (context) => const notify_screen(),
      '/settings': (context) => const settings_screen()
    },
  ));
}