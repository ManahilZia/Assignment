// void main() {
//   age();
//   print(names());
//   print(
//     multiply(),
//   ); //without this print statment i cant geta view of my value on console
// }

// //first without parameter basic level
// //void returns u nothing
// void age() {
//   print(50);
// }

// //to perfrom any calculation with speific dataype
// int multiply() {
//   int a = 4; //here is my body part
//   int b = 8;
//   int product = a * b;
//   return product; //i asked for a return value
// }

// //lets try with string
// String names() {
//   String n1 = "sohail";
//   String n2 = "nazish";
//   return "$n1 , $n2";
// }
// void main() {
//   //data types
//   //String with functions
//   print(stdName());
//   print(addition());
//   print(percentage());
// }

// String stdName() {
//   String name = "Nina";
//   String name2 = "Ian";
//   return "$name , $name2";
// }

// //int datatype with functions
// int addition() {
//   int num1 = 93456;
//   int num2 = 43567726;
//   int total = num1 + num2;
//   return num1 + num2;
//   print(total);
// }

// //double data type with functions
// double percentage() {
//   int totalmarks = 500;
//   int obtained = 324;
//   double percent = obtained / totalmarks * 100;
//   print(percent);
//   if (percent >= 90) {
//     print("A*");
//   } else if (percent >= 80) {
//     print("A");
//   } else if (percent >= 70) {
//     print("B");
//   } else
//     print("c");
//   return obtained / totalmarks * 100;
// }

void main() {
  //list of dart basic
  List<String> people = ["ash", "nina", "stefen", "maya"];
  print(people.elementAt(2));
  people[0] = "lucy";
  print(people);
  people.replaceRange(1, 3, ['esha', 'elena', 'vicki']);
  print(people);
  if (people.isEmpty) {
    print('put some item');
  } else
    print("false");
  print(people);
  print(people.length);
  //calculating length of a specific index
  String count = people.elementAt(2);
  print(count.length);
  //map practice
  Map<String, dynamic> product1 = {
    ' name': 'perfume',
    '  mac.date': 2 / 7 / 16,
    ' exp.date': 2 / 7 / 26,
    ' cost': 7000,
  };
  Map<String, dynamic> product2 = {
    ' name2': 'perfume',
    '  mac.date2': 1 / 8 / 20,
    ' exp.date2': 1 / 8 / 22,
    ' cost2': 4000,
  };
  Map<String, dynamic> product3 = {
    ' name3': 'perfume',
    '  mac.date3': 1 / 7 / 10,
    ' exp.date3': 1 / 7 / 20,
  };
  Map<String, dynamic> mergeproduct = {...product1, ...product2, ...product3};
  print(mergeproduct); //merge method
  product3.putIfAbsent('cost3', () => "15000"); //add method
  print(product3);
  print(product1.keys);
  print(product3.length);
  print(product1.values);
  product2["cost2"] = 8000; //replace method
  print(product2);
}
