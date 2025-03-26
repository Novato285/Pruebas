import 'package:flutter/material.dart';
import 'package:myapp/components/upper_appbar.dart';
import 'package:myapp/components/user_bottom_app_bar.dart';

class NotificationsPage extends StatefulWidget{
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}


class _NotificationsPageState extends State<NotificationsPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: CustomAppbar(
        title: "Notificaciones",
      ),
      bottomNavigationBar: const CustomLowAppBar(),
    );
  }
}