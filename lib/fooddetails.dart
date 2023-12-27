import 'package:flutter/material.dart';
import 'package:pizza/datalist.dart';

class fooddetails extends StatelessWidget {
  String? data1,data2,data3,data4;
   fooddetails({super.key,this.data1,this.data2,this.data3,this.data4});
  
  @override
  
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/image/red.jpeg"),
            fit:BoxFit.fill)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios)),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text("Food Details",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),),
                  )
                ],
              ),
              Container(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Container(
                        height:571 ,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 85,left: 10),
                                      child: Text(data1.toString(),
                                      style: TextStyle(
                                        fontSize: 25
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(data3.toString(),
                                      style: TextStyle(
                                       fontSize: 20 ,
                                       color: Colors.green,
                                       fontWeight: FontWeight.w700
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 100,top: 50),
                                      child: Container(
                                        height: 60,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("-",
                                            style: TextStyle(
                                              fontSize: 40
                                            ),),
                                            Text("5",
                                            style: TextStyle(
                                              fontSize: 20
                                            ),),
                                            Text("+",
                                            style: TextStyle(
                                              fontSize: 20
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                         children: [
                                        Icon(Icons.star,
                                        color: Colors.amber,),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 70),
                                        child: Text(data4.toString()),
                                      ),
                                      
                                     Padding(
                                       padding: const EdgeInsets.only(left: 20),
                                       child: Icon(Icons.water_drop,
                                       color: Colors.red,),
                                     ),
                                     Text("100 Kcal"),
                                      
                                     Padding(
                                       padding: const EdgeInsets.only(left: 70),
                                       child: Icon(Icons.watch),
                                     ),                  
                                      Text("30 min"),
                                        Row(                                    
                                  )
                             ], 
                         ),
                    ),
                       
                                Padding(
                                  padding: const EdgeInsets.only(right: 250,top: 80),
                                  child: Text("About Food",
                                    style: TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.w500
                                    ),),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text("Margherita pizza is topped with tomato sauce, fresh mozzarella cheese, \n basil leaves, and sometimes grated Parmesan cheese",
                                  style: TextStyle(
                                   fontSize: 11,
                                  ),
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 50),
                                  child: ElevatedButton(onPressed: (){}, child: Text("Add to Cart",
                                  style: TextStyle(
                                   fontSize: 20,
                                  
                                  ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                   backgroundColor: Colors.red,
                                   minimumSize: Size(350, 80),
                                   
                                  ),),
                                ),
                                ],
                               ),         
                            ],
                           ),        
              ),
          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Align(
                        alignment: Alignment.center,
                        child:CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage(data2.toString()),
                        ),
                        ),
                    ),
                     
                  ],
                ),
              )
             
              
              
                
              
                
                      
                    
               
            ],
          ),
        ),
      ),
    );
  }
}