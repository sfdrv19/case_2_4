import 'package:case_2_4/my_theme.dart';
import 'package:flutter/material.dart';

class MyThemesApp extends StatelessWidget {
  const MyThemesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myThemeBlue(),         //применяемая тема
      home: const MyThemes(),
    );
  }
}

class MyThemes extends StatefulWidget {
  const MyThemes({Key? key}) : super(key: key);

  @override
  _MyThemesState createState() => _MyThemesState();
}

//значения радиокнопок - гречка, липа, каштан
enum HoneyType { buckwheat, linden, chestnut }

class _MyThemesState extends State<MyThemes> {

  HoneyType? _honeyType = HoneyType.buckwheat;

  void _onRadioChanged(HoneyType? value) {
    setState(() {
      _honeyType = value;
    });
  }

  PreferredSizeWidget _myAppBar() => AppBar(
    backgroundColor: Theme.of(context).colorScheme.primary,
    title: const Text('Мёд'),
    actions: <Widget>[
      IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
      TextButton(onPressed: () {},
        child: const Text('Настройки'),
        style: TextButton.styleFrom(
            primary: Theme.of(context).colorScheme.onPrimary)
      )
    ],
  );

  Widget _myDrawer() => Drawer(

    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
                child: Image(
                    image: AssetImage('assets/images/vinni.png')),
              ),
              Text('Мёд есть. Хотя...',
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text('ВСЕ-ВСЕ-ВСЕ'),
        ),
        Divider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 2.0),
        ListTile(
          leading: const Icon(Icons.android),
          title: const Text('Пятачок'),
          onTap: () {},
        ),
        Divider(
            color: Theme.of(context).colorScheme.primary
        ),
        ListTile(
          leading: const Icon(Icons.adb_sharp),
          title: const Text('Сова'),
          onTap: () {},
        ),
        Divider(
            color: Theme.of(context).colorScheme.primary
        ),
        ListTile(
          leading: const Icon(Icons.android_sharp),
          title: const Text('Ослик'),
          onTap: () {},
        ),
        Divider(
            color: Theme.of(context).colorScheme.primary,
        ),
        ListTile(
          leading: const Icon(Icons.account_box_outlined),
          title: const Text('Кролик'),
          onTap: () {},
        ),
        Divider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 1.5),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      drawer: _myDrawer(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bee.jpg'),
              fit: BoxFit.cover,
            )
        ),
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile<HoneyType>(
                activeColor: Theme.of(context).colorScheme.primary,
                title: const Text('Гречишный'),
                value: HoneyType.buckwheat,
                groupValue: _honeyType,
                onChanged: _onRadioChanged
            ),
            RadioListTile<HoneyType>(
                activeColor: Theme.of(context).colorScheme.primary,
                title: const Text('Липовый'),
                value: HoneyType.linden,
                groupValue: _honeyType,
                onChanged: _onRadioChanged
            ),
            RadioListTile<HoneyType>(
                activeColor: Theme.of(context).colorScheme.primary,
                title: const Text('Каштановый'),
                value: HoneyType.chestnut,
                groupValue: _honeyType,
                onChanged: _onRadioChanged
            ),
          ],
        ),
      ),
    );
  }
}
