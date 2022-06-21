import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class GetProductController extends GetxController {
  // Initial database
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getProduct() async {
    CollectionReference products = db.collection('products');
    // products.get().then((value) {
    //   print((value.docs[0].data() as Map<String, dynamic>)['name']);
    // });
    return products.get();
  }
}
