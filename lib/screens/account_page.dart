import 'package:flutter/material.dart';
import 'login_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: SafeArea(
        child: Column(
          children: [
            /// ================= HEADER =================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                  horizontal: 24, vertical: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Back + Title
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          child: Icon(Icons.arrow_back,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "Account",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 40),

                  /// Profile
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person,
                            size: 40, color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Muh Abuy",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                          Text(
                            "@mabuy",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.edit,
                            color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// ================= DATA =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Data",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 20),

                  buildMenuItem(
                    icon: Icons.email_outlined,
                    title: "Email",
                    subtitle: "mabuy@gmail.com",
                  ),

                  const Divider(),

                  buildMenuItem(
                    icon: Icons.lock_outline,
                    title: "Password",
                    subtitle: "****************",
                  ),

                  const SizedBox(height: 40),

                  /// Logout
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LoginPage()),
                        (route) => false,
                      );
                    },
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.logout,
                            color: Colors.red),
                        SizedBox(width: 10),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple),
      ),
      subtitle: Text(subtitle),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}
