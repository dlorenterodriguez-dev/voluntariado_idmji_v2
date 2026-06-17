import '../entities/volunteer.dart';
import '../../../../core/shared/identifiers/volunteer_id.dart';

abstract interface class VolunteerRepository {
  /// Devuelve únicamente los voluntarios activos.
  Future<List<Volunteer>> getAllActive();

  /// Devuelve todos los voluntarios, incluidos los inactivos.
  Future<List<Volunteer>> getAllIncludingInactive();

  /// Obtiene un voluntario por su identificador.
  Future<Volunteer?> getById(VolunteerId id);

  /// Crea un nuevo voluntario.
  Future<void> create(Volunteer volunteer);

  /// Actualiza un voluntario existente.
  Future<void> update(Volunteer volunteer);
}