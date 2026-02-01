import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'আনিছ ডিলার',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Container(
            color: const Color.fromARGB(255, 138, 137, 130),
            height: 48.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text('Infinix Gazipur Showroom'),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      InfoCard(title: 'ব্যালেন্স', value: '1,50,000৳'),
                      InfoCard(title: 'আজকের বিক্রি', value: '1,50,000 ৳'),
                      InfoCard(title: 'দিন', value: 'মাস'),
                      InfoCard(title: 'আজকের ব্যয়', value: '1,50,000 ৳'),
                      InfoCard(title: 'বাকি দিয়েছি', value: '1,52,000 ৳'),
                      InfoCard(title: 'স্টক সংখ্যা', value: '1,617'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              // Image.asset('assets/banner.png'),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Icon(Icons.shopping_cart),
                            const SizedBox(height: 8.0),
                            Text('Add Stock', style: GoogleFonts.openSans()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Icon(Icons.sell),
                            const SizedBox(height: 8.0),
                            Text(
                              'বেচা/Distribution',
                              style: GoogleFonts.openSans(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                'খাতা সমূহ',
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      FeatureCard(icon: Icons.list_alt, label: 'কেনার খাতা'),
                      FeatureCard(icon: Icons.calculate, label: 'বেচার খাতা'),
                      FeatureCard(icon: Icons.receipt, label: 'বাকির খাতা'),
                      FeatureCard(icon: Icons.money_off, label: 'খরচের খাতা'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'আপনার ব্যবসার জন্য',
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      FeatureCard(icon: Icons.group, label: 'কাষ্টমার'),
                      FeatureCard(
                        icon: Icons.inventory,
                        label: 'প্রোডাক্ট লিস্ট',
                      ),
                      FeatureCard(
                        icon: Icons.assessment,
                        label: 'স্টকের হিসাব',
                      ),
                      FeatureCard(icon: Icons.report, label: 'ব্যবসার রিপোর্ট'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'ষ্টক'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'হোম'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'বিক্রি',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        const SizedBox(height: 4.0),
        Text(value, style: GoogleFonts.openSans(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 32.0),
        const SizedBox(height: 8.0),
        Text(label, textAlign: TextAlign.center, style: GoogleFonts.openSans()),
      ],
    );
  }
}
