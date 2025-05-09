void main() {
  // int number = 40000000274567;
  // int count = 0; //intialize

  // // Count digits using while loop
  // while (number > 0) {
  //   number ~/= 13; // Remove the last digit by integer division

  //   print('The number of digits is: $count');

  // count++; // Increment count for each digit

  //q3 writing a table using while loop
  // int num = 7;
  // int i = 1;
  // while (i <= 10) {
  //   print("$num * $i= ${num * i}");
  //   i++;
  // }
  // //trying same question with for loop
  // int num2 = 12; //this always remain as fix position just use it in the end

  // for (int ab = 0; ab <= 12; ab++) {
  //   print("$num2 * $ab = ${num2 * ab}");
  // }
  // //q4 use a do while loop to print 1 to 50 odd numbers
  // int ac = 1;
  // do {
  //   if (ac % 2 != 0) {
  //     //use curly brackests after if statment
  //     print("$ac"); //print only one time
  //   }
  //   ac++;
  // } while (ac <= 50);
  // //q5 checking number is postive or negative
  // int num4 = -67856353;
  // if (num4 < 0) {
  //   print("$num4 is negative");
  // } else
  //   print("the $num4 positive");
  // //q6 fractional numbers calculate
  // double num5 = 7;
  // double xy = 2;
  // while (xy < 7.5) {
  //   print("$num5 ~/ $xy ${num5 ~/ xy}");
  //   xy++;
  // }
  // //q7first 10 prime numbers with for loop

  // for (int xz = 0; xz < 21; xz++) {
  //   if (xz % 2 != 0) {
  //     print("$xz are the prime number");
  //   }
  // }
  // //q8first ten natural numbers in reverse order
  // int zz = 10; //use the reverse value from where you want to start
  // while (zz >= 1) {
  //   //check the sign its crucial
  //   print(" natural number $zz");
  //   zz--; // to keep things in reverse order always put the post decrement
  // }
  // //q9 sqaure numbers from 1 to 5
  // int yz = 1;

  // do {
  //   print("$yz * $yz ${yz * yz}");
  //   yz++;
  // } while (yz < 6);
  // //Q10 dart program to write even numbers from 1 to 20
  // int aa = 1;
  // do {
  //   if (aa % 2 == 0) {
  //     print(" the even numbers $aa");
  //   }
  //   aa++;
  // } while (aa <= 20);
  //Q11 fabbanoic number happens with bbble sorting

  // int x = 0;
  // int y = 1;
  // int number = 21;
  // //intialization
  // for (int nn = 0; nn <= 7; nn++) {
  //   int work = x + y;
  //   x = y;
  //   y = work; //buble sorting game
  //   print(y);
  // }
  // //largestt digit in the number
  // int number1 = 45679382;
  // int largestdigit = 0;

  // do {
  //   int digit = number1 % 10; //it will give us the last digit of number
  //   if (digit > largestdigit) {
  //     //if 9 is greater than zero
  //     largestdigit = digit; //update the value of largest digit
  // print("the largest digit $largestdigit");

  //     number1 =
  //         number1 ~/ 10; //the removing step of large number or to seperate it
  //   }
  // } while (number1 > 0);
  //Q12 plaindrom checking
  //  String word = "book";
  // String reversedword = word.split('') .reversed .join(''); //(how to reverse a string method)
  //  if (reversedword == word) {
  //   print("$word  is a plaindrom");
  // } else print("$word is not a plaindrom");
  //Q13list of a number and print the ones greater than 5
  // List<int> num2 = [78, 56, 3, 2, 0, 5, 98, 107];
  //  for (int cc = 0; cc <= 7; ++cc) {
  // if (num2[cc] >= 5) {
  //   print(num2[cc]);
  //    }
  //  }
  // Q14 list average using a do while loop
  // List<int> marks = [48, 34, 44, 29, 25, 18];
  //int sum = 0;
  //int index = 0;
  //do {
  //int sum = marks[index];
  //double average = sum / marks.length;
  //print(average);
  //index++;
  // } while (index < marks.length);
  //  Q15 counting vowels in a string

  String word2 = "pookie";
  Map<String, int> letterCount = {};

  String vowels = "aeiou";

  for (int i = 0; i < word2.length; i++) {
    String letter = word2[i].toLowerCase();

    // Count the letter
    letterCount[letter] = (letterCount[letter] ?? 0) + 1;

    // Check if it's a vowel and print it
    if (vowels.contains(letter)) {
      print("Vowel found: $letter");
    }
  }

  print("Letter counts: $letterCount");
}
