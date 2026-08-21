import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';

class ActionPlanPage extends StatelessWidget {
  const ActionPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.eco, color: AppColors.primary),
            const SizedBox(width: 8),
            Text(
              'AgroAyni',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cloud_off, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Plan de Acción',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: 24,
                    color: AppColors.neutral,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Sigue estos pasos para ayudar a tu planta.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.neutral,
                  ),
            ),
            const SizedBox(height: 24),
            
            // Tarjeta Qué hacer ahora
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.02),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.assignment, color: AppColors.primary),
                      const SizedBox(width: 8),
                      Text(
                        'Qué hacer ahora',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.neutral,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildActionItem(
                    icon: Icons.check_circle,
                    iconColor: AppColors.primary,
                    text: 'Mueve la planta a la sombra.',
                  ),
                  const SizedBox(height: 12),
                  _buildActionItem(
                    icon: Icons.check_circle,
                    iconColor: AppColors.primary,
                    text: 'Ponle un vaso de agua poco a poco.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // Tarjeta Qué observar después
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.02),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.visibility, color: Color(0xFF8D6E63)), // Marrón/Naranja oscuro
                      const SizedBox(width: 8),
                      Text(
                        'Qué observar después',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.neutral,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildActionItem(
                    icon: Icons.access_time_filled,
                    iconColor: const Color(0xFF8D6E63),
                    text: 'Revisa en 2 días si las hojas se levantan y ya no están tan caídas.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondary.withValues(alpha: 0.5), // Beige claro
                foregroundColor: AppColors.neutral,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Volver al inicio',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionItem({required IconData icon, required Color iconColor, required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.neutral,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
