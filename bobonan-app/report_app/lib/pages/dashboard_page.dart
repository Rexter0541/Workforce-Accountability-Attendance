import 'package:flutter/material.dart';
import 'report_issue_page.dart';
import 'my_reports_page.dart';
import 'login_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Bobonan Community Report"),
        actions: [

          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );

            },
          )

        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [

                Expanded(
                  child: _card(
                    context,
                    "Report Issue",
                    Icons.report,
                    Colors.red,
                    const ReportIssuePage(),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: _card(
                    context,
                    "My Reports",
                    Icons.list,
                    Colors.blue,
                    const MyReportsPage(),
                  ),
                ),

              ],
            ),

            const SizedBox(height: 30),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Announcements",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Card(
              child: ListTile(
                leading: Icon(Icons.campaign),
                title: Text("Garbage Collection"),
                subtitle: Text("Garbage will be collected tomorrow."),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.campaign),
                title: Text("Community Meeting"),
                subtitle: Text("Barangay meeting this Friday."),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _card(
      BuildContext context,
      String title,
      IconData icon,
      Color color,
      Widget page) {

    return GestureDetector(
      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );

      },

      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              Icon(icon, size: 40, color: color),

              const SizedBox(height: 10),

              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )

            ],
          ),
        ),
      ),
    );
  }
}