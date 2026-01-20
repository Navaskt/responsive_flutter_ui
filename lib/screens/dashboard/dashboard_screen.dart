import 'package:flutter/material.dart';
import '../../responsive/responsive_layout.dart';
import 'dashboard_mobile.dart';
import 'dashboard_tablet.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: const DashboardMobile(),
      tablet: const DashboardTablet(),
    );
  }
}