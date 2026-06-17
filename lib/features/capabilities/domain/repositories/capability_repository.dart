import '../entities/capability.dart';

abstract interface class CapabilityRepository {
  Future<List<Capability>> getAllActive();

  Future<List<Capability>> getAllIncludingInactive();

  Future<Capability?> getById(String id);

  Future<void> create(Capability capability);

  Future<void> update(Capability capability);
}