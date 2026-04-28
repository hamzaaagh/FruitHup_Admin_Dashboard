import 'package:flutter/material.dart';
import 'package:fruithup_dashboard/features/Dashboard/presesntation/views/Widgets/dashborad_view_body.dart';

class DashboradView extends StatelessWidget {
  const DashboradView({super.key});
  static const String routeName = 'dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: DashboradViewBody(),
    );
  }
}
