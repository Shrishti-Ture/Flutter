import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:cte_assignment/timezone.dart';

class Display extends StatefulWidget {
  final String locationName;

  const Display({super.key, required this.locationName});

  @override
  State<Display> createState() => DisplayState();
}

class DisplayState extends State<Display> {
  late String locationName;
  String _currentImage = 'images/dark1.jpg';
  Timer? timer;

  @override
  void initState() {
    super.initState();
    locationName = widget.locationName;
    updateImage();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        updateImage();
      });
    });
  }

  @override
  void didUpdateWidget(covariant Display oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.locationName != widget.locationName) {
      locationName = widget.locationName;
      updateImage();
      setState(() {});
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  DateTime getTime() {
    final location = tz.getLocation(locationName);
    return tz.TZDateTime.now(location);
  }

  void updateImage() {
    int hour = getTime().hour;
    String newImage='images/light2.jpg';
    if(hour>=6 && hour<=16){
      newImage='images/light2.jpg';
    }
    else if(hour>16&& hour<=19){
      newImage='images/sunset1.jpg';
    }
    else{
      newImage='images/dark2.jpg';

    }

    if (newImage != _currentImage) {
      _currentImage = newImage;
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    final currentTime = getTime();
    final formattedTime = DateFormat("HH:mm:ss").format(currentTime);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Smooth image transition
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: Container(
              key: ValueKey(_currentImage),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_currentImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Digital Clock Display
          Center(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.locationName,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    formattedTime,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                      height: 0.1*h, // Example size for parent container
                      width: 0.3*w,
                      child:ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TimeZonePage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE0E5EC), // Background color of the button
                            foregroundColor: Color(0xFF333333), // Text and icon color
                          ),
                          child: Text('Back '))
                  ),

                ],

              ),
            ),
          ),

        ],
      ),
    );
  }
}
