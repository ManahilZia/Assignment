import 'dart:io';

void main() {
  //   //   //bookings for customer
  List<Map<String, dynamic>> bookings = [
    {
      "customer name": "alsihab",
      "service": "nail art",
      "worker": "alex",
      "date": DateTime(18, 6, 25),
      "time": "7:00",
    },
    {
      "customer name": "shifa",
      "service": "gold facial",
      "worker": "amber",
      "date": DateTime(12, 6, 25),
      "time": "4:00",
    },
    {
      "customer name": "aima",
      "service": "nail art",
      "worker": "alex",
      "date": DateTime(7, 6, 25),
      "time": "2:00",
    },
    {
      "customer name": "faris",
      "service": "hair cut",
      "worker": "ali",
      "date": DateTime(1, 7, 25),
      "time": "4:00",
    },
    {
      "customer name": "saima",
      "service": "nail art",
      "worker": "alex",
      "date": DateTime(15, 6, 25),
      "time": "6:00",
    },
    {
      "customer name": "shazeb",
      "service": "facial",
      "worker": "ali",
      "date": DateTime(2, 7, 25),
      "time": "2:00",
    },
    {
      "customer name": "narmeen",
      "service": "facial",
      "worker": "amber",
      "date": DateTime(2, 7, 25),
      "time": "2:00",
    },
    {
      "customer name": "zaynab",
      "service": "makeup",
      "worker": "zarnish",
      "date": DateTime(12, 7, 25),
      "time": "4:00",
    },
    {
      "customer name": "ilma",
      "service": "hair cut",
      "worker": "zainab",
      "date": DateTime(8, 7, 25),
      "time": "6:00",
    },
    {
      "customer name": "iqra",
      "service": "makeup",
      "worker": "zainab",
      "date": DateTime(13, 6, 25),
      "time": "4:00",
    },
  ];
  for (var data in bookings) {
    Appointments appointments = Appointments(
      customerName: data[" customerName"],
      service: data["service"],
      worker: data["worker"],
      date: data["date"],
      time: data["time"],
    );
    appointments.showBookings();

    appointments.searchBooking(bookings);
    bookings.sort((a, j) => a['date'].compareTo(j['date']));
    print(bookings);
    void viewBookings(List<Map<String, dynamic>> bookings) {
      // your code
    }

    void addBooking(List<Map<String, dynamic>> bookings) {
      // your code
    }

    void deleteBooking(List<Map<String, dynamic>> bookings) {
      // your code
    }

    void generateBill(List<Map<String, dynamic>> bookings) {
      // your code
    }

    void main() {
      List<Map<String, dynamic>> bookings = [];

      bool isRunning = true;

      while (isRunning) {
        print("\n==== Salon Management System ====");
        print("1. View Bookings");
        print("2. Add Booking");
        print("3. Delete Booking");
        print("4. Generate Bill");
        print("5. Exit");
        stdout.write("Choose an option (1-5): ");
        String? choice = stdin.readLineSync();

        switch (choice) {
          case '1':
            viewBookings(bookings);
            break;
          case '2':
            addBooking(bookings);
            break;
          case '3':
            deleteBooking(bookings);
            break;
          case '4':
            generateBill(bookings);
            break;
          case '5':
            isRunning = false;
            print("Exiting program. Goodbye!");
            break;
          default:
            print("Invalid option. Please try again.");
        }
      }
    }
  }

  print(bookings);
  print("Enter your name");
  String? name = stdin.readLineSync();
  print("please enter your service");
  String? service = stdin.readLineSync();
  print("enter the name of staff member");
  String? worker = stdin.readLineSync();
  bool isDataAbsent = true;
  print("the space need to be filled");

  Map<String, int> servicesCost = {
    "nail art": 5000,
    "gold facial": 8000,

    "hair cut": 4000,
    "makeup": 15000,
    "facial": 7000,
  };
  print("enter your customer name");
  String? inputName = stdin.readLineSync();
  Map<String, dynamic>?
  foundBooking; //null safety is important becz maybe the data in found booking could be nullable so to intialize the foundbooking is very important using null safety

  for (var data in bookings) {
    if (data["customer name"] == inputName) {
      print("booking found");
      foundBooking = data;
    } else
      print("enter the correct name ");
    //     //generating bill
    if (foundBooking != null) {
      String service = foundBooking["service "];
      int? cost = servicesCost[service];
      if (cost != null) {
        print("----------Bill Recpit-----------");

        print("Customer Name: ${foundBooking['customer name']}");
        print("service:  ${foundBooking['service']}");
        print("worker: ${foundBooking['worker']}");
        print("date:  ${foundBooking['date']}");
        print("time: ${foundBooking['time']}");
        print("Total: Rs. $cost");
        print("--------------------------");
      } else {
        print("Service price not found for: $service");
      }
    } else {
      print("Booking not found for customer name.");
    }
  }
}

class Appointments {
  String? customerName;
  String? worker;
  String? service;
  String? date;
  String? time;
  //   //constructor
  Appointments({
    required this.customerName,
    required this.service,
    required this.worker,
    required this.date,
    required this.time,
  });
  //methods
  void showBookings() {
    print("CustomerName:$customerName");
    print("Service:$service");
    print("Worker:$worker");
    print("Date:$date");
    print("Time:$time");
  }

  //   //now is time to for booking search
  //   //we need a user input
  //   //we need a loop
  //   //we need an if else statment
  //   //we will comapre our input from the list of bookings
  void searchBooking(List<Map<String, dynamic>> bookings) {
    //     //to run a loop ina method for a specific list or map always defien your list as a parameter
    print("Enter your customer name on search ");
    String? input = stdin.readLineSync();
    for (var data in bookings) {
      //i have run another loop for search and compare it with my list data
      if (data["bookings"] == input) {
        print("booking found $bookings");
      } else
        print("please try adding a correct name");
      print("enter your  customerName");
      String? inputTo = stdin.readLineSync();
      if (data["bookings"] == inputTo) {
        print("choose field to update");

        String? Field = stdin.readLineSync();
        print("enter new value");
        String? Newvalue = stdin.readLineSync();

        if (Field != null && Newvalue != null && data.containsKey(Field)) {
          data[Field] = Newvalue;
          print("updated succesfully");
        }
      }
    } //this time i keep my function of search for bookings out side the class of appointments because of the key elemnts likecustomer name service is not appreciatable to define again or

    //     //or my code will not acess only one key
    //editing my booking list
  }

  void showDeleting(List<Map<String, dynamic>> bookings) {
    print("enter your customerName");
    String? inputToDelete = stdin.readLineSync();
    print("enter a field");
    String? Field = stdin.readLineSync();
    bool deleted = false;
    bookings.removeWhere((data) => data["customer name"] == inputToDelete);
    if (deleted) {
      print("Booking(s) deleted successfully.");
    } else
      print("No booking found for the given customer name.");
  }
}

void viewBookings(List<Map<String, dynamic>> bookings) {
  if (bookings.isEmpty) {
    print("No bookings found.");
    return;
  }

  print("\n--- All Bookings ---");
  for (var b in bookings) {
    print(
      "Customer: ${b["customer name"]}, Service: ${b["service"]}, Staff: ${b["worker"]}, Date: ${b["date"]}, Time: ${b["time"]}",
    );
  }
  void addBooking(List<Map<String, dynamic>> bookings) {
    print("Enter customer name:");
    String? name = stdin.readLineSync();
    print("Enter service:");
    String? service = stdin.readLineSync();
    print("Enter staff member:");
    String? worker = stdin.readLineSync();
    print("Enter date (dd - mm - yy):");
    String? date = stdin.readLineSync();
    print("Enter time:");
    String? time = stdin.readLineSync();

    bookings.add({
      "customer name": name,
      "service": service,
      "worker": worker,
      "date": date,
      "time": time,
    });

    print("Booking added successfully.");
  }

  void deleteBooking(List<Map<String, dynamic>> bookings) {
    print("Enter the customer name to delete booking:");
    String? name = stdin.readLineSync();

    bookings.removeWhere((b) => b["customer name"] == name);
    print("Booking deleted if it existed.");
  }

  void generateBill(List<Map<String, dynamic>> bookings) {
    Map<String, int> servicePrices = {
      "nail art": 5000,
      "gold facial": 8000,
      "hair cut": 4000,
      "makeup": 15000,
      "facial": 7000,
    };

    print("Enter customer name to generate bill:");
    String? name = stdin.readLineSync();

    var booking = bookings.firstWhere(
      (b) => b["customer name"] == name,
      orElse: () => {},
    );

    if (booking.isEmpty) {
      print("Booking not found.");
      return;
    }

    String service = booking["service"];
    int? cost = servicePrices[service];

    print("\n------ Bill Receipt ------");
    print("Customer: ${booking["customer name"]}");
    print("Service: $service");
    print("Staff: ${booking["worker"]}");
    print("Date: ${booking["date"]}");
    print("Time: ${booking["time"]}");
    print("Total: Rs. ${cost ?? 'Unknown'}");
    print("--------------------------");
  }
}
