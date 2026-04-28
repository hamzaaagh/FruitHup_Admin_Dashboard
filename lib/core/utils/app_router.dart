

import 'package:fruithup_dashboard/features/Dashboard/presesntation/views/dashborad_view.dart';
import 'package:fruithup_dashboard/features/add_product/presentation/Views/add_product_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/${DashboradView.routeName}',
  routes: [
    GoRoute(
      path: '/${DashboradView.routeName}',
      builder: (context, state) => const DashboradView(),
    ),
    GoRoute(
      path: '/${AddProductView.routeName}',
      builder: (context, state) => const AddProductView(),
    ),
    
    

  ]
);
