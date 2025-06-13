import 'dart:io';

void main() {
  String pass = "ccccwwww";
  List<dynamic> usernames = [
    "amber78",
    "nazish45",
    "abby98",
    "zainab84",
    "saif66",
    "zarnish90",
    "amna72",
    "ali55",
  ];
  print(usernames.length);
  print(usernames);
  for (int i = 0; i < usernames.length; i++) {
    print("${usernames[i]}");
  }
  bool isLogin = false;

  print("enter your username");
  String? username = stdin.readLineSync();
  print("enter your password");
  String? password = stdin.readLineSync();
  if (usernames.contains(username) && password == pass) {
    print("sucess");
    bool isLogin = true;
  } else
    print("try again wrong username or password");
  int noOfAtempts = 4;
  int atempts =
      0; //having meaning ful varaible to make it understand even better
  while (atempts < noOfAtempts) {
    print("$atempts imited no.of try");
    atempts++;
  }
  if (atempts > noOfAtempts) {
    print("your Login system is blocked for 10mins");
  }
  ;
  //staff memebers entry with whole data

  List<Map<String, dynamic>> staff = [
    {'name': "amber", 'speciality': "facial expert", 'salary': "30,000"},
    {'name': "nazish", 'speciality': "all rounder helper", 'salary': "20,000"},
    {
      'name': "abby",
      'speciality': ["nail tech expert", "hair stylist"],
      'salary': "32,000",
    },
    {'name': "zainab", 'speciality': "hair expert", 'salary': "30,000"},
    {
      'name': "saif",
      'speciality': ["makeup helper", "nail tech"],
      'salary': "24,000",
    },
    {'name': "zarnish", 'speciality': "makeup expert", 'salary': "30,000"},
    {
      'name': "Amna",
      'speciality': ["meny pedy expert", "makeup helper"],
      'salary': "24,000",
    },
    {'name': "Ali", 'speciality': "all rounder", 'salary': "20,000"},
  ];
  for (var data in staff) {
    Staff staff = Staff(
      name: data["name"],
      speciality: data["speciality"],
      salary: data["salary"],
    );

    staff.styleMembers();
  }
}

class Staff {
  String name;
  dynamic
  speciality; //we have used this beacuse our speciality key data contains strings and list
  int salary;
  //constructor
  Staff({required this.name, required this.speciality, required this.salary});

  //method
  void styleMembers() {
    print("Name:$name");
    print("Speciality:$speciality");
    print("Salary:$salary");
  }
}
