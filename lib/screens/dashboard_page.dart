import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: Column(
        children: [
          /// ================= HEADER =================
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF7F7FD5), Color(0xFF86A8E7)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                /// Top Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Colors.deepPurple),
                    ),
                    Text(
                      "20 Jan",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.group, color: Colors.deepPurple),
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                /// Greeting
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hi, Abuy",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "4 Task",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 18),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "+ Add Board",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          /// ================= BODY =================
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: Color(0xFFEFEFEF),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// My Team + Search
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "My Team",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        child: const Icon(Icons.search, color: Colors.white),
                      )
                    ],
                  ),

                  const SizedBox(height: 24),

                  /// List Project
                  Expanded(
                    child: ListView(
                      children: const [
                        ProjectCard(
                          title: "Project PKK",
                          desc:
                              "project game dari pa kisan mapel pkk\n"
                              "deadline akhir februari",
                        ),
                        SizedBox(height: 16),
                        ProjectCard(
                          title: "Project PBO",
                          desc:
                              "project aplikasi dari bu rina mapel pkk\n"
                              "deadline akhir februari",
                          isPrimary: true,
                        ),
                        SizedBox(height: 16),
                        ProjectCard(
                          title: "Drama Indonesia",
                          desc:
                              "Drama bumi manusia mapel indonesia\n"
                              "deadline akhir februari",
                        ),
                        SizedBox(height: 16),
                        ProjectCard(
                          title: "Project WEB",
                          desc:
                              "Project web atau latihan project ujikom\n"
                              "pelajaran pa gilag",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

/// ================= PROJECT CARD WIDGET =================
class ProjectCard extends StatelessWidget {
  final String title;
  final String desc;
  final bool isPrimary;

  const ProjectCard({
    super.key,
    required this.title,
    required this.desc,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: isPrimary
            ? const LinearGradient(
                colors: [Color(0xFF7F7FD5), Color(0xFF86A8E7)],
              )
            : null,
        color: isPrimary ? null : const Color(0xFFDADAF7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isPrimary ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            desc,
            style: TextStyle(
              fontSize: 16,
              color: isPrimary ? Colors.white70 : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
