import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../common/color_extension.dart';
import '../../common_widget/border_button.dart';

class WeightView extends StatefulWidget {
  const WeightView({super.key});

  @override
  State<WeightView> createState() => _WeightViewState();
}

class _WeightViewState extends State<WeightView> {
  List myWeightArr = [
    {"name": "Сб, 02 дек", "image": "assets/img/i1.jpg"},
    {"name": "Ср, 06 дек", "image": "assets/img/i2.jpg"},
    {
      "name": "Вс, 10 дек",
      "image": "assets/img/i3.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/img/black_white.png",
              width: 25,
              height: 25,
            )),
        title: Text(
          "Ваш прогресс",
          style: TextStyle(
              color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: BorderButton(
                        title: "Прогресс",
                        type: BorderButtonType.inactive,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: BorderButton(
                        title: "Мой вес",
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "Добавьте фото, чтобы видеть изменения",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                width: media.width,
                height: media.width * 0.9,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 0.5,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      viewportFraction: 0.65,
                      enlargeFactor: 0.4,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                  itemCount: myWeightArr.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int index) {
                    var dObj = myWeightArr[index] as Map? ?? {};
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          color: TColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(0, 2)),
                          ]),
                      child: 
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(dObj["image"].toString(),
                                width: double.maxFinite,
                                height: double.maxFinite,
                                fit: BoxFit.cover),
                          ),
                         
                       
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/img/black_fo.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Вс, 10 дек",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/img/next_go.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),

            Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        width: 160,
        decoration: BoxDecoration(
            border: Border.all(color:  TColor.gray.withOpacity(0.5), width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
         "50 kg",
          textAlign: TextAlign.center,
          style: TextStyle(color:  TColor.primary , fontSize: 24, fontWeight: FontWeight.w700 ),
        ),
      ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "Нормальный вес - это не только показатель стройности, красоты, но и важная цифра здоровья. Единого показателя веса для всех нет, у каждого человека эта цифра своя. Вес зависит от наследственной предрасположенности, возраста, пола, образа жизни, пищевых привычек, качества сна, работы.",
                style: TextStyle(color: TColor.secondaryText, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_running.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_meal_plan.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_home.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_weight.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child:
                    Image.asset("assets/img/more.png", width: 25, height: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
