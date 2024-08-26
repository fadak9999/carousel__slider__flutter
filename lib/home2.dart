import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  //!

  final List<Widget> sliderItems = [
    Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 209, 54),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Center(
        child: Text(
          'Slide 1',
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
    ),
    Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 121, 5, 184),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Center(
        child: Text(
          'Slide 2',
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
    ),
    Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 162, 162, 162),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Center(
        child: Text(
          'Slide 3',
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
    ),
  ];

  //!
  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Carousel Slider'),
        ),
        body: CarouselSlider(
          //اعدادات الشريط 
          options: CarouselOptions(
            height: 400.0,
            enlargeCenterPage: true,//جعل الصفحة المركزية أكبر من الصفحات الأخرى، مما يبرزها بشكل ملحوظ.
            autoPlay: true,//يقوم بتشغيل الشرائح تلقائيًا بدون تدخل المستخدم.
            aspectRatio: 16 / 9,//يحدد نسبة العرض إلى الارتفاع لشريط التمرير. 
            autoPlayCurve: Curves.fastOutSlowIn,//يحدد منحنى الرسوم المتحركة لتأثير الانتقال بين الشرائح.
            //  Curves.fastOutSlowInيجعل الحركة تبدأ بسرعة ثم تتباطأ تدريجيًا.
            enableInfiniteScroll: true,//يسمح بالتدوير اللانهائي، حيث يمكن الانتقال من الشريحة الأخيرة إلى الشريحة الأولى والعكس.
            autoPlayAnimationDuration: const Duration(milliseconds: 800),//يحدد مدة الرسوم المتحركة عند الانتقال التلقائي بين الشرائح بـ 800 مللي ثانية.
            viewportFraction: 0.8//,يحدد نسبة العرض من كل شريحة التي تكون مرئية في عرض شريط التمرير. قيمة 0.8 تعني أن 80% من الشريحة ستكون مرئية، بينما 20% من الشريحة المجاورة ستكون مرئية أيضًا.
          ),
          items: sliderItems,
        ),
      ),
    );
  }
}
///////////////////////////////////////////////////
