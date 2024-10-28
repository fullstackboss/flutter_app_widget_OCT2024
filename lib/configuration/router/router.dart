import 'package:app_widgets/presentation/screen/screens.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => ScreenButtons(),
    ),
    GoRoute(
      path: '/listviews',
      builder: (context, state) => ScreenListViews(),
    ),
  ],
);
