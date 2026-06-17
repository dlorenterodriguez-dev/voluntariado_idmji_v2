import '../../../../core/shared/identifiers/capability_id.dart';
import '../../../../core/shared/identifiers/team_id.dart';
import '../../../../core/shared/identifiers/volunteer_id.dart';

class Volunteer {
  const Volunteer({
    required this.id,
    required this.name,
    required this.capabilityIds,
    required this.teamIds,
    required this.isActive,
  });

  /// Identificador permanente e inmutable del voluntario.
  final VolunteerId id;

  /// Nombre visible del voluntario.
  final String name;

  /// Capacidades que posee el voluntario.
  ///
  /// Se referencian únicamente mediante sus identificadores.
  final List<CapabilityId> capabilityIds;

  /// Equipos a los que pertenece el voluntario.
  ///
  /// Se referencian únicamente mediante sus identificadores.
  final List<TeamId> teamIds;

  /// Indica si el voluntario está activo.
  ///
  /// Los voluntarios inactivos conservan su historial.
  final bool isActive;
}