import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import './DrawerDetail.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerState createState() => new _DrawerState();
}

class _DrawerState extends State<DrawerPage> {

  String userImage = "https://cdn.pixabay.com/photo/2017/07/18/23/23/user-2517433_960_720.png";
  String otherUserImage = "https://images.vexels.com/media/users/3/145908/preview2/52eabf633ca6414e60a7677b0b917d92-male-avatar-maker.jpg";
  String backup;

  String accountName = "Eri Wandri";
  String otherAccountName = "Wawan";
  String backupName;

  String accountEmail = "eriwandri@gmail.com";
  String otherAccountEmail = "wawandry@gmail.com";
  String backupEmail;

  void gantiUser() {
    this.setState((){
      backup = userImage;
      userImage = otherUserImage;
      otherUserImage = backup;

      backupName = accountName;
      accountName = otherAccountName;
      otherAccountName = backupName;

      backupEmail = accountEmail;
      accountEmail = otherAccountEmail;
      otherAccountEmail = backupEmail;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Demo Sidebar (Drawer)"), backgroundColor: Colors.red[700],),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(accountName),
              accountEmail: new Text(accountEmail),
              currentAccountPicture: new GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new DrawerDetail(nama: accountName, gambar: userImage,)
                  ));
                },
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(userImage),
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage("https://media-cdn.tripadvisor.com/media/photo-s/0e/94/89/18/wedding-reception-decoration.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => gantiUser(),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(otherUserImage),
                  )
                )
              ],
            ),
            
            new ListTile(
              title: new Text("Setting"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            )
          ],
        )
      ),
      body: new Container(
        
      ),
    );
  }
}
