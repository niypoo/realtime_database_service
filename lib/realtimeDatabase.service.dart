import 'package:firebase_database/firebase_database.dart';
import 'package:realtime_database_service/models/realtimeDatabaseException.modal.dart';

import 'package:get/get.dart';

class RealtimeDatabaseService extends GetxService {
  // define
  static RealtimeDatabaseService get to => Get.find();

  //define instance
  late FirebaseDatabase instance;

  Future<RealtimeDatabaseService> init() async {
    // instantiated
    instance = FirebaseDatabase.instance;

    // enable offline mode
    instance.setPersistenceEnabled(true);
    return this;
  }

  // Handel FireStore Exception
  RealTimeDatabaseException exceptionHandel(dynamic err) =>
      RealTimeDatabaseException(
        title: err?.code ?? 'Error',
        message: err?.message ?? "Something went wrong",
      );
}
