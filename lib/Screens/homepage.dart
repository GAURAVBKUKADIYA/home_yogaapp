//
//
// import 'package:flutter/material.dart';
// import 'package:home_yogaapp/Screens/StartUp.dart';
// import 'package:home_yogaapp/Widgets/CustomAppbar.dart';
// import 'package:home_yogaapp/Widgets/CustomDrawer.dart';
//
//
// class homepage extends StatefulWidget {
//   const homepage({Key? key}) : super(key: key);
//
//   @override
//   State<homepage> createState() => _homepageState();
// }
//
// class _homepageState extends State<homepage> with TickerProviderStateMixin {
//
//  late AnimationController _animationController;
//  late Animation _colorTween,_homeTween,_yogaTween,_iconTween,_drawerTween;
//  late AnimationController _textAnimationController;
//
//  @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _animationController = AnimationController(vsync: this,duration: Duration(seconds: 0));
//     _colorTween = ColorTween(begin: Colors.transparent,end: Colors.white).animate(_animationController);
//     _iconTween = ColorTween(begin: Colors.white,end: Colors.lightBlue).animate(_animationController);
//     _drawerTween = ColorTween(begin: Colors.white,end: Colors.black).animate(_animationController);
//     _homeTween = ColorTween(begin: Colors.white,end: Colors.blue).animate(_animationController);
//     _yogaTween = ColorTween(begin: Colors.white,end: Colors.black).animate(_animationController);
//     _textAnimationController = AnimationController(vsync: this,duration: Duration(seconds: 0));
//   }
//
//   bool scrolllistner(ScrollNotification scrollNotification){
//    bool scroll = false;
//    if(scrollNotification.metrics.axis == Axis.vertical)
//      {
//        _animationController.animateTo(scrollNotification.metrics.pixels/80);
//        _textAnimationController.animateTo(scrollNotification.metrics.pixels);
//        return scroll = true;
//      }
//    return scroll;
//   }
//
//   final   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       drawer: CustomDrawer(),
//       backgroundColor: Colors.white,
//       body:  NotificationListener(
//
//         onNotification: scrolllistner,
//         child: Stack(
//           children: [
//             Container(
//               height: double.infinity,
//               child: Stack(
//                 children: [
//                   SingleChildScrollView(
//                     child: Stack(
//                       children: [
//                         Column(
//                           children: [
//                             Container(
//                               padding: EdgeInsets.fromLTRB(50, 120, 50, 30),
//                               decoration: BoxDecoration(
//                                   color: Colors.blue.shade500,
//                                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Column(
//                                     children: [
//                                       Text("1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
//                                       Text("Streak",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
//                                     ],
//                                   ),
//                                   Column(
//                                     children: [
//                                       Text("179",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
//                                       Text("KCAL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
//                                     ],
//                                   ),
//                                   Column(
//                                     children: [
//                                       Text("12",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
//                                       Text("Minutes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: 10,),
//
//                             Container(
//                               margin: EdgeInsets.all(20),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Yoga For All",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img1.jpg"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("Yoga For Begineers",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("Last Time : 2 Feb ",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img2.webp"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("SuryaNamskar",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("Last Time : yesterday",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                   InkWell(
//                                     onTap: (){
//                                       Navigator.of(context).push(
//                                           MaterialPageRoute(builder: (context)=>StartUp())
//                                       );
//                                     },
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img4.jpg"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("Aerobics",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("  Today ",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img5.jpeg"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("Aerobics",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("Today",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img6.jpg"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("Aerobics",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("Today ",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img7.jpg"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("Weight  Loss Yoga",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("Last Time : 1 Feb ",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img9.jpeg"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("Yoga For Begineers",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("Last Time : 2 Feb ",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img10.jpg"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("Power Yoga",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("Morning ",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img11.webp"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("Brithing Yoga",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("Last Time : 1 Feb ",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [
//                                       Container(
//
//                                         height: 150,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage("img/img12.jpg"),
//                                                 fit: BoxFit.cover
//                                             )
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 150,
//                                         color: Colors.black26,
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left: 9,
//                                           top: 10,
//                                           child:Text("Jumping Yoga",
//                                             style: TextStyle(color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 20),)
//                                       ),
//                                       Positioned(
//                                           right: 20,
//                                           left:25,
//                                           top: 40,
//                                           child:Text("Last Time : 3 Feb ",
//                                             style: TextStyle(color: Colors.white,
//
//                                                 fontSize: 12),)
//                                       )
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   CustomAppbar(animationController: _animationController,
//                       colorsTween: _colorTween,
//                       drawerTween: _drawerTween,
//                       homeTween: _homeTween,
//                       iconTween: _iconTween,
//                       onPressed: (){scaffoldKey.currentState?.openDrawer();},
//                       yogaTween: _yogaTween)
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
