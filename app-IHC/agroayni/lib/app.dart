import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/diagnosis/presentation/pages/confirm_image_page.dart';
import 'features/diagnosis/presentation/pages/diagnosis_result_page.dart';
import 'features/diagnosis/presentation/pages/action_plan_page.dart';

class AgroAyniApp extends StatelessWidget {
  const AgroAyniApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/confirm-image',
          builder: (context, state) {
            final imagePath = state.extra as String?;
            return ConfirmImagePage(imagePath: imagePath);
          },
        ),
        GoRoute(
          path: '/diagnosis-result',
          builder: (context, state) {
            final imagePath = state.extra as String?;
            return DiagnosisResultPage(imagePath: imagePath);
          },
        ),
        GoRoute(
          path: '/action-plan',
          builder: (context, state) => const ActionPlanPage(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'AgroAyni',
      theme: AppTheme.lightTheme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
