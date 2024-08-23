import 'package:cloud_firestore/cloud_firestore.dart';

class Firestoreservice {
  final db = FirebaseFirestore.instance;

  /* Create 作成 */
  Future<void> create() async {
    await db.collection('songs').doc('S01').set(
      {
        'title': 'Poker Face',
        'artist': 'レディー ガガ',
        'released': 2008,
        'genre': 'エレクトロポップ',
      },
    );
  }
}
