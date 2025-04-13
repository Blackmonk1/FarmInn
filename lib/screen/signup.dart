import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';
import 'package:fooddelivery/screen/home.dart';
import 'package:fooddelivery/screen/login.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold( resizeToAvoidBottomInset: false,
      body: Column(
        children: [
        Stack(
          children: [
            Image.asset('assets/images/shape7.png'),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: defaultPadding*2,right: defaultPadding ,),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>const Home()));
                  },
                  child: Text(
                  'Skip', 
                  style: GoogleFonts.ubuntu(
                      color:  Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)
                               ),
                ),
              ), 
            )
          ],
        ),
       Center(
            child: Column(
              children:  [
            Text(
              'Welcome, Create your Account', 
              style: GoogleFonts.ubuntu(
                  color:  Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600)
             ), //BlackMonk was here
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
        Icons.person_outline,
        color: Colors.black,
        size: 25,
      ),
      border: InputBorder.none,
      hintText: 'User ID',
      hintStyle: TextStyle(color: Colors.black54),
    ),
    style: TextStyle(color: Colors.black), // Added text style
  ),
),

              const SizedBox(height:defaultPadding,
              ),
              Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding*2),
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
                child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: SizedBox(
                    height: 10,
                    width: 10,
                    child: Align(
                   alignment: Alignment.centerLeft,
                      child: Icon(Icons.email_outlined,
                      color: Colors.black,
                      size:25,),
                    )
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black54)
                ),
                 style: TextStyle(color: Colors.black), // Added text style
              )
              ),
              const SizedBox(height:defaultPadding,
              ),
              Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding*2),
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
                child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: SizedBox(
                    height: 10,
                    width: 10,
                    child: Align(
                   alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.phone_outlined,
                      color: Colors.black,
                      size:25,
                      ),
                    )
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Phone',
                  hintStyle: TextStyle(color: Colors.black54)
                ),
                 style: TextStyle(color: Colors.black), // Added text style
              )
              ),
              const SizedBox(height:defaultPadding,
              ),
              Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding*2),
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
                child: const TextField(
                  obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: SizedBox(
                    height: 10,
                    width: 10,
                    child: Align(
                   alignment: Alignment.centerLeft,
                      child: Icon(Icons.lock_outlined,
                      color: Colors.black,
                      size:25,),
                    )
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black54)
                ),
                 style: TextStyle(color: Colors.black), // Added text style
              )
              ),
              const SizedBox(
                height: defaultPadding,
              ),
               
                
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
                  MaterialPageRoute(builder: (context) => const Login()),
                );
                  
                  },
                  child:
                  Text(
              'Register', 
              style: GoogleFonts.ubuntu(
                  color:  Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
                ),
             ),
          ),
              const SizedBox(height: defaultPadding,),
              RichText(text: TextSpan(
                text: "Already got an account?",
                style:  GoogleFonts.ubuntu(
                           color: Colors.black,
                           fontSize: 14,
                ),
                children:<TextSpan>[
                  TextSpan(
                   
                    text: "Log In",
                    
                    style:  GoogleFonts.ubuntu(
                           color: Colors.black,
                           fontSize: 14,
                           fontWeight: FontWeight.w500),
                     recognizer: TapGestureRecognizer()
                     ..onTap= (){
                   Navigator.of(context).push(MaterialPageRoute(
                    builder:(context)=>const Login()));
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
