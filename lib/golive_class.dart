import 'package:flutter/material.dart';

class GoLive extends StatefulWidget {
  const GoLive({super.key});

  @override
  State<GoLive> createState() => _GoLiveState();
}

class _GoLiveState extends State<GoLive> {
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
              'AgriSite ',
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
            Image.asset('assets/img_1.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height:200,
            ),
            const Padding(
              padding: EdgeInsets.zero,
              child: Text(
                'Drone location',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Image.asset('assets/img_3.png',


            ),
            TextButton(

              style: TextButton.styleFrom(
                  backgroundColor: Colors.red
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'go_live');
              },
              child: const Text('Live Video Recording....',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),


            ),
            const SizedBox(
              height: 24.0,
            ),
            const Text(
              'Rust result level',
              style: TextStyle(
                fontWeight:  FontWeight.bold,
                fontSize: 24.0,
                overflow: TextOverflow.visible
              ),

            ),
            Container(
              height: 44,
              width: double.infinity,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
