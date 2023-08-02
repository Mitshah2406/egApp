import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:training_app/utils/api_services.dart';
import '../models/lessons.dart';
import '../models/program.dart';

final apiProvider = Provider((ref) => ApiServices());
final programsProvider = FutureProvider<List<Program>>((ref) async {
  return ref.watch(apiProvider).getPrograms();
});
final lessonsProvider = FutureProvider<List<Lesson>>((ref) async {
  return ref.watch(apiProvider).getLessons();
});
