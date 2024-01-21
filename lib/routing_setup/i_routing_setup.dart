import 'package:routing/routing.dart';

abstract interface class IRoutingSetup {
  // Setups the routing system
  // Describes and configures all the possible routes and initial path
  //
  // The method should be called once before the `runApp()` method
  AppRouter setupAppRouter();
}
