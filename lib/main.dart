import 'package:curso01/app/core/config/env/env.dart';
import 'package:curso01/app/curso01.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Env.i.load();
  runApp(Curso01());
}
