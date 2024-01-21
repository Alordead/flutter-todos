import 'package:di/di.dart';
import 'package:flutter_todos/screens/screens.dart';

import 'package:go_router/go_router.dart';
import 'package:routing/routing.dart';

import 'i_routing_setup.dart';

class RoutingSetup implements IRoutingSetup {
  const RoutingSetup({
    required this.diContainer,
  });

  final DiContainer diContainer;

  @override
  AppRouter setupAppRouter() {
    final goRouter = GoRouter(
      initialLocation: '/todos',
      routes: <RouteBase>[
        GoRoute(
          path: '/todos',
          builder: diContainer.get<TodosScreen>.buildView,
          routes: [],
        ),
        GoRoute(
          name: 'add_todo',
          path: '/add_todo',
          pageBuilder: (context, state) {
            return DialogPage(
              key: state.pageKey,
              child: diContainer.get<AddTodoScreen>.buildView(context, state),
            );
          },
        ),
      ],
    );

    return GoAppRouter(
      router: goRouter,
    );
  }
}
