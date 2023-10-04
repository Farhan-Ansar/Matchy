import 'package:flutter/material.dart';
import 'package:matchy/Utils/Routes/routesNames.dart';
import 'package:matchy/Views/calendar/calander_screen.dart';
import 'package:matchy/Views/customers/customerScreen.dart';
import 'package:matchy/Views/customers/customer_session_screen.dart';
import 'package:matchy/Views/onboarding/create_new_password_screen.dart';
import 'package:matchy/Views/onboarding/email_check_screen.dart';
import 'package:matchy/Views/onboarding/email_verified_screen.dart';
import 'package:matchy/Views/onboarding/forget_password_screen.dart';
import 'package:matchy/Views/onboarding/password_reset_screen.dart';
import 'package:matchy/Views/onboarding/welcome_back_screen.dart';
import 'package:matchy/Views/payments/paymentScreen.dart';
import 'package:matchy/Views/profile/perfilScreen.dart';
import 'package:matchy/Views/profile/publicProfileScreen.dart';
import 'package:matchy/Views/settings/settings.dart';
import '../../Views/calendar/calendar_2.dart';
import '../../Views/onboarding/create_account_screen.dart';

class Routes {
  static MaterialPageRoute generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.createAccountScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const CreateAccount());
      case RoutesName.welcomeBackScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WelcomeBack());
      case RoutesName.forgetPasswordScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ForgetPassword());
      case RoutesName.resetPasswordScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PasswordReset());
      case RoutesName.createNewPasswordScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const CreateNewPassword());
      case RoutesName.checkEmailScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const EmailCheck());
      case RoutesName.verifiedEmailScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const EmailVerifiedScreen());
      case RoutesName.calendarScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Calendar());
      case RoutesName.calendar2Screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Calendar2());
      case RoutesName.customerScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Customer());
      case RoutesName.customerSessionScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const CustomerSessionScreen());
      case RoutesName.paymentScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Payments());
      case RoutesName.publicProfileScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PublicProfileScreen());
      case RoutesName.publicPerFilScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PerFil());
      case RoutesName.settingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Settings());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }
}
