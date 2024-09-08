
import 'package:flutter_isar_db_explore/database/db_service.dart';
import 'package:flutter_isar_db_explore/database/entities/peon.dart';
import 'package:isar/isar.dart';

class PeonService {
  final Isar _isar;

  PeonService._(this._isar);

  static Future<PeonService> create() async {
    final dbService = await DbService.create();
    return PeonService._(await dbService.db);
  }

  Future<void> savePeon(Peon peon) async {
    _isar.writeTxnSync<int>(() => _isar.peons.putSync(peon));
  }

  Future<void> saveAllPeon(List<Peon> peonList) async {
    await _isar.writeTxn(() async {
      await _isar.peons.putAll(peonList);
    });
  }

  Future<Id> getMaxPeonId() async {
    final peonList = await _isar.peons.where().findAll();
    if (peonList.isNotEmpty) {
      final maxPeon = peonList.reduce(
          (currentMax, peon) => currentMax.id! > peon.id! ? currentMax : peon);
      return maxPeon.id ?? 0;
    } else {
      return 0;
    }
  }
}
