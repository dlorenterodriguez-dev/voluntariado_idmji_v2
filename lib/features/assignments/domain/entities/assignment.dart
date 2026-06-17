import '../../../../core/shared/identifiers/assignment_id.dart';
import '../../../../core/shared/identifiers/event_id.dart';
import '../../../../core/shared/identifiers/position_id.dart';
import '../../../../core/shared/identifiers/volunteer_id.dart';

class Assignment {
  const Assignment({
    required this.id,
    required this.eventId,
    required this.positionId,
    this.volunteerId,
  });

  /// Identificador permanente e inmutable de la asignación.
  final AssignmentId id;

  /// Evento al que pertenece esta asignación.
  final EventId eventId;

  /// Puesto que debe cubrir esta asignación.
  final PositionId positionId;

  /// Voluntario asignado.
  ///
  /// Si es `null`, la plaza permanece vacante.
  final VolunteerId? volunteerId;
}