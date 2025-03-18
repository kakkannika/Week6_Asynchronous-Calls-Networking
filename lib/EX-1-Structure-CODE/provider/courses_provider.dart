import 'package:flutter/material.dart';
import '../models/course.dart';
import '../repository/courses_repository.dart';

class CoursesProvider extends  ChangeNotifier {
  final CoursesRepository _repository;

  CoursesProvider(this._repository);

  List<Course> get courses => _repository.getCourses();

  Course getCourseFor(String courseId) {
    return courses.firstWhere((course) => course.name == courseId);
  }

  void addScore(String courseId, CourseScore score) {
    final course = getCourseFor(courseId);
    _repository.addCourse(course, score);
    notifyListeners();
  }
}