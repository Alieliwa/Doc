import 'package:doc/core/routing/routs.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding_screen/onboarding_screen.dart';

class RouteGenerator {



  static Route<dynamic> getRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routs.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      // case Routs.loginScreen:
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());
    // case Routs.mentorsRoute:
    //   return MaterialPageRoute(builder: (_) => const Mentors());
    // case Routs.detailsRoute:
    //   return MaterialPageRoute(builder: (_) => const DetailsScreen());
    // case Routs.paymentRoute:
    //   return MaterialPageRoute(builder: (_) => const Payment());
    // case Routs.successfullyRoute:
    //   return MaterialPageRoute(builder: (_) => const BookedSuccessfully());
    // case Routs.mentorSessionFinished:
    //   return MaterialPageRoute(builder: (_) => const MentorSessionFinished());
      default:
        return unDefinedPage();
    }
  }

  static Route<dynamic> unDefinedPage() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("notRouteFound"),
        ),
        body: const Center(
          child: Text("notRouteFound"),
        ),
      ),
    );
  }
}