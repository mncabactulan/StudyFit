import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple.shade700.withOpacity(0.8),
              Colors.purple.shade500.withOpacity(0.8),
              Colors.purple.shade300.withOpacity(0.8),
            ],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 20),
          children: [
//             const SizedBox(
// // accountName: Text('ULTRA PLAY', style: TextStyle(fontSize: 40, color: Colors.amber),),
// // accountEmail: Text('Play, Download and Convert Music and Videos'),
//               height: 100,
//               child:Padding(
//                 padding: EdgeInsets.only(right: 280),
//                 child: Image(
//                     image: AssetImage('images/logo.png')),
//               ),
//             ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white,),
              title: const Text('Account'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.white,),
              title: const Text('Notifications'),
              onTap: () {},
            ),
// ListTile(
//
// Switch(value: false, onChanged: (newValue){_themeManager.toggleTheme(isDark)}),),
// ),
            ListTile(
              leading: const Icon(Icons.privacy_tip, color: Colors.white,),
              title: const Text('Privacy Policy'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.terminal, color: Colors.white,),
              title: const Text('Terms and Conditions'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.error_outline_outlined, color: Colors.white,),
              title: const Text('About us'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.question_answer_outlined, color: Colors.white,),
              title: const Text('Help'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.star_border_outlined, color: Colors.white,),
              title: const Text('Rate this App'),
              onTap: () {},
            ),
            ListTile(
                leading: const Icon(Icons.logout, color: Colors.white,),
                title: const Text('Logout'),
                onTap: () {},
              ),
          ],
        ),
      ),
    );
  }
}