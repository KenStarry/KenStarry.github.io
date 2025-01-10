import 'package:go_router/go_router.dart';
import 'package:portfolio/features/dashboard/presentation/pages/dashboard_page.dart';

final dashboardRoute = GoRoute(
    path: '/dashboard',
    name: 'dashboard',
    builder: (context, state) => DashboardPage());
