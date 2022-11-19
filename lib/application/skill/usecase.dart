import 'package:rfa_skill_selection/domain/model/skill/skill.dart';
import 'package:rfa_skill_selection/domain/service/skill.dart';
import 'package:rfa_skill_selection/infrastructure/memory/memory_skill_repository.dart';

List<Skill> fetchSkills() {
  final skillService = SkillService(skillRepository: MemorySkillRepository());
  final skills = skillService.fetchAll();

  return skills;
}
