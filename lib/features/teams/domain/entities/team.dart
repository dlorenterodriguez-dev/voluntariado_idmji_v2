import 'planning_scope.dart';

class Team {
  const Team({
    required this.id,
    required this.name,
    required this.planningScope,
    required this.isActive,
  });

  /// Identificador permanente e inmutable (UUID).
  final String id;

  /// Nombre visible del equipo.
  ///
  /// Puede cambiar con el tiempo sin afectar a las referencias,
  /// que siempre deben hacerse mediante el campo [id].
  final String name;

  /// Alcance de planificación del equipo.
  ///
  /// Determina si este equipo se planifica semanalmente o mensualmente.
  final PlanningScope planningScope;

  /// Indica si el equipo está activo.
  ///
  /// Los equipos inactivos conservan su historial y pueden seguir
  /// siendo referenciados por datos antiguos.
  final bool isActive;
}