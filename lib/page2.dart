import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profile'),
        backgroundColor: const Color.fromRGBO(255, 228, 231, 1),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background1.jpeg'),  // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Scrollable content on top of the background image
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/profildiri6.jpg'),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Nia Aulia',  // Updated name
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(223, 240, 173, 196),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Card(
                  color: const Color.fromRGBO(255, 228, 231, 1).withOpacity(0.9),  // Added slight transparency for better readability
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Hello! My name is Nia Aulia, usually called Nia, I am currently studying at SMK Wikrama Bogor, majoring in PPLG.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  color: const Color.fromRGBO(255, 228, 231, 1).withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'History',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'I became interested in programming when I studied programming languages ​​at school. Since then, I have studied programming more deeply and continue to hone my skills in this field.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 4,  // Optional: for shadow
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 228, 231, 1).withOpacity(0.9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          'Skill',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text('UI/UX Design', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 8),
                            Text('HTML', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 8),
                            Text('CSS', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 8),
                            Text('Javascript', style: TextStyle(fontSize: 16)),
                            SizedBox(height: 8),
                            Text('PHP', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
