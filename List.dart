void main() {
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

  List<String> days = [
    "sunday",
    "monday",
    "tuesday",
    "wednesday",
    "thrusday",
    "friday",
    "saturday",
  ];
  print(days[0]);
  //q4 fecting the smallest and largest numbers from the list
  List<int> numbers = [10, 12, 13, 20, 100, 56, 48];
  numbers.sort();
  print(numbers);
  var numbersReversed = List.of(numbers.reversed);
  numbers.removeRange(1, 6);
  print(numbers);
  //feching the maximum value
  List<int> integers = [2, 4, 6, 8, 12, 34, 150, 400, 60, 380, 250];

  integers.sort();
  print(integers);
  integers.removeRange(0, 10);
  print(integers);
  //a string list and a new list which is the old list reversed version
  List<String> products = ["banana", "apple", "hotdog", "perfumes", "shoes"];
  print(products);
  var productsReversed = List.of(products.reversed);
  print(products);
  //q8
  List<int> number = [-20, -4, 40, 24, 98, 2000, -65];
  number.removeWhere((e) => e < 0);
  print(number);
  //q9
  List<String> userEligibility = [
    "Alice",
    "john",
    "sarah",
    'tom',
    'mike',
    'eligible',
  ];
  print(userEligibility);
  userEligibility.removeWhere((e) => e == "eligible");
  print(userEligibility);
  Map user = {"name": "isadmin"};
  print(user.keys);
}
