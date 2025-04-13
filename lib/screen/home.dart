import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';
import 'package:fooddelivery/models/best_sellers_products.dart';
import 'package:fooddelivery/models/categories_icons.dart';
import 'package:fooddelivery/models/for_you_products.dart';
import 'package:fooddelivery/screen/product_details.dart';

import 'package:google_fonts/google_fonts.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;

@override
  void initState() {
    //  implement initState
    super.initState();
    _tabController =  TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                 Image.asset('assets/images/shape1.png'),
                 Padding(
                   padding: const EdgeInsets.only(top: defaultPadding*4,
                   left: defaultPadding,
                   ),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                    children: [
                      const Icon(
                        Icons.place_outlined, size: 40,),
                       Text(
                        'Ghana, Kumasi',
                       style: GoogleFonts.ubuntu(
                           fontSize: 18,
                           fontWeight: FontWeight.w600)
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: defaultPadding),
                              child: ClipOval(
                                child: SizedBox(
                                  height: 50,
                                  child: Image.asset('assets/images/unnamed.jpg'),
                                ),
                              ),
                            )
                     ],
                     ),
                     const SizedBox(
                      height: defaultPadding,),
                      Text(
                        'Hello, Customer',
                       style: GoogleFonts.ubuntu(
                           fontSize: 23,
                           fontWeight: FontWeight.w600)
                            ),
                   const SizedBox(
                      height: defaultPadding,
                      ),
                   Row(
                    children: [
                    Expanded(
                      child: 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                       height: 50,
                       padding:
                           const EdgeInsets.symmetric(horizontal: defaultPadding),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)) ),
                      child: const TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search_outlined,
                            color: Colors.black,
                          ),
                           hintText: 'Search ...',
                           hintStyle: TextStyle(
                                color: Colors.black54, 
                                fontSize: 14
                           )
                        ),
                        style: TextStyle(color: Colors.black), // Added text style
                      ),
                      ),
                    )),
                    const SizedBox(width: defaultPadding,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                           color: Colors.white,
                           borderRadius: 
                                BorderRadius.all(Radius.circular(10)) ),
                                child: Image.asset('assets/icons/settings.png',
                                scale: 20,
                                )
                                ),
                    )
                   ],
                   ),
                    const SizedBox(height: defaultPadding*2,
                   ),
                   SizedBox(
                    height: 120,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,  
                         padding: const EdgeInsets.all(0),                      
                         itemCount: demoCategories.length,
                         itemBuilder: (context,index){
                            return categories(demoCategories[index]);
                    }),
                   )
                   ],
                   ),
                 )
              ],
            ),
            const SizedBox(height: defaultPadding,
            ),
            Container(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: 
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Best Sellers', 
                  style: GoogleFonts.ubuntu(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Colors.black, ),
                  ),
                  SizedBox(height: defaultPadding,
                  ),
                  SizedBox(
                     
                    height:250,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: demoBestSellesProducts.length,
                      itemBuilder: (context,index){
                         return cardbestsellers(
                          context,demoBestSellesProducts[index]);
                    }),
                  ),
                  const SizedBox(height: defaultPadding*2,),
                  Text(
                  'For You', 
                  style: GoogleFonts.ubuntu(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Colors.black, ),
                  ),
                   const SizedBox(height: defaultPadding,
                  ),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView.builder(
                     scrollDirection: Axis.horizontal, 
                      itemCount: demoProductsForYou.length,
                      itemBuilder: (context,index){
                         return cardForYou(
                          context,demoProductsForYou[index]);
                    }),
                  ),
                  const SizedBox(height: defaultPadding,
                  ),
              ],),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding:  const EdgeInsets.all(defaultPadding),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)   
          ),
          color: Colors.white,
          elevation: 3,
          child: TabBar(
            labelColor: Colors.orangeAccent,
            unselectedLabelColor: Colors.black,
            controller: _tabController,
            indicator: const UnderlineTabIndicator(borderSide: BorderSide.none),
             onTap:(value){ },
            tabs: const [
              Icon(
                Icons.home_outlined, 
                size: 30,
                ),
              Icon(
                Icons.favorite_outline,
                 size: 30,),
              Icon(
                Icons.shopping_basket_outlined,
                 size: 30,
                 ),
              Icon(
                Icons.person_outline, 
                size: 30,
                ),
            ]

          ),
        )
      ),
    );
  }
Container cardForYou(
  BuildContext context,ProductsForYou productsForYou){
    return Container(
                      width: MediaQuery.of(context).size.width - 
                      defaultPadding*4,
                      margin: const EdgeInsets.only(right: defaultPadding),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('assets/images/shape2.png')),
                         Align(alignment: Alignment.topLeft,
                        child: Image.asset(
                          productsForYou.image,
                        scale: 2.5,
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: defaultPadding*2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              Text(
                                  productsForYou.category,
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                                    ),
                                     Text(
                                  productsForYou.title,
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: defaultPadding * 2,
                                      ),
                            ],),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: defaultPadding*3,right: defaultPadding*1.5),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.favorite_outline,
                              size: 40,),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(
                            bottom: defaultPadding* 1.5,right: defaultPadding*1.5),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                                  productsForYou.price,
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600),
                                    ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductDetails(
                                title: productsForYou.title,
                                price: productsForYou.price,
                                image: productsForYou.image,
                                category: productsForYou.category,

                              )));
                            },
                            child: Image.asset(
                              'assets/images/shape2.png',
                              color: Colors.transparent,
                              )),

                        )
                        ],
    ),
                     );
  }
  
  Container cardbestsellers(
    BuildContext context,BestSellesProducts BestSellesProducts){
    return Container(
                      width: MediaQuery.of(context).size.width - 
                      defaultPadding*4,
                      margin: const EdgeInsets.only(right: defaultPadding),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('assets/images/shape2.png')),
                         Align(alignment: Alignment.topLeft,
                        child: Image.asset(
                          BestSellesProducts.image,
                        scale: 2.5,
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: defaultPadding*2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              Text(
                                  BestSellesProducts.category,
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                                    ),
                                     Text(
                                  BestSellesProducts.title,
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: defaultPadding * 2,
                                      ),
                            ],),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: defaultPadding*3,right: defaultPadding*1.5),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.favorite_outline,
                              size: 40,),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(
                            bottom: defaultPadding* 1.5,right: defaultPadding*1.5),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                                  BestSellesProducts.price,
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600),
                                    ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductDetails(
                                title: BestSellesProducts.title,
                                price: BestSellesProducts.price,
                                image: BestSellesProducts.image,
                                category: BestSellesProducts.category,

                              )));
                            },
                            child: Image.asset(
                              'assets/images/shape2.png',
                              color: Colors.transparent,
                              )),

                        )
                        ],
                      ),
                     );
  }
 
  Padding categories(CategoriesIcons categoriesIcons) {
    return Padding(
          padding: const EdgeInsets.only(right: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
               ),
               child: Container(
                 height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                 child: Center(
                  child: Column(
                    children: [
                       const Spacer(),
                             SizedBox(
                              height: 50,
                              width: 50,
                               child: Image.asset(categoriesIcons.icon),
                               ),
                               Text(
                                categoriesIcons.title,
                                style: GoogleFonts.ubuntu(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),),
                                  const Spacer()
                                   ],), ),
          ), 
       ),
     );
  }
}