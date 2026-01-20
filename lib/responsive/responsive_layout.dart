import 'package:flutter/material.dart';

const double tabletBreakpoint = 600;

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= tabletBreakpoint ? tablet : mobile;
  }
}