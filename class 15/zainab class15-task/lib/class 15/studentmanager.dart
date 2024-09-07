import 'package:shared_preferences/shared_preferences.dart';
import 'students.dart';

class StudentManager {
  static Future<SharedPreferences> get _prefs async =>
      await SharedPreferences.getInstance();

  static Future<List<Student>> getAllStudents() async {
    final prefs = await _prefs;
    List<Student> studentList = [];
    var keys = prefs.getKeys();
    for (var key in keys) {
      var studentRecord = prefs.getString(key) ?? "";
      Student student = Student.fromJsonString(studentRecord);
      studentList.add(student);
    }
    return studentList;
  }

  static Future<void> addStudent(Student student) async {
    final prefs = await _prefs;
    prefs.setString(student.id, student.toJsonString());
  }

  static Future<void> removeStudent(String id) async {
    final prefs = await _prefs;
    prefs.remove(id);
  }
}
