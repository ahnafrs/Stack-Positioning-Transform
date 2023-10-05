import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c64484d3-877c-4c43-862f-7a4e11407e4f/dfmgrk4-ad036ee0-8412-40d6-a55b-e3f6cd7ccc07.png/v1/fill/w_1280,h_1280,q_80,strp/kakashi_hatake__naruto__by_bonehedtoons_dfmgrk4-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcL2M2NDQ4NGQzLTg3N2MtNGM0My04NjJmLTdhNGUxMTQwN2U0ZlwvZGZtZ3JrNC1hZDAzNmVlMC04NDEyLTQwZDYtYTU1Yi1lM2Y2Y2Q3Y2NjMDcucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.kWb90jXGfx5qzwD7tKNVt_tOgB5KrMZP8scqzCNpYkQ',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          maxRadius: 30,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/originals/ab/97/b7/ab97b7193dbbe0bbebc8ec36fdc0c4e1.jpg')),
                      title: Text("Kakashi"),
                      subtitle: Text('Naruto'),
                      trailing: IconButton(
                        // 1
                        icon: Icon(_isFavorited
                            ? Icons.favorite
                            : Icons.favorite_border),
                        iconSize: 30,
                        // 2
                        color: Colors.red[400],
                        onPressed: () {
                          // 3
                          setState(() {
                            _isFavorited = !_isFavorited;
                          });
                        },
                      ),
                    ),
                    Positioned(
                        right: 50,
                        bottom: 60,
                        child: Transform.rotate(
                            angle: 75,
                            child: Text("He is the Hero He is the Villain")))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
