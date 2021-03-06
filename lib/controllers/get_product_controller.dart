import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class GetProductController extends GetxController {
  // Initial database
  FirebaseFirestore db = FirebaseFirestore.instance;

  // Get data sekali
  Future<QuerySnapshot<Object?>> getProduct() async {
    CollectionReference products = db.collection('products');
    return products.get();
  }

  // Get data realtime
  Stream<QuerySnapshot<Object?>> getProductRealTime() {
    CollectionReference products = db.collection('products');
    return products.orderBy('stock', descending: true).snapshots();
  }

  void deleteProduct(String? id) {
    DocumentReference products = db.collection('products').doc(id);
    products.delete();
    print('Delete');
  }
}
