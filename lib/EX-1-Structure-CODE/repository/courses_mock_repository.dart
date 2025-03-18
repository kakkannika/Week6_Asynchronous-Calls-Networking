
import 'package:week6_exercise/EX-1-Structure-CODE/models/course.dart';
import 'courses_repository.dart';

class CoursesMockRepository implements CoursesRepository {
  @override
  void addCourse(Course course, CourseScore score) {
    course.addScore(score);
    _courses.add(course);
  }
  final List<Course> _courses = [
    Course(name: 'HTML'),
    Course(name: 'JAVA'),
  ];

  @override
  List<Course> getCourses() {
    return _courses;
  }

  
}