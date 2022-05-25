import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_yogaapp/Screens/RuRady.dart';

class StartUp extends StatefulWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  State<StartUp> createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: ElevatedButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>RuRady())
          );
        },


        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          primary: _flag ? Colors.blue : Colors.green, // background
          onPrimary: Colors.white, // foreground
        ),
        child: Text(_flag ?"START":"Go",style: TextStyle(fontSize: 20),),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace:FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Image.asset("img/img16.jpg",fit: BoxFit.cover,),
              title: Text("Yoga For Begineer"),
            ),
            actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.thumb_up))
            ],
          ),
          SliverToBoxAdapter(
           child: Container(
             margin: EdgeInsets.all(5),
             padding: EdgeInsets.all(2),
             child: Column(
               children: [
                 Row(
                   children: [
                     Text("16 Mins || 26 Workouts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                   ],
                 ),
                 Divider(thickness: 2,),
                 ListView.separated(
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   separatorBuilder: (context, index) => Divider(),
                   itemBuilder: (context,index)=>ListTile(

                     leading: Container(
                       margin: EdgeInsets.only(right:20),

                       child: Image.asset("img/img20.gif",fit: BoxFit.cover,),
                     ),
                     title: Text("Yoga $index",style: TextStyle(fontWeight: FontWeight.bold),),
                     subtitle: Text((index%2 == 0)?"00:20": "x20"),
                   ),
                   itemCount: 11  ,
                 )
               ],
             ),
           ),
          )
        ],
      ),
    );
  }
}
