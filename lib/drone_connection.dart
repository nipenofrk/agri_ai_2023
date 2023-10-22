import 'package:flutter/material.dart';

class DroneConnection extends StatefulWidget {
  const DroneConnection({super.key});

  @override
  State<DroneConnection> createState() => _DroneConnectionState();
}

class _DroneConnectionState extends State<DroneConnection> {
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
          'Connect to a Drone',
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
            Image.asset('assets/img.png'),
            const SizedBox(
              height: 24,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo
              ),

              onPressed: () {
                Navigator.pushNamed(context, 'go_live');
              },
              child: const Text('Go Live',
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
