import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MAD'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://c4.wallpaperflare.com/wallpaper/322/457/306/'
                        'grand-theft-auto-5-logo-green-five-logo-wallpaper-preview.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height:20),


              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width:100,
                    height:100,
                    color:Colors.blue,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.green,
                  ),

                  Positioned(
                    child: Container(
                      color: Colors.red,
                      child: Column(
                        children: [
                          for (var i = 1; i <= 9; i++)
                            Text(
                              '$i',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Instruction text
              const Text(
                'Say My Name'
                    'you are hisenberg',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Bottom section with leading and trailing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'breaking',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'bad',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
