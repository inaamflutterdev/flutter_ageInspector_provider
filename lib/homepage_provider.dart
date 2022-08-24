import 'package:flutter/foundation.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEligible;
  String? eligibilityMessage = "";

  void checkEligibility(int age) {
    if (age >= 18) {
      isEligible = true;
      eligibilityMessage = "You are able to drive";
      notifyListeners();
    } else {
      isEligible = false;
      eligibilityMessage = "You are not eligible for driving";
      notifyListeners();
    }
  }
}
