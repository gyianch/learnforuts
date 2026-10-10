import "dart:io";

void main() {
  void login() {
    print("=============================");
    print("Welcome to Academ1c!");
    print("Please input your username and password to login:");
  }

  void menu() {
    print("=============================");
    print("Welcome to the main menu!");
    print("Choose one of the following menu options:");
    print("1.Register Your Course");
    print("2.View Your Registered Course");
    print("3.Delete Your Registered Course");
    print("4.Exit");
  }

  var run = true;
  var login1 = false;
  List course = [];
  while (run == true) {
    var user = "gian";
    var pw = 1234;
    if (login1 == false) {
      login();
      stdout.write("Enter ur username:");
      var input = stdin.readLineSync();
      stdout.write("Enter ur Password:");
      var input1 = stdin.readLineSync();
      if (input == user && input1 == pw.toString()) {
        login1 = true;
      } else {
        print("=============================");
        print("your password / username is wrong");
      }
    } else if (login1 == true) {
      menu();
      print("=============================");
      stdout.write("Enter the number of the Menu Options:");
      var input = stdin.readLineSync();
      if (input == "1") {
        print("=============================");
        print("Please Choose one of the Listed Course to register below:");
        print("1.Web Programming");
        print("2.Accountant");
        print("3.Digital Business");
        stdout.write("Write The number of the Chosen Course:");
        var input = stdin.readLineSync()!;
        if (input == "1") {
          course.add("Web Programming");
        } else if (input == "2") {
          course.add("Accountant");
        } else if (input == "3") {
          course.add("Digital Business");
        }
      } else if (input == "2") {
        print("=============================");
        print("Your Registered Courses are:");
        for (var i = 0; i < course.length; i++) {
          var ii = 1 + i;
          print('$ii. ${course[i]}');
        }
      } else if (input == "3") {
        print("=============================");
        print(
          "Please choose one of these registered courses you want to delete:",
        );
        for (var i = 0; i < course.length; i++) {
          var ii = 1 + i;
          print('$ii. ${course[i]}');
        }
        stdout.write("Write The Chosen Number or Cancel:");
        var input = stdin.readLineSync();
        var input1 = input.toString();
        if (input == "Cancel") {
        } else {
          course.removeAt(int.parse(input1)-1);
        }
      } else if (input == "4") {
        exit(0);
      }
    }
  }
}
