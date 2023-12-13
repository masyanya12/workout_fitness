import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../common/color_extension.dart';
import '../../common_widget/response_row.dart';

class YogaView extends StatefulWidget {
  const YogaView({super.key});

  @override
  State<YogaView> createState() => _YogaViewState();
}

class _YogaViewState extends State<YogaView> {
  List workArr = [
    {"name": "Бег", "image": "assets/img/1.png"},
    {"name": "Прыжки", "image": "assets/img/2.png"},
    {
      "name": "Планка",
      "image": "assets/img/5.png",
    },
    {
      "name": "Приседания",
      "image": "assets/img/3.png",
    },
  ];

  List responseArr = [
    {
      "name": "Dmitriy Krug",
      "time": "09 дней назад",
      "image": "assets/img/u4.png",
      "message": "Очень сильно, пресс горит, советую"
    },
    {
      "name": "Max Filatov",
      "time": "11 days ago",
      "image": "assets/img/u1.png",
      "message": "Спасибо за тренировку, делаю перед работой"
    },
    {
      "name": "Ksenia Rehab",
      "time": "12 дней назад",
      "image": "assets/img/u3.png",
      "message": "Добавьте пожалуйста упражнения на спину"
    },
    {
      "name": "Max Filatov",
      "time": "19 дней назад",
      "image": "assets/img/u1.png",
      "message": "Мне всё очень понравилось!!!"
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
          "Йога",
          style: TextStyle(
              color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
       
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/img/1.png",
              width: media.width,
              height: media.width * 0.55,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IgnorePointer(
                    ignoring: true,
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: TColor.primary,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/like.png",
                        width: 20,
                        height: 20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/share.png",
                        width: 20,
                        height: 20,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "Что это?",
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
              child: Text("Йога популярна среди тех, кто не только следит за здоровьем тела, но и стремиться к внутренней гармонии. Эта древняя практика основана на сочетании физического и духовного развития. Все, кто занимаются йогой регулярно, отмечают, что тело становится сильным и гибким, разум успокаивается, мысли приходят в порядок. Улучшение самочувствия, ощущение покоя, позитивный настрой — это лишь малая часть положительных результатов, которые дают занятия йогой.", style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 16),),
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
