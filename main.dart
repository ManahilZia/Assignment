void main() {
  String Students = "Ahmed";
  List<String> students = [
    "Ahmed", //0
    "syeda", //1
    "shafiq", //2
    "samaia", //3
    "izhann", //4
    "abul", //5
    "ahsan", //6
  ];
  print(students);
  print(students.length);
  print(students[5]);
  students.replaceRange(1, 2, ["malik", "sheeza", "aliyan", "shiza"]);
  students.sort();
  print(students);
  // var studentsReversed = List.of(students.reversed);
  // print(students);
  //if we want our sort list to reverse than use reverse method
  // print(students.isEmpty);
  //add name of other students or product in list using add method
  // students.add('zayan');
  // print(students);
  // students.insert(3, ["saima"] as String);
  // print(students);
  // students.addAll(["naaz", "salma", "moosa"]);
  // print(students);
  //  students.insertAll(2, ["manahil", "saad"]);
  // print(students);

  //now a removing method where you can remove unnesscary student names
  // students.remove("saad");
  // print(students);
  // students.removeAt(1);
  // print(students);
  //   students.removeLast();
  print(students);
  //map merge method (a lengthy method)
  Map student1 = {"name": "abdullah", "class": "4B", "age": "7", "grade": "B"};
  Map student2 = {
    "name": "ilma",
    "fatherName": "fahad",
    "class": "4B",
    "grade": "A",
  };
  Map student3 = {
    "name": "sofia",
    "fatherName": "ahmed",
    "class": "6B",
    "age": "7",
    "grade": "A",
  };
  //ye same keys merge nhi karega
  //u have to use diff name for each key
  Map student = {...student1, ...student2, ...student3};
  print(student);
  print(student["name"]);
  print(student.keys);
  print(student.values);
  print(student.length);
  print(student.isEmpty);
  students.remove("age");
  student.putIfAbsent("fatherNmae", () => 'ashfaq');
  print(students);
  student.putIfAbsent("bloodgroup", () => 'B');
}
