import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner:false,
  home:DefaultTabController(
   length: 4,
   child:Scaffold(
    appBar: AppBar(
      title:Text(
        "WhatsApp",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight:FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: 2,
          wordSpacing: 8,
        ),
      ),
      actions:[
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt_outlined),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.more_vert_rounded),
        ),
      ],
      backgroundColor: Colors.teal[700],
      bottom: TabBar(
        indicatorColor: Colors.white,
        indicatorWeight: 4,
        tabs: [
          Tab(icon: Icon(Icons.groups)),
          Tab(text: 'Chats'),
          Tab(text: 'Status'),
          Tab(text: 'Calls'),
        ],
      ),
    ),
     body:ListView(
       children: [
         ListTile(
           leading: CircleAvatar(
             radius: 23,
             backgroundColor: Colors.grey,
             child: Icon(Icons.arrow_forward),
           ),
         ),
       ],
     ),
     floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.message),
          elevation: 20,
          backgroundColor: Colors.teal[700],
  ),
  ),
  ),
));