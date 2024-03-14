import 'package:get/get.dart';

class HomeController extends GetxController {
  int teamBpoints = 0;
  int teamApoints = 0;

  void reset() {
    teamApoints = 0;
    teamBpoints = 0;
    update();
  }

  void increment() {
    teamBpoints++;
    update();
  }

  void increment2() {
    teamBpoints += 2;
    update();
  }

  void increment3() {
    teamBpoints += 3;
    update();
  }

  void increment4() {
    teamApoints++;
    update();
  }

  void increment5() {
    teamApoints += 2;
    update();
  }

  void increment6() {
    teamApoints += 3;
    update();
  }
}
