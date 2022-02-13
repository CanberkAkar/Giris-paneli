import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoginScreenState();

}




class _LoginScreenState extends State<LoginScreen>{

  bool isRemember=false;

Widget buildEmail()
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
      'Email',
      style: TextStyle(
      color: Colors.white,
      fontSize:16,
      fontWeight:FontWeight.bold
      ),
      ),
      SizedBox(height: 10),
      Container
      (
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87)
            ,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff5ecfe4),
              ),
              hintText: 'EMAİL',
              hintStyle: TextStyle(
                color:Colors.black38
              )
            ),
          ),
  )
    ],
    
    );
}

Widget buildPassword()
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
      'ŞİFRE',
      style: TextStyle(
      color: Colors.white,
      fontSize:16,
      fontWeight:FontWeight.bold
      ),
      ),
      SizedBox(height: 10),
      Container
      (
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87)
            ,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xff5ecfe4),
              ),
              hintText: 'ŞİFRE',
              hintStyle: TextStyle(
                color:Colors.black38
              )
            ),
          ),
  )
    ],
    
    );
}

Widget buildDelPswBtn()
{
return Container(
  alignment: Alignment.centerRight,
  child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 12),
              primary: Colors.white
            ),
             onPressed: ()=> print("Forgot Password Pressed"), 
             child: const Text('ŞİFREMİ UNUTTUM'),
             
          ),
  );

}
  
 Widget buildRememberName(){

    return Container(
      height: 20,
      child: Row(
        children:<Widget>[
          Theme(data: ThemeData(unselectedWidgetColor: Colors.white), 
          child: Checkbox(
            value:isRemember,
            checkColor: Colors.blue,
            activeColor: Colors.white,
            onChanged: (value){
              setState(() {
                isRemember=value!;
              });
            }
          ),
          ),
          Text(
            'BENİ HATIRLA',
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
}


Widget buildLoginBtn()
{
   final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child:Column(children:[
    ElevatedButton(
     style: ElevatedButton.styleFrom(
       primary: Color(0xff5ecfe4),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(30)
         
       )
     ),
            onPressed: () {

            },
            child: const Text('GİRİŞ YAP'),
             
    ),
    
    ], 
  ),
  );
}
  
Widget buildSingUpBtn()
{
  return GestureDetector(
    onTap: ()=> print("Sing Up Pressed"),
    child: RichText(
      text:TextSpan(
        children: [
          TextSpan(
            text: 'HESABINIZ YOK MU? ',
            style: TextStyle(
              color:Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
          ),
          TextSpan(
            text: 'KAYIT OL',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
              )
          )
        ]

      ),),
  );
}  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AnnotatedRegion<SystemUiOverlayStyle>
      (
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child:Stack(
            children: <Widget>
            [
             Container(
               height: double.infinity,
               width: double.infinity,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,
                   colors: [
                     Color(0x665ecfe4),
                     Color(0x995ecfe4),
                     Color(0xff5ecfe4),
                     Color(0xff5ecfe4),
                   ]
                 )
               ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal:25,
                  vertical: 120 
                ),
                 child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text(
                     'GİRİŞ',
                     style: TextStyle(                      
                       color: Colors.white,
                       fontSize: 40,
                       fontWeight: FontWeight.bold),
                   ),
                   SizedBox(height: 50),
                   buildEmail(),
                   SizedBox(height: 15),
                   buildPassword(),
                   buildDelPswBtn(),
                   buildRememberName(),
                   buildLoginBtn(),
                   buildSingUpBtn()   
                 ],
                 ),
               ),
               ),            
            ],
          ) ,
          ),   
        ),
    );
  }

}