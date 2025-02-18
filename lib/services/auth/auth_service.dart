// import 'package:firebase_auth/firebase_auth.dart'; //authentication
//
// class AuthService{
//
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//
//   //sign user in
//  Future<UserCredential> signInByFirebaseAuthentication(String email , String password )
//  async {
//    try{
//      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
//    }on FirebaseAuthException catch(e){
//          throw Exception(e.code);
//    }
//
//  }
//
//
//
// }