import 'capability_icon.dart';

class Capability {
  const Capability({
    required this.id,
    required this.name,
    required this.icon,
    required this.isActive,
  });

  /// Identificador permanente e inmutable (UUID).
  final String id;

  /// Nombre visible de la capacidad.
  final String name;

  /// Icono asociado a la capacidad.
  final CapabilityIcon icon;

  /// Indica si la capacidad está activa.
  ///
  /// Las capacidades inactivas conservan su historial y
  /// pueden seguir siendo referenciadas por datos antiguos.
  final bool isActive;
}