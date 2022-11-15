import 'dart:math';

import 'package:flutter/material.dart';

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

enum SkillType { arm, abs, leg, yoga }

class Skill {
  final SkillType type;
  final String name;
  final int range;
  bool isCheck = false;

  Skill({required this.type, required this.name, required this.range});
}

List<Skill> skillsAll = [
  Skill(type: SkillType.arm, name: 'バンザイプッシュ', range: 1),
  Skill(type: SkillType.arm, name: 'ウシロプッシュ', range: 1),
  Skill(type: SkillType.arm, name: 'アームツイスト', range: 1),
  Skill(type: SkillType.arm, name: 'サゲテプッシュ', range: 3),
  Skill(type: SkillType.arm, name: 'トライセプス', range: 3),
  Skill(type: SkillType.arm, name: 'リングアロー', range: 5),
  Skill(type: SkillType.arm, name: 'グルグルアーム', range: 5),
  Skill(type: SkillType.arm, name: 'カタニプッシュ', range: 0),
  Skill(type: SkillType.abs, name: 'ニートゥーチェスト', range: 1),
  Skill(type: SkillType.abs, name: 'バンザイモーニング', range: 1),
  Skill(type: SkillType.abs, name: 'バンザイツイスト', range: 1),
  Skill(type: SkillType.abs, name: 'レッグレイズ', range: 1),
  Skill(type: SkillType.abs, name: 'バタバタレッグ', range: 1),
  Skill(type: SkillType.abs, name: 'リングアゲサゲ', range: 1),
  Skill(type: SkillType.abs, name: 'プランク', range: 3),
  Skill(type: SkillType.abs, name: 'ベントオーバー', range: 3),
  Skill(type: SkillType.abs, name: 'ハサミレッグ', range: 3),
  Skill(type: SkillType.abs, name: 'スワイショウ', range: 5),
  Skill(type: SkillType.abs, name: 'バンザイコシフリ', range: 5),
  Skill(type: SkillType.abs, name: 'ロシアンツイスト', range: 5),
  Skill(type: SkillType.abs, name: 'アシパカパカ', range: 0),
  Skill(type: SkillType.abs, name: 'マエニプッシュ', range: 0),
  Skill(type: SkillType.abs, name: 'バンザイサイドベンド', range: 0),
  Skill(type: SkillType.leg, name: 'スクワット', range: 1),
  Skill(type: SkillType.leg, name: 'モモアゲアゲ', range: 1),
  Skill(type: SkillType.leg, name: 'モモデプッシュ', range: 1),
  Skill(type: SkillType.leg, name: 'アゲサゲコンボ', range: 1),
  Skill(type: SkillType.leg, name: 'ワイドスクワット', range: 3),
  Skill(type: SkillType.leg, name: 'ステップアップ', range: 3),
  Skill(type: SkillType.leg, name: 'モモアゲコンボ', range: 3),
  Skill(type: SkillType.leg, name: 'バンザイスクワット', range: 5),
  Skill(type: SkillType.leg, name: 'マウンテンクライマー', range: 5),
  Skill(type: SkillType.leg, name: 'ヒップリフト', range: 0),
  Skill(type: SkillType.yoga, name: '椅子のポーズ', range: 1),
  Skill(type: SkillType.yoga, name: '英雄１のポーズ', range: 1),
  Skill(type: SkillType.yoga, name: 'ねじり体側のポーズ', range: 1),
  Skill(type: SkillType.yoga, name: '立木のポーズ', range: 1),
  Skill(type: SkillType.yoga, name: '英雄３のポーズ', range: 3),
  Skill(type: SkillType.yoga, name: 'チョウツガイのポーズ', range: 3),
  Skill(type: SkillType.yoga, name: '英雄２のポーズ', range: 5),
  Skill(type: SkillType.yoga, name: '舟のポーズ', range: 5),
  Skill(type: SkillType.yoga, name: '扇のポーズ', range: 0),
  Skill(type: SkillType.yoga, name: '折りたたむポーズ', range: 0),
];

class _HomeState extends State<Home> {
  List<Skill> _skills = [];

  _HomeState() {
    Skill getSkill(List<Skill> l) => l[Random().nextInt(l.length)];

    final ranges = [5, 5, 5, 3, 3, 1, 1, 1];
    ranges.shuffle();

    final armList = skillsAll.where((s) => s.type == SkillType.arm).toList();
    final arm1 = getSkill(armList.where((s) => s.range == ranges[0]).toList());
    final arm2 = getSkill(armList
        .where((s) => s.range == ranges[1] && s.name != arm1.name)
        .toList());

    final absList = skillsAll.where((s) => s.type == SkillType.abs).toList();
    final abs1 = getSkill(absList.where((s) => s.range == ranges[2]).toList());
    final abs2 = getSkill(absList
        .where((s) => s.range == ranges[3] && s.name != abs1.name)
        .toList());

    final legList = skillsAll.where((s) => s.type == SkillType.leg).toList();
    final leg1 = getSkill(legList.where((s) => s.range == ranges[4]).toList());
    final leg2 = getSkill(legList
        .where((s) => s.range == ranges[5] && s.name != leg1.name)
        .toList());

    final yogaList = skillsAll.where((s) => s.type == SkillType.yoga).toList();
    final yoga1 =
        getSkill(yogaList.where((s) => s.range == ranges[6]).toList());
    final yoga2 = getSkill(yogaList
        .where((s) => s.range == ranges[7] && s.name != yoga1.name)
        .toList());

    final healList = skillsAll.where((s) => s.range == 0).toList();
    final heal1 = getSkill(healList);
    final heal2 =
        getSkill(healList.where((s) => s.name != heal1.name).toList());

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
        ),
      ),
    );
  }
}
