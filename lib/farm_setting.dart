import 'package:flutter/material.dart';
class FarmSetting extends StatefulWidget {
  const FarmSetting({super.key});

  @override
  State<FarmSetting> createState() => _FarmSettingState();
}

class _FarmSettingState extends State<FarmSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        width: 240,
        backgroundColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  'Set Farm Location',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pushNamed(context, 'farm_setting');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  'Connect Drone',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pop(context,'drone_connection');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pushNamed(context, 'recent_alerts');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Set your farm',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.0,
            color: Colors.indigo,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text('Farm 1',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            Image.asset('assets/googlemap.png'),
            // const Expanded(
            //   child: WebView(
            //     initialUrl: 'https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d12184.924339666679!2d39.06832033561427!3d-6.912918680235599!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1skilimanjaro%20maize%20farms!5e1!3m2!1sen!2stz!4v1697881499726!5m2!1sen!2stz',
            //     javascriptMode: JavascriptMode.unrestricted,
            //     backgroundColor: Colors.black,
            //   ),
            // ),
            const SizedBox(
              height: 60,
            ),

            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo
              ),

              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              child: const Text('Save',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),

            ),
          ],
        ),
      ),
    );
  }
}
