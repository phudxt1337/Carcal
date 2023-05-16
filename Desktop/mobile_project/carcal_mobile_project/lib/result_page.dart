import 'package:carcal_mobile_project/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  final double totalCarbonTons;

  const ResultPage({Key? key, required this.totalCarbonTons}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late String grade;
  late String content;
  late String recommendation;

  @override
  void initState() {
    super.initState();

    if (widget.totalCarbonTons < 40) {
      grade = 'A';
      content = 'Excellent - The user has a very low carbon footprint and is making a significant effort to reduce their impact on the environment.';
      recommendation =
          "Congratulations! Your carbon footprint is very low, and you're making a positive impact on the environment. Keep up the great work!";
    } else if (widget.totalCarbonTons < 70) {
      grade = 'B';
      content = 'Good - The user has a relatively low carbon footprint and is making some effort to reduce their impact on the environment.';
      recommendation =
          "Good job! Your carbon footprint is relatively low, but there's always room for improvement.";
    } else if (widget.totalCarbonTons < 100) {
      grade = 'C';
      content = 'Average - The user has an average carbon footprint and could make some changes to reduce their impact on the environment.';
      recommendation =
          "Your carbon footprint is average, but there are some changes you can make to reduce your impact on the environment.";
    } else if (widget.totalCarbonTons < 140) {
      grade = 'D';
      content = 'Poor - The user has a relatively high carbon footprint and needs to make significant changes to reduce their impact on the environment.';
      recommendation =
          "Your carbon footprint is relatively high, and you need to make significant changes to reduce your impact on the environment.";
    } else {
      grade = 'F';
      content = 'Very poor - The user has a very high carbon footprint and needs to make immediate and significant changes to reduce their impact on the environment.';
      recommendation =
          "Your carbon footprint is very high, and you need to take immediate and significant action to reduce your impact on the environment.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Result',
          style: TextStyle(
            color: Color(0xFF2D6936),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF2D6936),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Grade ${grade}',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '${widget.totalCarbonTons} metric ton',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF2D6936),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              content,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Recommendation',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5),
            Text(
              recommendation,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 20.0,
                  ),
                  child: Text(
                    'Go to home page',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF5D8262),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
