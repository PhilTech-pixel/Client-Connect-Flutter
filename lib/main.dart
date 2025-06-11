import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Client Connect',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Client Connect',
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.deepPurple,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.deepPurple, size: 30),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.deepPurple,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.deepPurple,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.deepPurple.shade50],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 32),
                Text(
                  'Welcome to Client Connect',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    letterSpacing: 1.1,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  'Find trusted professionals for every need',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurple.shade300,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                // Service icons row 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _serviceCard(
                      icon: Icons.plumbing_outlined,
                      color: Colors.lightBlue,
                      label: 'Plumbing',
                    ),
                    _serviceCard(
                      icon: Icons.engineering_outlined,
                      color: Colors.amber,
                      label: 'Engineering',
                    ),
                    _serviceCard(
                      icon: Icons.electrical_services_outlined,
                      color: Colors.deepPurple,
                      label: 'Electrical',
                    ),
                  ],
                ),
                // Service icons row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _serviceCard(
                      icon: Icons.construction_outlined,
                      color: Colors.redAccent,
                      label: 'Construction',
                    ),
                    _serviceCard(
                      icon: Icons.brush_outlined,
                      color: Colors.brown,
                      label: 'Painting',
                    ),
                    _serviceCard(
                      icon: Icons.car_repair_outlined,
                      color: Colors.green,
                      label: 'Car Repair',
                    ),
                  ],
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 6,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Our Services',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                _infoCard(
                  'Client Connect is your one-stop solution for all service needs. From plumbing to electrical work, we connect you with the best professionals in your area.',
                ),
                _infoCard(
                  'Whether you need a quick repair or a major installation, our platform makes it easy to find and book trusted service providers. Experience convenience and quality with Client Connect.',
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _serviceCard({
  required IconData icon,
  required Color color,
  required String label,
}) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: 100,
    height: 120,
    decoration: BoxDecoration(
      color: color.withOpacity(0.15),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: color.withOpacity(0.2),
          blurRadius: 12,
          offset: Offset(0, 6),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 28,
          child: Icon(icon, size: 32, color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(
            color: color.darken(0.2),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    ),
  );
}

Widget _infoCard(String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.deepPurple.withOpacity(0.08),
          blurRadius: 16,
          offset: Offset(0, 8),
        ),
      ],
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.4),
      textAlign: TextAlign.center,
    ),
  );
}

// Extension to darken a color
extension ColorBrightness on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }
}
