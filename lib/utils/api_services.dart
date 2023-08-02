import 'dart:convert';
import 'package:training_app/constants/app_constants.dart';

import '../models/lessons.dart';
import '../models/program.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<Program>> getPrograms() async {
    final response = await http.get(Uri.parse(AppConstants.programsApi));

    if (response.statusCode > 300) {
      throw Exception("Error in fetching Programs");
    }
    List data = jsonDecode(response.body)['items'];

    return data.map((e) => Program.fromJson(e)).toList();
  }

  Future<List<Lesson>> getLessons() async {
    final response = await http.get(Uri.parse(AppConstants.lessonsApi));

    if (response.statusCode > 300) {
      throw Exception("Error in fetching Programs");
    }
    List data = jsonDecode(response.body)['items'];

    return data.map((e) => Lesson.fromJson(e)).toList();
  }
}
