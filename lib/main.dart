import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winteam_admin/constants/colors.dart';
import 'package:winteam_admin/firebase_options.dart';

import 'blocs/subscription_bloc/subscription_cubit.dart';
import 'blocs/user_api_service/user_api_service.dart';
import 'blocs/user_bloc/current_user_cubit.dart';
import 'blocs/user_bloc/user_list_cubit.dart';
import 'constants/language.dart';
import 'constants/route_constants.dart';
import 'model/user_entity.dart';


var url_base;


Future<bool> fetchBaseUrl() async {


  try {
    DocumentSnapshot element = await FirebaseFirestore.instance.collection(
        'rest_base_url').doc("rest_url").get();

    if (kDebugMode) {
      url_base = element['debug'];
      print("URL BASE ${url_base}");
      return true;
    } else {
      url_base = element['production'];
      print("URL BASE ${url_base}");
      return true;
    }
  }catch(e) {
    print(e);
    return false;
  }

}

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final auth = FirebaseAuth.instanceFor(app: Firebase.app(), persistence: Persistence.LOCAL);
  var user = auth.currentUser;
  String initialRoute = "/";
  if(user != null){
    await fetchBaseUrl();
    var me = await userListApiService.me();
    var encoded = jsonEncode(me.data);
    var decoded = jsonDecode(encoded);
    var json = UserEntity.fromJson(decoded);
    if(json.roleId == getCurrentLanguageValue(USER_DATORE)){
      initialRoute = RouteConstants.dashboard;
    } else if(json.roleId == getCurrentLanguageValue(USER_LAVORATORE)) {

    }
  }
  runApp(MyApp(initialRoute: initialRoute));
}

class MyApp extends StatelessWidget {

  final String initialRoute;

  const MyApp({super.key,required this.initialRoute});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UserListCubit(),
          ),

          BlocProvider(
            create: (context) => UserCubit(),
          ),
          BlocProvider(
            create: (context) => SubscriptionCubit(),
          ),
        ],
        child: MaterialApp(
            title: APP_TITLE,
            theme: ThemeData(
                fontFamily: 'Montserrat',
                primarySwatch: Colors.blue,
                backgroundColor: background
            ),
            routes: RouteConstants.route(context) ,
            initialRoute: initialRoute,
            debugShowCheckedModeBanner: false
        )
    );

  }


}


