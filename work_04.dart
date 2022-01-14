import 'dart:io';

void main(List<String> args) {
  Map<String, String> map = Map();
  List<String> lso = [];
  bool cont = true;

  while (true) {
    print("Enter 1 for Admin or Enter 2 for Student Login : ");
    int option = int.parse(stdin.readLineSync()!);
    if (option == 1) {
      //admin mode
      open_Admin_Mode(map, lso);
    } else if (option == 2) {
      //student mode
      open_Student_Mode(map, lso);
    } else {
      print("Invalid choice");
    }
    print("Enter 0 for continue or Enter 1 for exit :");
    int ask = int.parse(stdin.readLineSync()!);
    if (ask == 0)
      cont = true;
    else {
      break;
    }
  }
}

void open_Admin_Mode(Map<String, String> map, List<String> lso) {
  print("Enter 1 to adding courses in BranchElective and 2 for openElective :");
  int option = int.parse(stdin.readLineSync()!);
  if (option == 1) {
    print("Please Enter branch Name :");
    String branch = stdin.readLineSync()!;
    print("Please Enter year of study :");
    int year = int.parse(stdin.readLineSync()!);
    print("Please Enter course Name :");
    String courseName = stdin.readLineSync()!;
    String course_code = branch + "@" + year.toString();
    map[course_code] = courseName;
  } else {
    print("Please Enter course Name :");
    String courseName = stdin.readLineSync()!;
    lso.add(courseName);
  }
}

void open_Student_Mode(Map<String, String> map, List<String> lso) {
  print("Enter 1 for BranchElectives courses and 2 for OpenElective courses");
  int option = int.parse(stdin.readLineSync()!);

  if (option == 1) {
    print("Please add your Brance and year : ");
    String branch = stdin.readLineSync()!;
    int year = int.parse(stdin.readLineSync()!);
    String course_code = branch + "@" + year.toString();
    print("Your allotted course is :");
    print(map[course_code]);
  } else {
    print(lso);
  }
}

class courses {
  String Course_Name = "";
  int Course_Code = 0;
}

class BranchElective extends courses {
  String Branch_Name = "";
  int year = 0;
}

class OpenElectives extends courses {}
