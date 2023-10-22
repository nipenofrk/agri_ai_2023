import 'package:agrisight_ai/drone_connection.dart';
import 'package:agrisight_ai/farm_setting.dart';
import 'package:agrisight_ai/golive_class.dart';
import 'package:agrisight_ai/home_page.dart';
import 'package:agrisight_ai/recent_alerts.dart';
import 'package:agrisight_ai/reg_form.dart';
import 'package:flutter/material.dart';
import 'login_form.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AgriSightAI',
      initialRoute: 'login',//this is where an application will start to route
      routes:{
        'login':(context)=>const LogInForm(),
        'registration':(context)=>const RegistrationForm(),
        'homepage':(context)=>const HomePage(),
        'farm_setting':(context)=>const FarmSetting(),
        'drone_connection':(context)=>const DroneConnection(),
        'go_live':(context)=>const GoLive(),
        'recent_alerts':(context)=>const RecentAlerts(),
      }

  ));
}