import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_yogaapp/Screens/WorkOutDate.dart';
import 'package:provider/provider.dart';
class RuRady extends StatelessWidget {
  const RuRady({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModel>(
        create:(context)=> TimerModel(context),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/2-100,),
                Text("Are You Redy ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
                Consumer<TimerModel>(builder: (context, myModel , child){
                  return Text(myModel.countdown.toString(), style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),);}),

           Spacer(),
           Divider(thickness: 2,),
           Align(
             alignment: Alignment.bottomLeft,
             child: Text("Next: Anulom Vilom"),
           )

                

              ],
            ),
          ),
          ),
        )
      ),
    );
  }
}

class TimerModel with ChangeNotifier {
  TimerModel(context){
    MyTimer(context);
  }
  int countdown = 5;

  MyTimer(context)async{

    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if(countdown == 0)
        {
          timer.cancel();
          Navigator.push(context, MaterialPageRoute(builder: (conext)=>WorkOutDate()));
        }
    });
  }
}
