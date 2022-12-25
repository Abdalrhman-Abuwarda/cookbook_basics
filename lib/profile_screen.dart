import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/beach.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.menu),
              Expanded(
                child: Flexible(
                    flex: 3,
                    child: Text(
                      'Profile Page',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
              ),
              Icon(Icons.keyboard_option_key)
            ],
          ),
          Transform.translate(
            offset: const Offset(0, 120),
            child: Column(
              children: [
                _buildProfileImage(context),
                _buildProfileDetails(context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Transform.translate(
              offset: const Offset(0, 350),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'items :',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                _items(context),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    ('Edit');
                  },
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      //padding: EdgeInsets.only(),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      //color: Colors.white,
                      child: const ListTile(
                        title: Text(
                          'Edit Profile',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.person),
                      )),
                ),
                Container(
                    //padding: EdgeInsets.only(),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    //color: Colors.white,
                    child: const ListTile(
                      title: Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.person),
                    )),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.blue, width: 1.5),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Row(
                      children: const <Widget>[
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Spacer(),
                        Icon(
                          Icons.photo_camera_front_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),

          //_buildActions(context),
        ],
      ),
    );
  }
}

Widget _buildProfileImage(BuildContext context) {
  return const CircleAvatar(
    radius: 70,
    backgroundColor: Colors.purple,
    child: CircleAvatar(
      radius: 65,
      backgroundImage: AssetImage("assets/images/dog.jpg"),
    ),
  );
}

// Container(
// width: 150,
// height: 150,
// child: ClipOval(
// child: Image.asset(
// "assets/images/dog.jpg",
// fit: BoxFit.fitWidth,),
// ),
// );

Widget _buildProfileDetails(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Wolfram Barkovich',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        _buildDetailsRow('Palistine', 'Gaza'),
        //_buildDetailsRow('Status', 'Good Boy'),
      ],
    ),
  );
}

// Widget _buildActions(BuildContext context) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       _buildIcon(Icons.restaurant, 'Feed'),
//       _buildIcon(Icons.favorite, 'Pet'),
//       _buildIcon(Icons.directions_walk, 'Walk'),
//     ],
//   );
// }

Widget _buildDetailsRow([String Cuntre = '', String City = '']) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '$Cuntre ,',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(City),
    ],
  );
}

// Widget _buildIcon(IconData icon, String text) {
//   return Padding(
//     padding: const EdgeInsets.all(20.0),
//     child: Column(
//       children: <Widget>[Icon(icon, size: 40), Text(text)],
//     ),
//   );
// }

Widget _items(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          width: 100,
          height: 50,
          child: const Center(child: Text("Item 0")),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          width: 100,
          height: 50,
          child: const Center(child: Text("Item 0")),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          width: 100,
          height: 50,
          child: const Center(child: Text("Item 0")),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          width: 100,
          height: 50,
          child: const Center(child: Text("Item 0")),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          width: 100,
          height: 50,
          child: const Center(child: Text("Item 0")),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          width: 100,
          height: 50,
          child: const Center(child: Text("Item 0")),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          width: 100,
          height: 50,
          child: const Center(child: Text("Item 0")),
        ),
      ],
    ),
  );
}
