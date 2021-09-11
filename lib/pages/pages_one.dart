import 'package:flutter/material.dart';

import 'package:custom_transition_route/helpers/route_transitions.dart';
import 'package:custom_transition_route/pages/pages_two.dart';


class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text( 'Page1' ),
        backgroundColor: Colors.transparent,
      ),

      backgroundColor: Colors.blue,
      body: Center(
        child: MaterialButton(
          child: Text('Go to page 2'),
          color: Colors.white,
          onPressed: (){
            // Navigator.push( context, MaterialPageRoute(builder: (_) => Page2()) );
            // Navigator.pushNamed(context, 'page2');

            RouteTransition(
              context : context,
              child: Page2(),
              animation: AnimationType.fadeIn,
              duration: Duration( seconds: 2 )
            );

          },
        )
      ),
    );
  }
}