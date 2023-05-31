import 'package:ecommerce/custom_products/custom_class/custom_categories.dart';
import 'package:ecommerce/decoration/project_fonts/myfonts.dart';
import 'package:flutter/material.dart';

import '../custom_products/products/products.dart';
import '../widgets/bottom_nav_bar_widget.dart';
import '../widgets/my_floating_action_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
bool paintFavoriteIcon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const MyFloatingActionButton(),
      bottomNavigationBar: bottomNavigationBarNew,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20),

        /// #main column
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                  ),
                  child: Image(
                    image: AssetImage("assets/icons/ic_search.png"),
                    width: 42,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Image(
                    image: AssetImage("assets/icons/ic_notification.png"),
                    width: 52,
                  ),
                ),
              ],
            ),

            /// main image and container
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Image(
                  image: AssetImage("assets/images/img_main_image.png")),
            ),
            Text(
              "Popular Category",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: MyProjectFonts.robotoBold,
                height: 3,
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < categories.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7.5),
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          backgroundColor:
                              selected == i ? Colors.pink : Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            selected = i;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(categories[i].iconPath),
                              color:  selected == i ? Colors.white : Colors.black,
                              width: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              categories[i].categoryName,
                              style: TextStyle(
                                color:
                                    selected == i ? Colors.white : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyProjectFonts.robotoMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SizedBox(
                height: 330,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    for (int i = 0; i < products.length; i++)
                      Container(
                        height: 160,
                        margin: const EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFFFFFFF)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Product Container and image
                              Container(
                                height: 135,
                                width: 125,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFFFDF0F3)),
                                child: Image(
                                  image: AssetImage(products[i].imagePath),
                                ),
                              ),

                              const SizedBox(
                                width: 10,
                              ),

                              SizedBox(
                                height: 135,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    /// Name and favorite
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          products[i].title,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            paintFavoriteIcon =! paintFavoriteIcon;
                                            setState(() {

                                            });
                                          },
                                          child:  Icon(
                                            Icons.favorite,
                                            color: paintFavoriteIcon ? Colors.red : Colors.grey,
                                          ),
                                        )
                                      ],
                                    ),

                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height: 60,
                                      child: Text(
                                        products[i].description,
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          products[i].price,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.red),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 15),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.red,
                                            ),
                                            child: const Text(
                                              'Buy',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
