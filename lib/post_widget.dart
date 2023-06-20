import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({Key? key}) : super(key: key);
  final List postItems = [
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/b.jpg",
      "photoProfil": "assets/images/profil/b.jpg",
      "description": "🤩😱 Loock amazing, what do you like to see ?"
    },
    
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/b.jpg",
      "photoProfil": "assets/images/profil/b.jpg",
      "description":
          "😭😩 bad and irregular food, contact with different people"
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/b.jpg",
      "photoProfil": "assets/images/profil/b.jpg",
      "description": "🤩😱 Loock amazing, what do you like to see ?"
    },
    
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/b.jpg",
      "photoProfil": "assets/images/profil/b.jpg",
      "description":
          "😭😩 bad and irregular food, contact with different people"
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/b.jpg",
      "photoProfil": "assets/images/profil/b.jpg",
      "description": "🤩😱 Loock amazing, what do you like to see ?"
    },
    
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/b.jpg",
      "photoProfil": "assets/images/profil/b.jpg",
      "description":
          "😭😩 bad and irregular food, contact with different people"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage: AssetImage(post["photoProfil"]),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    post["pseudo"],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'assets/images/verification-badge.png',
                    height: 13,
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz))
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post["photo"]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_outlined),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_outline),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage(post["photoProfil"]),
                      ),
                      const SizedBox(width: 10),
                      RichText(
                        text: TextSpan(
                          text: 'Aimé par ',
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'dessertaseme',
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            TextSpan(text: ' et '),
                            TextSpan(
                                text: '123 autres personnes',
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post["pseudo"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          post["description"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "See more",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'See 35 comments',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '16 min ago • ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade400),
                      ),
                      const Text(
                        "Translate",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}