import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'RuRady.dart';

class WorkOutDate extends StatelessWidget {
  const WorkOutDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModelSec>(
      create: (context) => TimerModelSec(),
      child: Scaffold(
          body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("img/img19.webp"))),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Anulom Vilom",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                  margin: EdgeInsets.symmetric(horizontal: 95),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.shade200,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "00 : ",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Consumer<TimerModelSec>(
                        builder: (context, myMOdel, child) {
                          return Text(
                            myMOdel.countdown.toString(),
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          );
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){},

                  child: Text("Pause"),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: (){},

                      child: Text("Pervious"),
                    ),
                    TextButton(
                      onPressed: (){},

                      child: Text("Next"),
                    ),
                  ],
                ),
                SizedBox(height: 60,),
                Divider(thickness: 2,),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Next: Anulom Vilom",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class TimerModelSec with ChangeNotifier {
  TimerModelSec(context){
    MyTimerSec(context);
  }
  int countdown = 30;
}
MyTimerSec(context)async{

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

