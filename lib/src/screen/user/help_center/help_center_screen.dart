import 'package:flutter/material.dart';

class HelpCenterScreen extends StatefulWidget {
  @override
  _HelpCenterScreenState createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Help Center',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Icon_of_Zalo.svg/2048px-Icon_of_Zalo.svg.png',
                        width: 80,
                        height: 80,
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                          return Icon(Icons.error);
                        },
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Zalo',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXoMFtNYy-gfuvVnQkKSiDAmfYt0ynmaGz55WPNbUPZw&s',
                        width: 80,
                        height: 80,
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                          return Icon(Icons.error);
                        },
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'FaceBook',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Xử lý sự kiện khi nhấn vào hình ảnh
                        print("Icon 3 tapped");
                      },
                      child: Image.network(
                        'https://e7.pngegg.com/pngimages/358/473/png-clipart-computer-icons-user-profile-person-child-heroes.png',
                        width: 80,
                        height: 80,
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                          return Icon(Icons.error);
                        },
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '031230213',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
