
import 'package:week6_exercise/EX-1-Structure-CODE/models/course.dart';

abstract class CoursesRepository {
 List<Course> getCourses();
 void addCourse(Course course , CourseScore score);
}