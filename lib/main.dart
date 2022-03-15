import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Profile',
        home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        leading: Icon(Icons.account_circle),
      ),
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/person.jpg"),radius: 110,),
            Text(
              "Profile",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ListTile(
                  title: Text('Name',style: TextStyle(color: Colors.pinkAccent),),
                  subtitle: Text('User Name'),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Phone',style: TextStyle(color: Colors.pinkAccent),),
                  subtitle: Text('Phone Number'),
                  leading: Icon(Icons.phone),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Birthday Date',style: TextStyle(color: Colors.pinkAccent),),
                  subtitle: Text('Age : '),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Home address',style: TextStyle(color: Colors.pinkAccent),),
                  subtitle: Text('Address'),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Email Address',style: TextStyle(color: Colors.pinkAccent),),
                  subtitle: Text('Address'),
                  leading: Icon(Icons.email),
                  trailing: Icon(Icons.arrow_forward_ios),
                )
              ],
            )
          ]),
    );
  }
}
