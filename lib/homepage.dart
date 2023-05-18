import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35,),
              //Top BAR
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://media.istockphoto.com/id/1138644570/vector/shopping-cart-icon-design-cart-icon-symbol-design.jpg?s=612x612&w=0&k=20&c=_lTGkSkJ6ha8ZNiKD8XWVtLNyTjQ74HCu_c4WFio27g=',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Text(
                      'Shop Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                  //SizedBox(width: MediaQuery.of(context).size.width*0.3,),
                  const Spacer(flex: 3,),
                  const Text(
                      'Home',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(flex: 1,),
                  //SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  const Text(
                    'Products',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(flex: 1,),
                  //SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  const Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(flex: 1,),
                  //SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  const Text(
                    'FAQ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.search_rounded),
                  SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                  const Icon(Icons.shopping_cart),
                  const Spacer()
                ],
              ),
              const SizedBox(height: 35,),
              //Hero Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Texts
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.5 - 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Find Your Dream Sneakers',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        const Text(
                          'Find your shoe from various collections.',
                          style: TextStyle(
                              fontSize: 12,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        const SizedBox(height: 20,),
                        SizedBox(
                          height: 40,
                          width: 130,
                          child: ElevatedButton(
                              onPressed: (){},
                              child: const Text(
                                  'Explore More',
                                style: TextStyle(
                                  fontSize: 12
                                ),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                  //Image
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: ImageNetwork(
                          image: 'https://www.kindpng.com/picc/m/44-440309_nike-shoes-png-transparent-background-nike-shoes-png.png',
                          height: MediaQuery.of(context).size.height*0.55,
                          width: MediaQuery.of(context).size.width*0.45,
                          fitWeb: BoxFitWeb.cover,
                        ),
                      ),
                      //Product Title
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding:   EdgeInsets.all(8),
                            child: Text(
                              'Nike Air Jordan',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Discount
                      Positioned(
                        bottom: 20,
                        right: 60,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Column(
                              children: const [
                                Text(
                                  '25%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                  ),
                                ),
                                Text(
                                  'Discount',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
