import 'package:flutter/material.dart';
import 'package:pizza/datalist.dart';
import 'package:pizza/fooddetails.dart';

class Pizza extends StatefulWidget {
  String? data;
  Pizza({super.key,this.data});

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  var img =[];
  var nme = [];
  var rtg = [];
  var grm = [];
  var rte = [];
  
  @override
  Widget build(BuildContext context) {
   itemlist();
    return SafeArea(
      child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("asset/image/red and white.jpeg"),
              fit: BoxFit.fill)
            
          ),
          child: Column(
            children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back),
                  color: Colors.white,),
                ),
              
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),
                color: Colors.red,),
              ),],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50,top: 100),
                  child: Text(widget.data.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    letterSpacing: 4,
                    color: Colors.white
                  ),),
                ),
              ],
            ),
            
            Expanded(
                child: ListView.builder(
                  itemCount:3,
                  itemBuilder: (context,index){
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80,right: 80,top: 40),
                        child: Container(
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(nme[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w800
                                ),),
                              ), 
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                      Icon(Icons.star,
                                      color: Color.fromARGB(137, 255, 196, 0),),
                                    Text(rtg[index]),
                                  ],
                                ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                       Text(grm[index]),
                                    ],
                                  ),
                                ),
                            
                              Padding(
                                padding: const EdgeInsets.only(right: 30,),
                                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(rte[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.red
                                    ),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 190,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("-",
                                    style: TextStyle(
                                      fontSize: 40
                                    ),),
                                    Text("1",
                                    style: TextStyle(
                                      fontSize: 20
                                    ),),
                                    Text("+",
                                    style: TextStyle(
                                      fontSize: 20
                                    ),)
                                  ],
                                ),
                                
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                      
                      
                      Positioned(
                        left: 50,
                        top: 70,
                        child: CircleAvatar(
                          radius: 35,
                           backgroundImage: AssetImage(img[index]),

                        )),
                        Positioned
                        (right: 50,
                        top: 70,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>fooddetails
                            (data1:nme[index],data2:img[index],data3:rte[index],data4:rtg[index],)));
                          }, child: Icon(Icons.shopping_cart),
                         style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: CircleBorder(),
                          minimumSize: Size(70, 70)
                         ) ))
                    ],
                  );
                }),
            
            )
            

            ],
          ),
          
        ),
      ),
    );
  }
  void itemlist(){
 if (widget.data=="Dessert"){
      nme.addAll(dessertitems);
      rtg.addAll(drr);
      grm.addAll(dgrm);
      rte.addAll(dprise);
      img.addAll(image1);
    }
    else if (widget.data=="Pasta"){
      nme.addAll(pastaname3);
      rtg.addAll(pastarating2);
      rte.addAll(pastarate2); 
      grm.addAll(pastagram);
      img.addAll(pastaimage2);
    }
    else if(widget.data=="Pizza"){
      img.addAll(pizzaimg);
      nme.addAll(pizzanme);
      rtg.addAll(pizzarating);
      rte.addAll(pizzaprise);
      grm.addAll(pizzagram);
    }
    else if (widget.data=="Salad"){
      img.addAll(saladimg);
      nme.addAll(saladname);
      rtg.addAll(saladrating);
      rte.addAll(saladprice);
      grm.addAll(saladgram);
    }
    else if (widget.data=="Shake"){
      img.addAll(shakeimg);
      nme.addAll(shakename);
      rtg.addAll(shakerating);
      grm.addAll(shakegram);
      rte.addAll(shakeprice);
    }
  }
}