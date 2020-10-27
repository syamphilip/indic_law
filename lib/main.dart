import 'package:flutter/material.dart';
import 'package:indic_law/Screens/HomeScreen.dart';
import 'package:indic_law/Screens/accountScreen.dart';

void main() {
  runApp(MaterialApp(
    home:Home(),
    debugShowCheckedModeBanner:false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  int _currentIndex=0;

  colorHexConverter(String colorHexValue){
    String colorNew='0xff'+colorHexValue;
    colorNew=colorNew.replaceAll('#', '');
    int colorIntValue=int.parse(colorNew);
    return colorIntValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('INDIC LAW LOGO',style:TextStyle(fontWeight:FontWeight.w500),),
        backgroundColor:Color(colorHexConverter('#0e47a1')),
        actions: [
          IconButton(
            icon:Icon(Icons.more_vert,size:30.0),
            onPressed: ()=>null,
          )
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor:Color(colorHexConverter('#0e47a1')),
        type:BottomNavigationBarType.fixed,
        selectedItemColor:Colors.white,
        unselectedItemColor:Color(colorHexConverter('#c2cee4')),
        currentIndex:_currentIndex,
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title:Text('Home')
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.bookmark),
              title:Text('Bookmarks'),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.notifications),
            title:Text('Notification'),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.subject),
            title:Text('Account'),
          ),
        ],
        onTap:onTaped,
      ),

      body:screensOnTap(),

    );
  }
  void onTaped(int index){
    setState(() {
      _currentIndex=index;
      print(_currentIndex);
    });
  }
  Widget screensOnTap(){
    if(_currentIndex==0){
      return HomeScreen();
    }
    else if(_currentIndex==1){
      return Text('Screen Two');
    }

    else if(_currentIndex==2){
      return Text('Screen Three');
    }

    else{
      return accountScreen();
    }

    }
  }