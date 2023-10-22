import 'package:flutter/material.dart';

class RecentAlerts extends StatefulWidget {
  const RecentAlerts({super.key});

  @override
  State<RecentAlerts> createState() => _RecentAlertsState();
}

class _RecentAlertsState extends State<RecentAlerts> {
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
        title: const Row(
          children: [
            Text(
              'AgriSight ',
              style: TextStyle(
                fontSize: 54.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.0,
                color: Colors.green,
              ),
            ),
            SizedBox(
              width:0,
            ),
            Text(
              'AI',
              style: TextStyle(
                fontSize: 54.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.0,
                color: Colors.indigo,
              ),
            ),


          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  const Text(
                    'Rust Detected',
                  ),
                  TextButton(onPressed:(){},
                      child: const Text(
                        'Location'
                      )
                  ),
                  TextButton(
                      onPressed: () {  },
                      child: const Text('View details'))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
