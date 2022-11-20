import 'package:flutter/material.dart';
import "package:rfa_skill_selection/application/skill/usecase.dart";
import 'package:rfa_skill_selection/domain/model/skill/skill.dart';

import 'core/general.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RFA',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const Home(title: 'Ring Fit Adventure Skill Selection'),
    );
  }
}

class Home extends StatefulWidget {
  final String title;

  const Home({super.key, required this.title});

  @override
  State<Home> createState() => _HomeState();
}

class SkillUI implements Skill {
  @override
  final SkillType type;
  @override
  final String name;
  @override
  final int range;
  bool isCheck = false;

  SkillUI({
    required this.type,
    required this.name,
    required this.range,
  });
}

class _HomeState extends State<Home> {
  List<SkillUI> _skills = [];

  _HomeState() {
    final skillsAll = fetchSkills()
        .map((s) => SkillUI(type: s.type, name: s.name, range: s.range));
    final ranges = [5, 5, 5, 3, 3, 1, 1, 1];
    ranges.shuffle();

    final armList = skillsAll.where((s) => s.type == SkillType.arm).toList();
    final arm1 = General.getRandomItem(
        armList.where((s) => s.range == ranges[0]).toList());
    final arm2 = General.getRandomItem(armList
        .where((s) => s.range == ranges[1] && s.name != arm1.name)
        .toList());

    final absList = skillsAll.where((s) => s.type == SkillType.abs).toList();
    final abs1 = General.getRandomItem(
        absList.where((s) => s.range == ranges[2]).toList());
    final abs2 = General.getRandomItem(absList
        .where((s) => s.range == ranges[3] && s.name != abs1.name)
        .toList());

    final legList = skillsAll.where((s) => s.type == SkillType.leg).toList();
    final leg1 = General.getRandomItem(
        legList.where((s) => s.range == ranges[4]).toList());
    final leg2 = General.getRandomItem(legList
        .where((s) => s.range == ranges[5] && s.name != leg1.name)
        .toList());

    final yogaList = skillsAll.where((s) => s.type == SkillType.yoga).toList();
    final yoga1 = General.getRandomItem(
        yogaList.where((s) => s.range == ranges[6]).toList());
    final yoga2 = General.getRandomItem(yogaList
        .where((s) => s.range == ranges[7] && s.name != yoga1.name)
        .toList());

    final healList = skillsAll.where((s) => s.range == 0).toList();
    final heal1 = General.getRandomItem(healList);
    final heal2 = General.getRandomItem(
        healList.where((s) => s.name != heal1.name).toList());

    _skills = [arm1, arm2, abs1, abs2, leg1, leg2, yoga1, yoga2, heal1, heal2];
  }

  void _handleCheck(int i) {
    setState(() {
      _skills[i].isCheck = !_skills[i].isCheck;
    });
  }

  MaterialColor _getTileColor(SkillType t) {
    switch (t) {
      case SkillType.arm:
        return Colors.red;
      case SkillType.abs:
        return Colors.amber;
      case SkillType.leg:
        return Colors.deepPurple;
      case SkillType.yoga:
        return Colors.teal;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _skills
              .asMap()
              .entries
              .map((e) => CheckboxListTile(
                    value: e.value.isCheck,
                    activeColor: Colors.blue,
                    tileColor: e.value.range == 0
                        ? Colors.pink
                        : _getTileColor(e.value.type),
                    title: Text(
                      e.value.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      e.value.range == 0 ? "回復" : '攻撃範囲${e.value.range}',
                      style: const TextStyle(color: Colors.white60),
                    ),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (bool? _) {
                      _handleCheck(e.key);
                    },
                  ))
              .toList(),
        )),
      ),
    );
  }
}
