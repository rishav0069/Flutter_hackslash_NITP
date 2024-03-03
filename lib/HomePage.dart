import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            height: 30,
            width: 150,
            child: Image.asset('assets/image/logo.png')),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){},
            icon: Icon(Icons.favorite_border_outlined),color: Colors.white,),
          IconButton(onPressed: (){},
            icon: Icon(Icons.messenger_outline_outlined),color: Colors.white,),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.account_circle,color: Colors.grey,size: 60,),
                        ),
                        Text('Your Story',style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.account_circle,color: Colors.grey,size: 60,),
                        ),
                        Text('Rishav',style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.account_circle,color: Colors.grey,size: 60,),
                        ),
                        Text('Avinaash_At_High',style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                        ),)
                      ],
                    ),Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.account_circle,color: Colors.grey,size: 60,),
                        ),
                        Text('Shubhamhai',style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                        ),)
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 35,
                  child: Icon(Icons.account_circle,size: 60,),
                ),
                title : Text('Rishav'),
                textColor: Colors.white,
                subtitle: Text('Patna,India'),
                trailing: Icon(Icons.manage_search),
              ),
              Container(
                width: double.infinity,
                height: 500,
                child: Image.asset('assets/image/post1.png'),
              ),
              ButtonBar(
                children: [
                  Icon(Icons.favorite_border_outlined,
                    color: Colors.white,),
                  Icon(Icons.share,
                  color: Colors.white,),
                  Icon(Icons.comment,
                  color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: Icon(Icons.save_outlined,color: Colors.white,),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}