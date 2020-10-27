import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  colorHexConverter(String colorHexValue){
    String colorNew='0xff'+colorHexValue;
    colorNew=colorNew.replaceAll('#', '');
    int colorIntValue=int.parse(colorNew);
    return colorIntValue;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height,
      width:MediaQuery.of(context).size.width,

      child:ListView(
        padding:EdgeInsets.only(left:20.0,right:20.0,top:20.0),
        children: [
          Container(
            height:200,
            width:100,
            decoration:BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image:AssetImage('lib/assets/images/header.jpg')),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color:Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0,
                ),]
            ),
          ),

          SizedBox(height:20.0,),

          Container(
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color:Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3.0,
                  ),]
              ),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Topic',style:TextStyle(fontWeight:FontWeight.bold,fontSize:25.0),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0,bottom:20.0),
                  child:Column(
                    children: [
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height:MediaQuery.of(context).size.height*0.15,
                            width:MediaQuery.of(context).size.height*0.15,
                            decoration:BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3.0,
                                ),]
                            ),
                            child:Material(
                              color:Color(colorHexConverter('#75a5f1')),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              child: InkWell(
                                onTap:(){
                                  print('tile clicked');
                                },
                              ),
                            ),
                          ),

                          Container(
                            height:MediaQuery.of(context).size.height*0.15,
                            width:MediaQuery.of(context).size.height*0.15,
                            decoration:BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3.0,
                                ),]
                            ),
                            child:Material(
                              color:Color(colorHexConverter('#75a5f1')),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              child: InkWell(
                                onTap:(){
                                  print('tile clicked');
                                },
                              ),
                            ),
                          ),

                        ],
                      ),

                      SizedBox(height:30.0,),

                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height:MediaQuery.of(context).size.height*0.15,
                            width:MediaQuery.of(context).size.height*0.15,
                            decoration:BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3.0,
                                ),]
                            ),
                            child:Material(
                              color:Color(colorHexConverter('#75a5f1')),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              child: InkWell(
                                onTap:(){
                                  print('tile clicked');
                                },
                              ),
                            ),
                          ),

                          Container(
                            height:MediaQuery.of(context).size.height*0.15,
                            width:MediaQuery.of(context).size.height*0.15,
                            decoration:BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3.0,
                                ),]
                            ),
                            child:Material(
                              color:Color(colorHexConverter('#75a5f1')),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              child: InkWell(
                                onTap:(){
                                  print('tile clicked');
                                },
                              ),
                            ),
                          ),

                        ],
                      ),

                    ],
                  )
                )
              ],
            )
          ),

          SizedBox(height: 20.0,),

          Container(
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color:Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3.0,
                  ),]
              ),
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Text Here',style:TextStyle(fontWeight:FontWeight.bold,fontSize:25.0),),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0,bottom:20.0),
                      child:Column(
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height:MediaQuery.of(context).size.height*0.15,
                                width:MediaQuery.of(context).size.height*0.15,
                                decoration:BoxDecoration(
                                    boxShadow: [BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 3.0,
                                    ),]
                                ),
                                child:Material(
                                  color:Color(colorHexConverter('#75a5f1')),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  child: InkWell(
                                    onTap:(){
                                      print('tile clicked');
                                    },
                                  ),
                                ),
                              ),

                              Container(
                                height:MediaQuery.of(context).size.height*0.15,
                                width:MediaQuery.of(context).size.height*0.15,
                                decoration:BoxDecoration(
                                    boxShadow: [BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 3.0,
                                    ),]
                                ),
                                child:Material(
                                  color:Color(colorHexConverter('#75a5f1')),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  child: InkWell(
                                    onTap:(){
                                      print('tile clicked');
                                    },
                                  ),
                                ),
                              ),

                            ],
                          ),

                          SizedBox(height:30.0,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height:MediaQuery.of(context).size.height*0.15,
                                width:MediaQuery.of(context).size.height*0.15,
                                decoration:BoxDecoration(
                                    boxShadow: [BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 3.0,
                                    ),]
                                ),
                                child:Material(
                                  color:Color(colorHexConverter('#75a5f1')),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  child: InkWell(
                                    onTap:(){
                                      print('tile clicked');
                                    },
                                  ),
                                ),
                              ),

                              Container(
                                height:MediaQuery.of(context).size.height*0.15,
                                width:MediaQuery.of(context).size.height*0.15,
                                decoration:BoxDecoration(
                                    boxShadow: [BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 3.0,
                                    ),]
                                ),
                                child:Material(
                                  color:Color(colorHexConverter('#75a5f1')),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  child: InkWell(
                                    onTap:(){
                                      print('tile clicked');
                                    },
                                  ),
                                ),
                              ),

                            ],
                          ),

                        ],
                      )
                  )
                ],
              )
          ),

        ],
      )
    );
  }
}
