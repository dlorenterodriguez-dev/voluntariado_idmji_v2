import '../entities/capability.dart';

abstract interface class CapabilityRepository {
  Future<List<Capability>> getAll();

  Future<Capability?> getById(String id);

  Future<void> create(Capability capability);

  Future<void> update(Capability capability);

  Future<void> deleteById(String id);
}