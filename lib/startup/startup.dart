import 'package:di/di.dart';
import 'package:flutter_todos/api/api_implementations.dart';
import 'package:flutter_todos/api/api_interfaces.dart';
import 'package:flutter_todos/config.dart';
import 'package:flutter_todos/repositories/repository_implementations.dart';
import 'package:flutter_todos/repositories/repository_interfaces.dart';
import 'package:flutter_todos/routing_setup/routing_setup.dart';
import 'package:flutter_todos/screens/screens.dart';
import 'package:flutter_todos/services/service_implementations.dart';
import 'package:flutter_todos/services/service_interfaces.dart';
import 'package:flutter_todos/stores/store_implementations.dart';
import 'package:flutter_todos/stores/store_interfaces.dart';
import 'package:network/network.dart';
import 'package:routing/routing.dart';

abstract final class Startup {
  static Future<IDiContainer> start() async {
    const diContainer = DiContainer();

    // Localizations
    const ILocalizationService localizationService = LocalizationService(
      supportedLocales: AppConfig.supportedLocales,
      defaultLocale: AppConfig.defaultLocale,
      pathToLocalizations: AppConfig.localizationPath,
    );

    await localizationService.init();

    diContainer.register<ILocalizationService>(localizationService);

    // Stores
    final ITodosStore todosStore = TodosStore();

    // Networking
    final todosClient = NetworkClient.api(
      AppConfig.todosApiBaseUrl,
    );

    // APIs
    final ITodosApi todosApi = TodosApi(
      networkClient: todosClient,
    );

    // Repositories
    final ITodosRepository todoRepository = TodosRepository(
      todosApi: todosApi,
      todosStore: todosStore,
    );

    // Routing
    final AppRouter appRouter = RoutingSetup(
      diContainer: diContainer,
    ).setupAppRouter();

    diContainer
      ..register<AppRouterConfiguration>(appRouter.appRouterConfiguration)
      ..register<AppNavigator>(appRouter.appNavigator);

    // Screens
    final todosScreen = TodosScreen(
      navigator: appRouter.appNavigator,
      todosRepository: todoRepository,
    );
    final addTodoScreen = AddTodoScreen(
      navigator: appRouter.appNavigator,
      todosRepository: todoRepository,
    );

    diContainer
      ..register<TodosScreen>(todosScreen)
      ..register<AddTodoScreen>(addTodoScreen);

    return diContainer;
  }
}
