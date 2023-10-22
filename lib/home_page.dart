import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        backgroundColor: Colors.white,
      ),
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(50, 40, 16, 0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Welcome',
          style: TextStyle(
              fontSize: 44.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.0,
              color: Colors.indigo,
          )
              ),
            ),
        const SizedBox(
          height: 14,
        ),
        const Row(
        children: [
        Text(
        'AgriSight ',
        style: TextStyle(
          fontSize: 44.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.0,
          color: Colors.green,
        ),
      ),
      Text(
        'AI',
        style: TextStyle(
          fontSize: 44.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.0,
          color: Colors.indigo,
        ),
      ),
          ],
        ),
            const SizedBox(
              height: 200,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'All you need to do is',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.0,
                  color: Colors.black,
                ),

              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'farm_setting');
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent[400]
                ),
                child: const Text('Set your farm',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),

              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text('And Connect to a',
                style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.0,
                color: Colors.black,
              ),),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: TextButton(

                style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo
                ),

                onPressed: () {
                  Navigator.pushNamed(context,'drone_connection');
                },
                child: const Text('Drone',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),

              ),
            ),
             Row(
              children: [
                const Text('Do you need help?',
                style: TextStyle(
                  fontSize: 24
                ),
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text(
                      'Call Here',
                      style: TextStyle(
                          fontSize: 24
                      ),
                    ))
              ],
            )
  ]
      ),
      ));
  }
}
