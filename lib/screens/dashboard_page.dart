import 'package:flutter/material.dart';
import 'account_page.dart';
import 'board_detail_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() =>
      _DashboardPageState();
}

class _DashboardPageState
    extends State<DashboardPage> {
        final TextEditingController
      boardNameController =
      TextEditingController();

  final TextEditingController
      boardDescController =
      TextEditingController();

  void showAddBoardDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(25),
          ),
          child: Container(
            padding:
                const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color:
                  const Color(0xFFDADAF7),
              borderRadius:
                  BorderRadius.circular(
                      25),
            ),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min,
              children: [

                const Text(
                  "Create Board",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight:
                        FontWeight.bold,
                    color:
                        Colors.deepPurple,
                  ),
                ),

                const SizedBox(
                    height: 20),

                TextField(
                  controller:
                      boardNameController,
                  decoration:
                      InputDecoration(
                    hintText: "Name",
                    filled: true,
                    fillColor:
                        Colors.white,
                    border:
                        OutlineInputBorder(
                      borderRadius:
                          BorderRadius
                              .circular(
                                  15),
                    ),
                  ),
                ),

                const SizedBox(
                    height: 15),

                TextField(
                  controller:
                      boardDescController,
                  maxLines: 3,
                  decoration:
                      InputDecoration(
                    hintText:
                        "Board Description",
                    filled: true,
                    fillColor:
                        Colors.white,
                    border:
                        OutlineInputBorder(
                      borderRadius:
                          BorderRadius
                              .circular(
                                  15),
                    ),
                  ),
                ),

                const SizedBox(
                    height: 20),

                ElevatedButton(
                  onPressed: () {

                    Navigator.pop(
                        context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            BoardDetailPage(
                          title:
                              boardNameController
                                  .text,
                        ),
                      ),
                    );
                  },
                  style:
                      ElevatedButton
                          .styleFrom(
                    backgroundColor:
                        Colors
                            .deepPurple,
                    padding:
                        const EdgeInsets
                            .symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius
                              .circular(
                                  15),
                    ),
                  ),
                  child: const Text(
                    "Save Board",
                    style: TextStyle(
                        color:
                            Colors.white),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: Column(
        children: [
          /// ================= HEADER =================
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF7F7FD5),
                  Color(0xFF86A8E7),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                /// Top Row (Profile - Date - Group)
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    /// PROFILE BUTTON
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AccountPage(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),

                    const Text(
                      "20 Jan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),

                    const CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.group,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                /// Greeting + Add Board
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:
                      CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hi, Abuy",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "4 Task",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: showAddBoardDialog,
                      child: Container(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "+ Add Board",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          

          /// ================= BODY =================
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24),
              decoration: const BoxDecoration(
                color: Color(0xFFEFEFEF),
                borderRadius:
                    BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  /// My Team + Search
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
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
                        backgroundColor:
                            Colors.deepPurple,
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  /// Project List
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

/// ================= PROJECT CARD =================
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
                colors: [
                  Color(0xFF7F7FD5),
                  Color(0xFF86A8E7),
                ],
              )
            : null,
        color: isPrimary
            ? null
            : const Color(0xFFDADAF7),
        borderRadius:
            BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isPrimary
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            desc,
            style: TextStyle(
              fontSize: 16,
              color: isPrimary
                  ? Colors.white70
                  : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
