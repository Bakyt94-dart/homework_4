import 'student.dart';
import 'teacher.dart';
import 'subjects.dart';

void main() {
  // 👨‍🏫 Teacher
  Teacher teacher = Teacher('John Brown', 40, true, 10);

  print('--- Teacher Info ---');
  teacher.introduce();
  print('Calculated salary: ${teacher.calculateSalary()}');

  // 🎓 Students
  Student student1 = Student(
    'Adam White',
    17,
    false,
    {
      Subject.math: 90,
      Subject.physics: 85,
      Subject.english: 92,
      Subject.history: 88,
    },
  );

  Student student2 = Student(
    'Emma Green',
    18,
    false,
    {
      Subject.math: 78,
      Subject.physics: 82,
      Subject.english: 95,
      Subject.history: 80,
    },
  );

  print('\n--- Student 1 ---');
  student1.introduce();
  student1.showMarks();
  print('Average mark: ${student1.calculateAverage()}');

  print('\n--- Student 2 ---');
  student2.introduce();
  student2.showMarks();
  print('Average mark: ${student2.calculateAverage()}');
}