import 'package:flutter/material.dart';
import 'chat_page.dart';
import 'share_board_page.dart';

class BoardDetailPage extends StatefulWidget {
  final String title;

  const BoardDetailPage({
    super.key,
    required this.title,
  });

  @override
  State<BoardDetailPage> createState() =>
      _BoardDetailPageState();
}

class _BoardDetailPageState
    extends State<BoardDetailPage> {

  List<String> lists = [];
  final TextEditingController listController =
      TextEditingController();

  void showAddListDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            "Add List",
            style: TextStyle(color: Colors.deepPurple),
          ),
          content: TextField(
            controller: listController,
            decoration: const InputDecoration(
              hintText: "Enter list title",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {
                if (listController.text.isNotEmpty) {
                  setState(() {
                    lists.add(listController.text);
                  });
                  listController.clear();
                }
                Navigator.pop(context);
              },
              child: const Text("Add"),
            ),
          ],
        );
      },
    );
  }

  bool showCard = false;

  final TextEditingController cardTitleController =
      TextEditingController();

  void showAddCardDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(25),
          ),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFFDADAF7),
              borderRadius:
                  BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Create Card",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight:
                        FontWeight.bold,
                    color:
                        Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller:
                      cardTitleController,
                  decoration:
                      InputDecoration(
                    hintText:
                        "Card Title",
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
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context);
                    setState(() {
                      showCard = true;
                    });
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
                    "Save",
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
      backgroundColor: const Color(0xFF7F7FD5),
      body: Column(
        children: [

          /// ================= HEADER =================
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 60,
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.title
                            .toUpperCase(),
                        style:
                            const TextStyle(
                          fontSize: 36,
                          fontWeight:
                              FontWeight.bold,
                          color:
                              Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                const ChatPage(),
                          ),
                        );
                      },
                    )
                  ],
                ),

                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const ShareBoardPage(),
                      ),
                    );
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(
                              12),
                    ),
                    child: Row(
                      mainAxisSize:
                          MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.person,
                          color:
                              Colors.deepPurple,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Share",
                          style: TextStyle(
                            color:
                                Colors.deepPurple,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// ================= BODY =================
          Expanded(
            child: Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.all(24),
              decoration:
                  const BoxDecoration(
                color: Color(0xFFEFEFEF),
                borderRadius:
                    BorderRadius.vertical(
                  top:
                      Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 25),

                  /// CARD
                  Container(
                    padding:
                        const EdgeInsets
                            .all(20),
                    decoration:
                        BoxDecoration(
                      color: const Color(
                          0xFFDADAF7),
                      borderRadius:
                          BorderRadius
                              .circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      children: [

                        const Text(
                          "Konsep dan deskripsi aplikasi",
                          style:
                              TextStyle(
                            fontSize: 22,
                            fontWeight:
                                FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// ===== LIST YANG DITAMBAHKAN =====
                        ...lists.map(
                          (item) => Padding(
                            padding:
                                const EdgeInsets
                                    .only(
                                        bottom:
                                            10),
                            child: Container(
                              width:
                                  double.infinity,
                              padding:
                                  const EdgeInsets
                                      .all(12),
                              decoration:
                                  BoxDecoration(
                                color:
                                    Colors.white,
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            12),
                              ),
                              child: Text(
                                item,
                                style:
                                    const TextStyle(
                                        fontSize:
                                            16),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// BUTTON ADD LIST
                        GestureDetector(
                          onTap:
                              showAddListDialog,
                          child: Container(
                            padding:
                                const EdgeInsets
                                    .symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            decoration:
                                BoxDecoration(
                              color: Colors
                                  .deepPurple,
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                          20),
                            ),
                            child:
                                const Text(
                              "+ Add List",
                              style:
                                  TextStyle(
                                color: Colors
                                    .white,
                                fontWeight:
                                    FontWeight
                                        .bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}