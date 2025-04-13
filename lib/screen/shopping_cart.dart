import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';
import 'package:fooddelivery/models/cart_products.dart';
import 'package:fooddelivery/screen/home.dart';
import 'package:fooddelivery/screen/thank_you.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
             padding: const EdgeInsets.only(top: defaultPadding*4,left: defaultPadding),
             child: InkWell(
                 onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>const Home()));   
                   },
                            child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.black,
                                   size: 20
                     ),
                    ),
           ),
           const SizedBox(height: defaultPadding,),
           Padding(
             padding: const EdgeInsets.only(left: defaultPadding), 
             child: Text(
              'My Cart',
              style: GoogleFonts.ubuntu(
              color: Colors.black,
              fontSize:26,
              fontWeight: FontWeight.w600
             ),),
           ),
           const SizedBox(height: defaultPadding,
           ),
           Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding*2),
              child: SizedBox(
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: defaultPadding*10),
               itemCount: demoCartProducts.length,
                itemBuilder:(context,index){
                   return CardCart(demoCartProducts[index]);
                }
              
              ) 
              ,),
            ),
           ),
           
                           
                          
        ],),
        bottomNavigationBar: Stack(
          alignment: Alignment.bottomCenter,
          children: [
          Image.asset('assets/images/shape11.png'),
          Expanded(child: Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, 
            vertical:defaultPadding),
            child: Column(children: [
              Row(children: [
                SizedBox(
                  height: 15,
                  width: 15,
                  child: Image.asset('assets/icons/coupons.png',
                  color: Colors.white)
                ),
                const SizedBox(width: 10,),
                RichText(
                  text: TextSpan(
                  text: 'Do you have a coupon?',
                  style: GoogleFonts.ubuntu(  fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text:'apply',
                      style: GoogleFonts.ubuntu(
                      color: Colors.black, fontSize: 14)
                    )
                  ]
                ))
              ],
              ),
              const SizedBox(height: defaultPadding*2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                  'SubTotal:',
                style:
                 GoogleFonts.ubuntu(color: Colors.white, fontSize: 16)
                      ),
                Text(
                  '100 Cedis',
                style:
                 GoogleFonts.ubuntu(color: Colors.white, fontSize: 16)
                 ),
                ],
              ),
              const SizedBox(height: defaultPadding,),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                  'Tax:',
                style:
                 GoogleFonts.ubuntu(color: Colors.white, fontSize: 16)
                      ),
                Text(
                  '15 Cedis',
                style:
                 GoogleFonts.ubuntu(color: Colors.white, fontSize: 16)
                 ),
                ],
              ),
              const SizedBox(height: defaultPadding,),
              const SizedBox(height: defaultPadding), // Add some space before the button
                        Container(
                          color: Colors.red.withOpacity(0.1), // Debugging background color
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '115 Cedis',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 200,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.white,
                                    padding: const EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  onPressed:(){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ThankYou()));
                                  }, 
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(width: defaultPadding),
                                      Text(
                                        'Comfirm Order',
                                        style: GoogleFonts.ubuntu(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
              ],
             ),
           )
          )
        ],
      ) ,
     );
    }

  Container CardCart(CartProducts cartProducts) {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultPadding),
      child: Stack(
        alignment: Alignment.center,
        children: [
        Image.asset('assets/images/shape10.png'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Image.asset(cartProducts.image),
            ),
            const SizedBox(width: defaultPadding*2,),
            Expanded(
              child: Container(
                child:  Column(
              children: [
              Text(
                cartProducts.title,
                style: GoogleFonts.ubuntu(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 10,
                  ),
                  Text(
                cartProducts.price,
                style: GoogleFonts.ubuntu(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: defaultPadding,
                ),   
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              child: Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFFECEEED),
                                    padding: const EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  onPressed: (){},
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Color(0xFFECEEED),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Colors.orange,
                                  padding: const EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: (){},
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
            ],
            ),
            )
            )

          ],
        )
      ],
      ),
    );
  } 
}