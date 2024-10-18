import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'Presentation/Onboarding_Screen/onboarding_screen.dart';
import 'core/Theme_data/breakpoint_enum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder(
      child: Builder(
          builder: (context) {
            final currentBreakpoint = ResponsiveBreakpoints.of(context).breakpoint;
            final currentPointEnum = BreakpointEnum.breakpointEnum(currentBreakpoint);
            return MaterialApp(
              title: 'Food Ninja',
              theme: BreakpointEnum.responsiveTheme(currentPointEnum),
              home: const OnboardingScreen(),
            );
          }
      ), breakpoints: [
      BreakpointEnum.mobile.point,
      BreakpointEnum.tablet.point,
      BreakpointEnum.desktop.point,
    ],
    );
  }
}
