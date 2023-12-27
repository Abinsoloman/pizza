import 'package:flutter/material.dart';
import 'package:pizza/pizza.dart';

import 'datalist.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/image/red and white.jpeg"),
            fit: BoxFit.fill
            ),
          ),
    child: Column(
      children: [
      Padding(
        padding: const EdgeInsets.only(left: 40,right: 40),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [IconButton(onPressed: (){}, icon: Icon(Icons.menu,
          color: Colors.white,),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,
          color: Colors.red,)),
          ], 
        ),
      ),
      Expanded(
        child: Container(
          child: ListView.builder(
            itemCount: inx.length,
            itemBuilder: (context,index){
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80,right: 80,
                  top: 40),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(color: Colors.black)
                      
                      
                    ),child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(name[index],
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                        Text(count[index],
                        style: TextStyle(
                          fontSize: 18
                        ),),
                      ],
                    ),
                   
                  ),
                ),Positioned(
                  left: 50,
                  bottom: 0,
                  top: 40,
                  child: CircleAvatar(
                    radius: 35,
                   backgroundImage: AssetImage(inx[index]),
                    
                  ),
                ),
                Positioned(
                  right: 50,
                  bottom: 0,
                  top: 40,
                  child: SizedBox(
                    height: 65,
                    width: 65,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Pizza(data:name[index]
                      ,)));
                    }, child: Icon(Icons.arrow_forward_ios,),
                    
                    style: ElevatedButton.styleFrom(
                      
                      backgroundColor: Colors.red,
                      shape: CircleBorder(
                        
                      
                      )
                    ),
                    ),
                  ),
                ),
                
              ],
            );
          }),
        ),
      )
      ],
    ),
        ),
      ),
    ); 
    
        
    
    
  }
}