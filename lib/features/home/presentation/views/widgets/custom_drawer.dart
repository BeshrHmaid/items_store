import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_list_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(
              height: 90,
              child: DrawerHeader(
                child: Text(
                  'Menu',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            CustomListTile(
                icon: const Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                text: 'Setting'),
            const Divider(),
            CustomListTile(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                text: 'Notifications'),
            const Divider(),
            CustomListTile(
                icon: const Icon(
                  Icons.info,
                  color: Colors.blue,
                ),
                text: 'About us'),
            const Divider(),
            CustomListTile(
                icon: const Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                text: 'Opinons'),
            const Divider(),
            CustomListTile(
                icon: const Icon(
                  Icons.privacy_tip,
                  color: Colors.blue,
                ),
                text: 'Privacy'),
            const Divider(),
            CustomListTile(
                icon: const Icon(
                  Icons.share,
                  color: Colors.blue,
                ),
                text: 'Share'),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.envelope,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.earth,
                    color: Colors.blue,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.locationDot,
                    color: const Color.fromARGB(255, 77, 60, 60),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 0, 108, 4),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
