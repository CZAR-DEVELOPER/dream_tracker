import 'package:dream_tracker/presentation/views/presentation_views.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class DreamTrackerApp extends HookConsumerWidget {
  const DreamTrackerApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, fontFamily: 'DMSans'),
      home: HomeView(),
    );
  }
}
