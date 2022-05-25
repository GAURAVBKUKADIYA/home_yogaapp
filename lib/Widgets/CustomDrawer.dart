import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(

        child: Column(
          children: [
           Container(
          height: 250,

          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/img19.webp"),
                  fit: BoxFit.cover
              )
          ),
        ),
            ListTile(
              title: Text("Reset Progress",style: TextStyle(fontSize: 18),),
              leading: Icon(Icons.restart_alt_sharp,size: 25,color: Colors.black,),
            ),
            Divider(height: 5,thickness: 1,color: Colors.grey.shade500,),
            ListTile(
              title: Text("Share With Friends",style: TextStyle(fontSize: 18),),
              leading: Icon(Icons.share,size: 25,color: Colors.black,),
            ),
            Divider(height: 5,thickness: 1,color: Colors.grey.shade500,),
            ListTile(
              title: Text("Rate Us",style: TextStyle(fontSize: 18),),
              leading: Icon(Icons.restart_alt_sharp,size: 25,color: Colors.teal,),
            ),
            Divider(height: 5,thickness: 1,color: Colors.grey.shade500,),
            ListTile(
              title: Text("Feedback",style: TextStyle(fontSize: 18),),
              leading: Icon(Icons.star,size: 25,color: Colors.green,),
            ),
            Divider(height: 5,thickness: 1,color: Colors.grey.shade500,),
            ListTile(
              title: Text("Privacy Policy",style: TextStyle(fontSize: 18),),
              leading: Icon(Icons.security,size: 25,color: Colors.blue,),
            ),

            Divider(height: 15,thickness: 3,color: Colors.grey,endIndent: 30,indent: 30,),
            Text("Version:1.0.1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

          ],
        ),
      ),
    );
  }
}
