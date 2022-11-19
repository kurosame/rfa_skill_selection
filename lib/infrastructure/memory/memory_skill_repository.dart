import "package:rfa_skill_selection/domain/model/skill/skill.dart";
import "package:rfa_skill_selection/domain/model/skill/skill_repository.dart";

class MemorySkillRepository implements SkillRepository {
  @override
  List<Skill> findAll() {
    return [
      const Skill(type: SkillType.arm, name: 'バンザイプッシュ', range: 1),
      const Skill(type: SkillType.arm, name: 'ウシロプッシュ', range: 1),
      const Skill(type: SkillType.arm, name: 'アームツイスト', range: 1),
      const Skill(type: SkillType.arm, name: 'サゲテプッシュ', range: 3),
      const Skill(type: SkillType.arm, name: 'トライセプス', range: 3),
      const Skill(type: SkillType.arm, name: 'リングアロー', range: 5),
      const Skill(type: SkillType.arm, name: 'グルグルアーム', range: 5),
      const Skill(type: SkillType.arm, name: 'カタニプッシュ', range: 0),
      const Skill(type: SkillType.abs, name: 'ニートゥーチェスト', range: 1),
      const Skill(type: SkillType.abs, name: 'バンザイモーニング', range: 1),
      const Skill(type: SkillType.abs, name: 'バンザイツイスト', range: 1),
      const Skill(type: SkillType.abs, name: 'レッグレイズ', range: 1),
      const Skill(type: SkillType.abs, name: 'バタバタレッグ', range: 1),
      const Skill(type: SkillType.abs, name: 'リングアゲサゲ', range: 1),
      const Skill(type: SkillType.abs, name: 'プランク', range: 3),
      const Skill(type: SkillType.abs, name: 'ベントオーバー', range: 3),
      const Skill(type: SkillType.abs, name: 'ハサミレッグ', range: 3),
      const Skill(type: SkillType.abs, name: 'スワイショウ', range: 5),
      const Skill(type: SkillType.abs, name: 'バンザイコシフリ', range: 5),
      const Skill(type: SkillType.abs, name: 'ロシアンツイスト', range: 5),
      const Skill(type: SkillType.abs, name: 'アシパカパカ', range: 0),
      const Skill(type: SkillType.abs, name: 'マエニプッシュ', range: 0),
      const Skill(type: SkillType.abs, name: 'バンザイサイドベンド', range: 0),
      const Skill(type: SkillType.leg, name: 'スクワット', range: 1),
      const Skill(type: SkillType.leg, name: 'モモアゲアゲ', range: 1),
      const Skill(type: SkillType.leg, name: 'モモデプッシュ', range: 1),
      const Skill(type: SkillType.leg, name: 'アゲサゲコンボ', range: 1),
      const Skill(type: SkillType.leg, name: 'ワイドスクワット', range: 3),
      const Skill(type: SkillType.leg, name: 'ステップアップ', range: 3),
      const Skill(type: SkillType.leg, name: 'モモアゲコンボ', range: 3),
      const Skill(type: SkillType.leg, name: 'バンザイスクワット', range: 5),
      const Skill(type: SkillType.leg, name: 'マウンテンクライマー', range: 5),
      const Skill(type: SkillType.leg, name: 'ヒップリフト', range: 0),
      const Skill(type: SkillType.yoga, name: '椅子のポーズ', range: 1),
      const Skill(type: SkillType.yoga, name: '英雄１のポーズ', range: 1),
      const Skill(type: SkillType.yoga, name: 'ねじり体側のポーズ', range: 1),
      const Skill(type: SkillType.yoga, name: '立木のポーズ', range: 1),
      const Skill(type: SkillType.yoga, name: '英雄３のポーズ', range: 3),
      const Skill(type: SkillType.yoga, name: 'チョウツガイのポーズ', range: 3),
      const Skill(type: SkillType.yoga, name: '英雄２のポーズ', range: 5),
      const Skill(type: SkillType.yoga, name: '舟のポーズ', range: 5),
      const Skill(type: SkillType.yoga, name: '扇のポーズ', range: 0),
      const Skill(type: SkillType.yoga, name: '折りたたむポーズ', range: 0),
    ];
  }
}
