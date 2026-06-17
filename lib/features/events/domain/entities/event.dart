import '../../../../core/shared/identifiers/event_id.dart';
import '../../../../core/shared/identifiers/recurring_event_id.dart';

class Event {
  const Event({
    required this.id,
    required this.startsAt,
    required this.isCancelled,
    required this.isActive,
    this.recurringEventId,
    this.note,
  });

  /// Identificador permanente e inmutable del evento.
  final EventId id;

  /// Fecha y hora efectivas de celebración.
  ///
  /// Refleja cualquier modificación excepcional aplicada al evento.
  final DateTime startsAt;

  /// Patrón recurrente del que procede este evento, si existe.
  ///
  /// Será `null` para eventos creados manualmente o extraordinarios.
  final RecurringEventId? recurringEventId;

  /// Nota opcional asociada al evento.
  final String? note;

  /// Indica si el evento ha sido cancelado.
  final bool isCancelled;

  /// Indica si el evento está activo.
  ///
  /// Permite aplicar la política de soft delete del proyecto.
  final bool isActive;
}