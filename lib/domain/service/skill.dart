import 'package:rfa_skill_selection/domain/model/skill/skill.dart';
import 'package:rfa_skill_selection/domain/model/skill/skill_repository.dart';

class SkillService {
  final SkillRepository skillRepository;

  const SkillService({
    required this.skillRepository,
  });

  List<Skill> fetchAll() {
    return skillRepository.findAll();
  }
}
