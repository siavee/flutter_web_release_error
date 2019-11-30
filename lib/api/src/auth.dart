part of my_api;

class AuthData {
  String user;
  String idToken;
  Map<String, dynamic> claims;

  AuthData(this.user, this.idToken, this.claims);
}

class AuthService extends ChangeNotifier {
  static final AuthService _instance = AuthService._privateConstructor();
  factory AuthService() => _instance;
  AuthService._privateConstructor();

  String _currentUser;
  bool _isAdmin = false;

  String get currentUser {
    return _currentUser;
  }
  
  bool get isAdmin {
    return _isAdmin;
  }

  Future<String> signIn() async {
    _currentUser = 'someone';
    notifyListeners();
    print('notified listeners');
    return _currentUser;
  }

  Future<String> signInAsAdmin() async {
    _currentUser = 'someone';
    _isAdmin = true;
    notifyListeners();
    print('notified listeners');
    return _currentUser;
  }

  Future signOut() async {
    _currentUser = null;
    _isAdmin = false;
    notifyListeners();
    return _currentUser;
  }
}