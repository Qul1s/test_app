import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/map.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.white,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.1,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width*0.54,
            left: MediaQuery.of(context).size.width*0.05,
            bottom: MediaQuery.of(context).size.height*0.02
          ),
          color: Colors.green.shade600,
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu, color: Colors.white, size: 30),
              Text("Инватакси",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),)
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.23,
          width: MediaQuery.of(context).size.width,
          child: map(17.0)
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.67,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*0.05,
                  top: MediaQuery.of(context).size.height*0.02
                ),
                height: MediaQuery.of(context).size.height*0.32,
                width: MediaQuery.of(context).size.width*0.75,
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.23,
                          width: MediaQuery.of(context).size.width*0.004,
                          color: Colors.grey.shade700,
                        ),
                        SizedBox(
                        height: MediaQuery.of(context).size.height*0.23,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            pointCircle(Colors.green.shade700),
                            pointCircle(Colors.red),
                            pointCircle(Colors.red),
                            pointCircle(Colors.red),
                          ],
                        ))
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*0.26,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            pointLetter(Colors.green.shade700, "A", "откуда"),
                            pointLetter(Colors.red, "Б", "через"),
                            pointLetter(Colors.red, "В", "через"),
                            pointLetter(Colors.red, "Г", "куда"),
                          ],
                        )
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*0.26,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            pointText("Гумара Карамаша", "33/2", "г.Уральск"),
                            pointText("Достык-Дружбы", "29", "г.Уральск"),
                            pointText("проспект Евразия", "49", "г.Уральск"),
                            pointText("Курмангазы", "175", "г.Уральск"),
                          ],
                        )
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03),
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*0.06,
                  top: MediaQuery.of(context).size.height*0.015),
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.88,
                decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconText(Icons.phone, "Звонок водителю"),
                    Container(
                      color: Colors.grey.shade300,
                      height: MediaQuery.of(context).size.height*0.04,
                      width: MediaQuery.of(context).size.width*0.003,
                    ),
                    iconText(Icons.phone, "Звонок диспетчеру"),
                ])
              ),
                Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.88,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.06,
                    top: MediaQuery.of(context).size.height*0.015),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      button(Colors.green.shade800, Icons.message, " Чат с водителем"),
                      button(Colors.red, Icons.not_interested_rounded, "Отказаться"),
                  ]
                )),
                Container(
                  height: MediaQuery.of(context).size.height*0.02,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.shade200,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),
                  child: Text("О поездке", 
                              style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500
                              )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.01,
                    left: MediaQuery.of(context).size.width*0.05),
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    infoField(Icons.watch_later, "Время подачи", "12.02.2020 17:00"),
                    infoField(Icons.cases_rounded, "Количество багажа", "2 сумки"),
                    infoField(Icons.wheelchair_pickup_outlined, "Группа инвалдиности", "1 группа")
                  ],)
                ),
                SizedBox(
                  height:  MediaQuery.of(context).size.height*0.02,
              )])))
      ],
      
    )
   );
  }

    Widget infoField(icon, theme, text){
      return Container(
        height: MediaQuery.of(context).size.height*0.06,
         alignment: Alignment.centerLeft,
         child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Icon(icon, color: Colors.green.shade700, size: 25),
                    Container(
                        margin: EdgeInsets.only(
                          top:MediaQuery.of(context).size.height*0.005, 
                          left: MediaQuery.of(context).size.width*0.03), 
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(theme, style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.green.shade700,
                            fontWeight: FontWeight.w600
                          )),
                      Text(text, style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ))
                        ]))
                  ]));
    }

    Widget button(color, icon, text){
      return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width*0.42,
        height: MediaQuery.of(context).size.height*0.06,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
        child: iconText(icon, text)
      );
    }

    Widget iconText(icon, text){
      return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width*0.38,
        height: MediaQuery.of(context).size.height*0.04,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Icon(icon, color: Colors.white, size: 22),
        Text(text, style: GoogleFonts.montserrat(
                    fontSize: 13,
                    letterSpacing: -0.4,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),)
      ],));
    }

  

     Widget pointCircle(color){
        return Container(
          height: MediaQuery.of(context).size.width*0.025,
          width: MediaQuery.of(context).size.width*0.025,
          decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: color,
                      border: Border.all(
                        color: Colors.black,
                        width: 1
                      ))            
        );
      }

   Widget pointLetter(color, letter, method){
        return SizedBox(
          height: MediaQuery.of(context).size.height*0.045,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: letter,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: color,
                        fontWeight: FontWeight.w600
                      )),
              TextSpan(text: "\n$method", 
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: color,
                        fontWeight: FontWeight.w500
                      )),      
            ]
          ))           
        );
      }

      Widget pointText(street, building, city){
        return Container(
          height: MediaQuery.of(context).size.height*0.045,
          width: MediaQuery.of(context).size.width*0.5,
          alignment: Alignment.centerLeft,
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "$street $building",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      )),
              TextSpan(text: "\n$city", 
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500
                      )),      
            ]
          ))           
        );
      }
    
}