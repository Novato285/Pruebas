import 'package:flutter/material.dart';
import 'package:myapp/components/admin_appbar.dart';
import 'package:myapp/components/admin_bottom_appbar.dart';
import 'package:myapp/components/new_button.dart';

class HomePageAdmin extends StatefulWidget{
  const HomePageAdmin ({super.key});

  @override
  State<HomePageAdmin> createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CustomAppbarAdmin(title: "Home Page"),
      bottomNavigationBar: CustomLowAppBarAdmin(),
      floatingActionButton: NewButton(),
    );
  }
}