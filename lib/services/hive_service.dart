import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

abstract class HiveService {
  static Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path, backendPreference: HiveStorageBackendPreference.webWorker);
  }

  static Future<Box> getHiveBox(String tableName) async {
    //create a timestamp to check time taken to open box
    final startTime = DateTime.now().millisecondsSinceEpoch;
    print('Start time: $startTime');
    if (!Hive.isBoxOpen(tableName)) {
      try {
        await Hive.openBox(tableName);
      } catch (e) {
        await Hive.boxExists(tableName).then((isBoxExists) async {
          if (isBoxExists) {
            await Hive.deleteBoxFromDisk(tableName);
          }
        });
      }
    }

    final endTime = DateTime.now().millisecondsSinceEpoch;
    print('End time: $endTime');

    return Hive.box(tableName);
  }

  ///Remove all local hive db
  // static Future<void> clear() async {
  //   await getHiveBox(HiveConstant.dbName).then((value) async {
  //     await value.deleteAll([
  //       HiveConstant.account,
  //       HiveConstant.loyaltyUserDetails,
  //       HiveConstant.loyaltyAll,
  //       HiveConstant.loyaltyVoucher,
  //       HiveConstant.loyaltyTTReward,
  //       HiveConstant.loyaltyUserVoucher,
  //       HiveConstant.plans,
  //       HiveConstant.topup,
  //       HiveConstant.profile,
  //       HiveConstant.purchasePlans,
  //       HiveConstant.addOns,
  //       HiveConstant.settings,
  //       HiveConstant.faq,
  //       HiveConstant.dealer,
  //       HiveConstant.affiliate,
  //       HiveConstant.msisdnList,
  //     ]);
  //   });
  // }
}