
import 'package:cte_assignment/display.dart';
import 'package:cte_assignment/intro_page.dart';
import 'package:flutter/material.dart';

class TimeZonePage extends StatelessWidget {
  const TimeZonePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/timezone.jpg", // your background
              fit: BoxFit.cover,
            ),
          ),


          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
              child: Center(
              child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(12),
    ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "World Timezones",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName:'America/New_York')),
                                  );
                                },
                               style: ElevatedButton.styleFrom(
                               backgroundColor: Color(0xFFEDE7F6),
                               foregroundColor: Color(0xFF009688),
    ),
                                child: Text('New York  '))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Europe/London',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('London'))
                        ),

                      ]
                  ),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Australia/Sydney',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Sydney'))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Asia/Singapore',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Singapore'))
                        ),
                      ]
                  ),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Asia/Kolkata',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Kolkata' ))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Asia/Hong_Kong',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Hong Kong'))
                        ),
                      ]
                  ),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        SizedBox(
                            height: 0.1*h, //
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Asia/Dubai',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Dubai'))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'America/Los_Angeles',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Los Angeles'))
                        ),
                      ]
                  ),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Europe/Berlin',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Berlin '))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Europe/Helsinki',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Helsinki '))
                        ),

                      ]
                  ),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Europe/Copenhagen',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Copenhagen  '))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Europe/Paris',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Paris'))
                        ),

                      ]
                  ),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Australia/Melbourne',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Melbourne '))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Asia/Riyadh',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Riyadh'))
                        ),

                      ]
                  ),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'America/Puerto_Rico',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Puerto Rico' ))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Africa/Sao_Tome',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Sao Tome'))
                        ),

                      ]
                  ),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Asia/Seoul',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Seoul '))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Pacific/Fiji',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Fiji'))
                        ),

                      ]
                  ),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Asia/Shanghai',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Shanghai'))
                        ),
                        SizedBox(
                            height: 0.1*h,
                            width: 0.4*w,
                            child:ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Display(locationName: 'Indian/Mauritius',)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  foregroundColor: Color(0xFF009688),
                                ),
                                child: Text('Mauritius'))
                        ),

                      ]
                  ),
                  const SizedBox(height: 25),
                   Center(
                    child: SizedBox(
                        height: 0.1 *h,
                        width: 0.3*w,
                        child:ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const IntroScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFEDE7F6),
                              foregroundColor: Color(0xFF009688),
                            ),
                            child: Text('Back'))
                    ),
    ),


                ],
              ),
            ),
          ),
    ),
    ))]
    ,
      ),
    );
  }

}

