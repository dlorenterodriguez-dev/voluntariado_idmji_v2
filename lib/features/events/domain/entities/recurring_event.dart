import '../../../../core/shared/identifiers/event_template_id.dart';
import '../../../../core/shared/identifiers/recurring_event_id.dart';

enum Weekday {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

class RecurringEvent {
  const RecurringEvent({
    required this.id,
    required this.eventTemplateId,
    required this.weekday,
    required this.hour,
    required this.minute,
    required this.isActive,
  });

  /// Identificador permanente e inmutable del patrón recurrente.
  final RecurringEventId id;

  /// Plantilla utilizada para generar los eventos concretos.
  final EventTemplateId eventTemplateId;

  /// Día de la semana en el que se celebra habitualmente.
  final Weekday weekday;

  /// Hora habitual de inicio (0-23).
  final int hour;

  /// Minuto habitual de inicio (0-59).
  final int minute;

  /// Indica si este patrón recurrente está activo.
  ///
  /// Los patrones inactivos dejan de generar nuevos eventos,
  /// pero conservan su historial.
  final bool isActive;
}