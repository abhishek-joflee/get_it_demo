class AppModel {}

class AppModelImplementation extends AppModel {
  AppModelImplementation();
}

// class AppModelMock extends AppModel {}

// GetIt getIt = GetIt.instance;

// class UserManager {
//   AppModel appModel;
//   DbService dbService;

//   UserManager({AppModel appModel, DbService dbService}) {
//     this.appModel = appModel ?? getIt.get<AppModel>();
//     this.dbService = dbService ?? getIt.get<DbService>();
//   }
// }

// Future restCall() async {}

// Widget init() {
//   bool testing;
  // ambient variable to access the service locator

  // GetIt getIt = GetIt.instance;

  // getIt.registerFactory<AppModel>(() => AppModelImplementation());

  // GetIt.instance.registerSingleton<AppModel>(AppModelImplementation());

  // GetIt.I.registerLazySingleton<AppModel>(() => AppModelImplementation());

  //   if (testing) {
  //     sl.registerSingleton<AppModel>(AppModelMock());
  //   } else {
  //     sl.registerSingleton<AppModel>(AppModelImplementation());
  //   }
  // }

  // void setup() {
  //   // sl.registerFactoryAsync<AppModel>(
  //   //     () async => AppModelImplementation(await restCall()));

  //   // sl.registerSingletonAsync<AppModel>(
  //   //     () async => AppModelImplementation(await restCall()));

  //   // sl.registerFactoryAsync<AppModel>(
  //   //     () async => AppModelImplementation(await restCall()));
//   final getIt = GetIt.instance;

//   getIt.registerSingletonAsync<ConfigService>(() async {
//     final configService = ConfigService();
//     await configService.init();
//     return configService;
//   });

//   getIt.registerSingletonAsync<RestService>(() async => RestService().init());

//   /// this example uses an async factory function
//   getIt.registerSingletonAsync<DbService>(createDbServiceAsync,
//       dependsOn: [ConfigService]);

//   getIt.registerSingletonWithDependencies<AppModel>(
//       () => AppModelImplementation(),
//       dependsOn: [ConfigService, DbService, RestService]);

//   return FutureBuilder(
//       future: getIt.allReady(),
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         if (snapshot.hasData) {
//           return Scaffold(
//             body: Center(
//               child: Text('The first real Page of your App'),
//             ),
//           );
//         } else {
//           return CircularProgressIndicator();
//         }
//       });
// }

// class ConfigService {
//   ConfigService() {
//     init();
//   }
//   Future init() async {
//     // do your async initialization...

//     GetIt.instance.signalReady(this);
//   }
// }

// class RestService {
//   Future<RestService> init() async {
//     Future.delayed(Duration(seconds: 1));
//     return this;
//   }
// }

// class DbService {
//   Future init() async {
//     return null;
//   }
// }

// Future<DbService> createDbServiceAsync() async {
//   return DbService();
// }

// /// instead of
// MaterialButton(
//   child: Text("Update"),
//   onPressed: TheViewModel.of(context).update
//   ),

// /// do
// MaterialButton(
//   child: Text("Update"),
//   onPressed: sl.get<AppModel>().update
//   ),

// /// or even shorter
// MaterialButton(
//   child:  Text("Update"),
//   onPressed: sl.<AppModel>().update
//   ),

// class StartupPage extends StatefulWidget {
//   @override
//   _StartupPageState createState() => _StartupPageState();
// }

// class _StartupPageState extends State<StartupPage> {
//   @override
//   void initState() {
//     GetIt.I.allReady().then((_) => Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => MainPage())));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
