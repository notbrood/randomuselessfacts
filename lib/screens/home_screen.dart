import 'package:colorful_background/colorful_background.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:randomuselessfacts/methods/get_quote.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ColorfulBackground(
        duration: const Duration(milliseconds: 5000),
        backgroundColors: const [
          Color(0xFF1B998B),
          Color(0xFF63458A),
          Color(0xFF660000),
          Color(0xFF92817A),
          Color(0xFF0353a4),
        ],
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            height: height,
            width: width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 0.05 * height,
                    ),
                    Text(
                      "GET RANDOM USELESS QUOTE",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: height * 0.05),
                    ),
                    SizedBox(
                      height: 0.01 * height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '❝',
                          style: TextStyle(
                              fontSize: height * 0.05, color: Colors.white),
                        ),
                      ],
                    ),
                    FutureBuilder(
                      future: getQuote(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasData) {
                            return SizedBox(
                                height: 0.25 * height,
                                child: Center(
                                  child: Text(snapshot.data!,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: height * 0.03),
                                      softWrap: true,
                                      overflow: TextOverflow.visible),
                                ));
                          } else {
                            SizedBox(
                                height: height * 0.25,
                                child: Center(
                                    child: Text("ERROR!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                            fontSize: height * 0.03))));
                          }
                        } else if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                              child: SizedBox(
                                  height: height * 0.25,
                                  child: LoadingAnimationWidget.inkDrop(
                                      color: const Color(0xFF1B998B),
                                      size: height * 0.15)));
                        }
                        return SizedBox(
                            height: height * 0.25,
                            child: Center(
                                child: Text("ERROR!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: height * 0.03))));
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '❞',
                          style: TextStyle(
                              fontSize: height * 0.05, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Text("Get random!"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF660000),
                          elevation: 0,
                          side: BorderSide(
                              color: Colors.white.withOpacity(0.5), width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.symmetric(horizontal: width*0.05),
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context){
              return ColorfulBackground(
                duration: const Duration(milliseconds: 5000),
                backgroundColors: const [
                  Color(0xFF1B998B),
                  Color(0xFF63458A),
                  Color(0xFF660000),
                  Color(0xFF92817A),
                  Color(0xFF0353a4),
                ],
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(15)),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
                        onPressed: (){
                          _launchURLBrowser("https://github.com/notbrood");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image.asset("images/git.png", height: height*0.05,),
                          const SizedBox(width: 20,),
                          const Text("notbrood", style: TextStyle(color: Colors.black, fontSize: 20),)
                        ],),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(15)),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
                        onPressed: (){
                          _launchURLBrowser("https://linkedin.com/in/ajain9926");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image.asset("images/linkedin.png", height: height*0.05,),
                          const SizedBox(width: 20,),
                          const Text("ajain9926", style: TextStyle(color: Colors.black, fontSize: 20),)
                        ],),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(15)),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
                        onPressed: (){
                          _launchURLBrowser("https://www.youtube.com/@Broood");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image.asset("images/yt.png", height: height*0.05,),
                          const SizedBox(width: 20,),
                          const Text("Broood", style: TextStyle(color: Colors.black, fontSize: 20),)
                        ],),
                      ),
                    ),
                  ],
                ),
              );
            });
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(width, height*0.05),
              backgroundColor: const Color(0xFF660000).withOpacity(0.5),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
          child: Text("Connect with the creator!", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: height * 0.025),),
        ),
      ),
    );
  }
  _launchURLBrowser(String uri) async {
    var url = Uri.parse(uri);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
