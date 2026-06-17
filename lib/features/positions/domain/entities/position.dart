import '../../../../core/shared/identifiers/capability_id.dart';
import '../../../../core/shared/identifiers/position_id.dart';
import '../../../../core/shared/identifiers/team_id.dart';

class Position {
  const Position({
    required this.id,
    required this.name,
    required this.teamId,
    required this.requiredCapabilityId,
    required this.displayOrder,
    required this.isActive,
  });

  /// Identificador permanente e inmutable del puesto.
  final PositionId id;

  /// Nombre visible del puesto.
  ///
  /// Puede modificarse sin afectar a las referencias del dominio,
  /// que siempre se realizan mediante [id].
  final String name;

  /// Equipo al que pertenece este puesto.
  final TeamId teamId;

  /// Capacidad requerida para poder desempeñar este puesto.
  final CapabilityId requiredCapabilityId;

  /// Orden configurable de aparición en las planillas.
  final int displayOrder;

  /// Indica si el puesto está activo.
  ///
  /// Los puestos inactivos conservan su historial y pueden seguir
  /// siendo referenciados por datos históricos.
  final bool isActive;
}