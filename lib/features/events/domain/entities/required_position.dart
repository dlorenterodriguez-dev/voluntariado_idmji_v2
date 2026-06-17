import '../../../../core/shared/identifiers/position_id.dart';

class RequiredPosition {
  const RequiredPosition({
    required this.positionId,
    required this.quantity,
  });

  /// Puesto requerido por la plantilla.
  final PositionId positionId;

  /// Número de voluntarios necesarios para este puesto.
  final int quantity;
}