import 'package:flutter/material.dart';

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

              /// Title + Chat Icon
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
                  const Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                    size: 28,
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// Share Button
              Container(
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
              )
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
                  CrossAxisAlignment
                      .start,
              children: [

                /// ADD CARD BUTTON
                Container(
                  padding:
                      const EdgeInsets
                          .symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration:
                      BoxDecoration(
                    color: const Color(
                        0xFFDADAF7),
                    borderRadius:
                        BorderRadius
                            .circular(
                                12),
                  ),
                  child: const Text(
                    "+ Add Card",
                    style: TextStyle(
                      color:
                          Colors.deepPurple,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(
                    height: 25),

                /// CARD (STATIS SESUAI GAMBAR)
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
                            .circular(
                                20),
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
                              FontWeight
                                  .bold,
                          color: Colors
                              .deepPurple,
                        ),
                      ),

                      const SizedBox(
                          height: 20),

                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: const [
                          Expanded(
                            child: Text(
                              "Mencari konsep aplikasi dan salin ke word",
                              style:
                                  TextStyle(
                                fontSize:
                                    16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons
                                .radio_button_unchecked,
                            color: Colors
                                .deepPurple,
                          )
                        ],
                      ),

                      const SizedBox(
                          height: 20),

                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: const [
                          Expanded(
                            child: Text(
                              "Mencari deskripsi aplikasi dan salin ke word",
                              style:
                                  TextStyle(
                                fontSize:
                                    16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons
                                .check_circle,
                            color: Colors
                                .deepPurple,
                          )
                        ],
                      ),

                      const SizedBox(
                          height: 20),

                      Container(
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
                        child: const Text(
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
                      )
                    ],
                  ),
                ),

                const SizedBox(
                    height: 20),

                /// CARD 2 (DESAIN UI/UX)
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
                            .circular(
                                20),
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment
                            .start,
                    children: const [

                      Text(
                        "Desain ui/ux",
                        style:
                            TextStyle(
                          fontSize: 22,
                          fontWeight:
                              FontWeight
                                  .bold,
                          color: Colors
                              .deepPurple,
                        ),
                      ),

                      SizedBox(
                          height: 20),

                      /// Add List Button
                      DecoratedBox(
                        decoration:
                            BoxDecoration(
                          color: Colors
                              .deepPurple,
                          borderRadius:
                              BorderRadius
                                  .all(
                                      Radius.circular(
                                          20)),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets
                                  .symmetric(
                            horizontal:
                                20,
                            vertical:
                                10,
                          ),
                          child: Text(
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
                      )
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