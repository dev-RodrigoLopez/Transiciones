import 'package:custom_transition_route/pages/pages_one.dart';
import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text( 'Page1' ),
        backgroundColor: Colors.transparent,
      ),


      backgroundColor: Colors.blueGrey,
      body: Center(
        child: MaterialButton(
          child: Text('Go to page 1'),
          color: Colors.white,
          onPressed: (){
            Navigator.push( context, MaterialPageRoute(builder: (_) => Page1()) );
          },
        )
      ),
    );
  }
}