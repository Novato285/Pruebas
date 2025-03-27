import 'package:flutter/material.dart';
import 'package:myapp/components/admin_appbar.dart';
import 'package:myapp/components/admin_bottom_appbar.dart';

class SettingsAdmin extends StatefulWidget {
  const SettingsAdmin({super.key});

  @override
  State<SettingsAdmin> createState() => _SettingsAdminState();
}

class _SettingsAdminState extends State<SettingsAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarAdmin(title: "Settings"),
      bottomNavigationBar: CustomLowAppBarAdmin(),
    );
  }
}