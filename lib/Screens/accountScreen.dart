import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class accountScreen extends StatefulWidget {
  @override
  _accountScreenState createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {

  colorHexConverter(String colorHexValue){
    String colorNew='0xff'+colorHexValue;
    colorNew=colorNew.replaceAll('#', '');
    int colorIntValue=int.parse(colorNew);
    return colorIntValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:250,
          width:MediaQuery.of(context).size.width,
          decoration:BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image:AssetImage('lib/assets/images/profileHead.jpg')),
              color:Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.grey,
                blurRadius: 3.0,
              ),]
          ),
          child:Stack(
            alignment:Alignment.bottomCenter,

            children: [
              Container(
                width:MediaQuery.of(context).size.width,
                height: 60.0,
                color:Colors.white,
                padding:EdgeInsets.only(bottom:5.0),
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  crossAxisAlignment:CrossAxisAlignment.end,
                  children: [
                    Text('LAW STUDENT'),
                    Text('JOHN DOE',style:TextStyle(color:Color(colorHexConverter('0D47A1')),fontWeight:FontWeight.bold,fontSize:20.0),),
                    Column(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap:(){
                            print('Profile edit clicked');
                          },
                            child: Icon(Icons.edit)
                        ),
                        Text('+91 9203XXXXXX'),
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('lib/assets/images/profile.jpg')
                        )
                    )),
              ),
            ],
          ),
        ),

        SizedBox(height:20.0,),

        Container(
          width:MediaQuery.of(context).size.width,
          height:161.0,
          decoration:BoxDecoration(
              color:Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.grey,
                blurRadius: 3.0,
              ),]
          ),
          child:Column(
            children: [

              Container(
                width:MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  border:Border.all(width:0.01),
                  color:Colors.white,
                ),
                child:Material(
                  child: InkWell(
                    onTap: (){
                      print("Dark clicked");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Icon(Icons.arrow_right,color:Colors.black54,),
                          SizedBox(width:20.0,),
                          Text('Dark Mode',style:TextStyle(fontWeight:FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                width:MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  border:Border.all(width:0.01),
                  color:Colors.white,
                ),
                child:Material(
                  child: InkWell(
                    onTap: (){
                      print("Account clicked");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Icon(Icons.arrow_right,color:Colors.black54,),
                          SizedBox(width:20.0,),
                          Text('Account Setting',style:TextStyle(fontWeight:FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                width:MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  border:Border.all(width:0.01),
                  color:Colors.white,
                ),
                child:Material(
                  child: InkWell(
                    onTap: (){
                      print("Notification clicked");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Icon(Icons.arrow_right,color:Colors.black54,),
                          SizedBox(width:20.0,),
                          Text('Notification Setting',style:TextStyle(fontWeight:FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                width:MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  border:Border.all(width:0.01),
                  color:Colors.white,
                ),
                child:Material(
                  child: InkWell(
                    onTap: (){
                      print("Language clicked");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Icon(Icons.arrow_right,color:Colors.black54,),
                          SizedBox(width:20.0,),
                          Text('Language Setting',style:TextStyle(fontWeight:FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),

        SizedBox(height:10.0,),

        Flexible(
          child: Container(
            width:MediaQuery.of(context).size.width,
            decoration:BoxDecoration(
                color:Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0,
                ),]
            ),
            child:ListView(
              children: [
                
                Container(
                  width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    border:Border.all(width:0.01),
                    color:Colors.white,
                  ),
                  child:Material(
                    child: InkWell(
                      onTap: (){
                        print("Feedback clicked");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_right,color:Colors.black54,),
                            SizedBox(width:20.0,),
                            Text('Feedback',style:TextStyle(fontWeight:FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    border:Border.all(width:0.01),
                    color:Colors.white,
                  ),
                  child:Material(
                    child: InkWell(
                      onTap: (){
                        print("Review clicked");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_right,color:Colors.black54,),
                            SizedBox(width:20.0,),
                            Text('Review this App',style:TextStyle(fontWeight:FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    border:Border.all(width:0.01),
                    color:Colors.white,
                  ),
                  child:Material(
                    child: InkWell(
                      onTap: (){
                        print("Share clicked");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_right,color:Colors.black54,),
                            SizedBox(width:20.0,),
                            Text('Share this App',style:TextStyle(fontWeight:FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    border:Border.all(width:0.01),
                    color:Colors.white,
                  ),
                  child:Material(
                    child: InkWell(
                      onTap: (){
                        print("about clicked");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_right,color:Colors.black54,),
                            SizedBox(width:20.0,),
                            Text('About Indic Law',style:TextStyle(fontWeight:FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    border:Border.all(width:0.01),
                    color:Colors.white,
                  ),
                  child:Material(
                    child: InkWell(
                      onTap: (){
                        print("legal clicked");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_right,color:Colors.black54,),
                            SizedBox(width:20.0,),
                            Text('Legal',style:TextStyle(fontWeight:FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    border:Border.all(width:0.01),
                    color:Colors.white,
                  ),
                  child:Material(
                    child: InkWell(
                      onTap: (){
                        print("privacy clicked");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_right,color:Colors.black54,),
                            SizedBox(width:20.0,),
                            Text('Privacy and Policy',style:TextStyle(fontWeight:FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    border:Border.all(width:0.01),
                    color:Colors.white,
                  ),
                  child:Material(
                    child: InkWell(
                      onTap: (){
                        print("Logout clicked");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,top:8.0,bottom:8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Icon(Icons.input,color:Colors.black54,),
                            SizedBox(width:20.0,),
                            Text('Logout of this App',style:TextStyle(fontWeight:FontWeight.w600,color:Colors.red),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

      ],
    );
  }
}
