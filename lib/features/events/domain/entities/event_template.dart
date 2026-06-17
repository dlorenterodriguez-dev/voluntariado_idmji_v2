import '../../../../core/shared/identifiers/event_template_id.dart';
import 'required_position.dart';
import 'service_type.dart';

class EventTemplate {
  const EventTemplate({
    required this.id,
    required this.name,
    required this.serviceType,
    required this.requiredPositions,
    required this.isActive,
  });

  /// Identificador permanente e inmutable de la plantilla.
  final EventTemplateId id;

  /// Nombre visible de la plantilla.
  ///
  /// Ejemplo: "Alabanza estándar" o "Enseñanza principal".
  final String name;

  /// Tipo de culto al que corresponde esta plantilla.
  final ServiceType serviceType;

  /// Definición de los puestos necesarios para esta plantilla.
  ///
  /// Cada elemento indica un puesto y cuántos voluntarios se requieren.
  final List<RequiredPosition> requiredPositions;

  /// Indica si la plantilla está activa.
  ///
  /// Las plantillas inactivas conservan su historial y pueden seguir
  /// siendo referenciadas por eventos antiguos.
  final bool isActive;
}