import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Aquí inicializaríamos Isar:
  // final dir = await getApplicationDocumentsDirectory();
  // final isar = await Isar.open([PlantaSchema, ...], directory: dir.path);

  runApp(
    const ProviderScope(
      child: AgroAyniApp(),
    ),
  );
}
