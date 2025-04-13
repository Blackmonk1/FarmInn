import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';
import 'package:fooddelivery/screen/home.dart';
import 'package:fooddelivery/screen/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold( resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Image.asset('assets/images/shape7.png'),
          const Spacer(),
          Center(
            child: Column(
              children:  [
            Text(
              'Welcome to Farms Inn!', 
              style: GoogleFonts.ubuntu(
                  color:  Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600)
             ),
            const SizedBox(height: defaultPadding * 2),
Container(
  margin: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
  padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
  decoration: BoxDecoration(
    border: Border.all(width: 1, color: Colors.black54),
  ),
  child: const TextField(
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.email_outlined,
        color: Colors.black38,
        size: 25,
      ),
      border: InputBorder.none,
      hintText: 'Email Address',
      hintStyle: TextStyle(color: Colors.black54),
    ),
    style: TextStyle(color: Colors.black), // Added text style
  ),
),
const SizedBox(height: defaultPadding),
Container(
  margin: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
  padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
  decoration: BoxDecoration(
    border: Border.all(width: 1, color: Colors.black),
  ),
  child: const TextField(
    obscureText: true,
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.lock_outline,
        color: Colors.black54,
        size: 25,
      ),
      border: InputBorder.none,
      hintText: 'Password',
      hintStyle: TextStyle(color: Colors.black54),
    ),
    style: TextStyle(color: Colors.black), // Added text style
  ),
),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child:Row(
                children:[
                Checkbox(
                value: isChecked, 
                checkColor: Colors.white,
                activeColor: Colors.orange,
                side: const BorderSide(width: 1, color: Colors.orange),
                shape: const RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                   
                }),
                 Text(
              'Remember Me', 
              style: GoogleFonts.ubuntu(
                  color:  Colors.orange,
                  fontSize: 13,
                  fontWeight: FontWeight.w400)
             ),
              ]),
              ),
              
               const SizedBox(width: 5,),
                
              Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                    
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  onPressed:(){
                    Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
                  


                  },
                  child:
                  Text(
              'Login', 
              style: GoogleFonts.ubuntu(
                  color:  Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
                  
                  
             ), ),
              ),
              const SizedBox(height: defaultPadding,),
              RichText(text: TextSpan(
                text: "Need an Account?",
                style:  GoogleFonts.ubuntu(
                           color: Colors.black,
                           fontSize: 14,
                ),
                children:<TextSpan>[
                  TextSpan(
                   
                    text: "Register Here",
                    
                    style:  GoogleFonts.ubuntu(
                           color: Colors.black,
                           fontSize: 14,
                           fontWeight: FontWeight.w500),
                     recognizer: TapGestureRecognizer()
                     ..onTap= (){
                   Navigator.of(context).push(MaterialPageRoute(
                    builder:(context)=>const SignUp()));
                     }
                     )
                   ,
                ]

              )) 

               
                
              ])
           ,
        ),
        
          const Spacer(),
          
      ],
      ),
    ); 
  }
}
