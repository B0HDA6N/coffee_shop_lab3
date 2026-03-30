import 'package:flutter/material.dart';
import '../Components/bottom_nav.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 400,
          margin: const EdgeInsets.symmetric(vertical: 20),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: const Color(0xFFF7D7B2),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                  ),
                ),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: const Icon(Icons.menu, color: Color(0xFF4B2C20)),
                  centerTitle: true,
                  title: Image.asset(
                    'assets/images/cup_splash.png',
                    height: 35,
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Color(0xFF4B2C20),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Account",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Color(0xFF4B2C20),
                            ),
                          ),
                          Text(
                            "Welcome Vasken!",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF4B2C20),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF4B2C20),
                            width: 2,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.asset(
                            'assets/images/avatar.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Color(0xFF4B2C20),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF4B2C20),
                    ),
                  ),
                  const SizedBox(height: 15),
                  _buildProfileItem("Personal Info", Icons.info_outline),
                  _buildProfileItem("Cards & Payments", Icons.credit_card),
                  _buildProfileItem("Transaction History", Icons.list_alt),
                  _buildProfileItem(
                    "Privacy & Data",
                    Icons.front_hand_outlined,
                  ),
                  _buildProfileItem("Account ID", Icons.badge_outlined),
                  const SizedBox(height: 35),
                  const Text(
                    "Security",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF4B2C20),
                    ),
                  ),
                  const SizedBox(height: 15),
                  _buildSwitchItem("2-factor authentication", true),
                  _buildSwitchItem("Face ID", true),
                  _buildSwitchItem("Passcode Lock", false),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            bottomNavigationBar: const CustomBottomNav(currentIndex: 3),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: Color(0xFF4B2C20),
            ),
          ),
          Icon(icon, color: const Color(0xFF4B2C20), size: 22),
        ],
      ),
    );
  }

  Widget _buildSwitchItem(String title, bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: Color(0xFF4B2C20),
            ),
          ),
          Switch(
            value: value,
            onChanged: (bool newValue) {},
            activeColor: const Color(0xFF4E8D7C),
            activeTrackColor: const Color(0xFF4E8D7C).withOpacity(0.4),
          ),
        ],
      ),
    );
  }
}
