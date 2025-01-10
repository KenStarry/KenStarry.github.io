import 'package:go_router/go_router.dart';

import '../../../features/home/presentation/pages/home_page.dart';

final dashboardRoute = GoRoute(
    path: '/home',
    name: 'home',
    builder: (context, state) => HomePage());
