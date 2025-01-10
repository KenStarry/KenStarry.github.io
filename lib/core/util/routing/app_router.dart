import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/util/routing/dashboard_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter =
    GoRouter(initialLocation: '/dashboard', routes: [dashboardRoute]);
