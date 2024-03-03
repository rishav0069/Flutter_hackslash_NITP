import 'package:flutter/material.dart';
import 'package:insta_clone/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 60,
                  width: 200,
                  child: Image.asset('assets/image/logo.png')),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                      decoration: InputDecoration(
                        label: Text('phone number,e-mail or username',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            backgroundColor: Colors.black45,
                            fontSize: 20,
                            color: Colors.white
                          ),),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        )
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                      decoration: InputDecoration(
                          label: Text('password',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            backgroundColor: Colors.black45,
                              fontSize: 20,
                              color: Colors.white
                          ),),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: TextButton(onPressed: (){
                  },
                    child: Text('Forget Password',style: TextStyle(
                  color: Colors.blue
                ),)),
              ),
                 Container(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  }, child: Text('Log In')),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Text("Don't have account",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                    TextButton(onPressed: (){
                      },child: TextButton(onPressed: (){

                    }, child: Text('Forget Password',style: TextStyle(
                        color: Colors.blue
                    ),) )
                    )
                  ],
                ),
              )
            ],
        ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
