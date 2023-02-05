import 'package:flutter/material.dart';

class AccountAndSettings extends StatefulWidget {
  const AccountAndSettings({super.key});

  @override
  State<AccountAndSettings> createState() => _AccountAndSettingsState();
}

class _AccountAndSettingsState extends State<AccountAndSettings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          leading: CircleAvatar(
            radius: 5,
            backgroundColor: Colors.white10,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 15,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Accounts & Settings',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Account',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

Widget SettingCards({
  final String? SettingName,
  final Icon? SettingIcon,
}) {
  return Container(
      child: Row(
    children: [
      Icon(Icons.notification_add),
    ],
  ));
}
