class User {
  // Private fields
  final String _uid;
  String _email;
  final String _displayName;
  String? _photoURL;
  final String? _phoneNumber;
  final DateTime? _createdAt;
  final Map<String, dynamic>? _customData;

  // Public constructors
  User.fromMap(Map<String, dynamic> data)
      : _uid = data['uid'] as String,
        _email = data['email'] as String,
        _displayName = data['displayName'] as String,
        _photoURL = data['photoURL'] as String?,
        _phoneNumber = data['phoneNumber'] as String?,
        _createdAt = data['createdAt'] as DateTime?,
        _customData = data['customData'] as Map<String, dynamic>?;

  // Public getters
  String get uid => _uid;
  String get email => _email;
  String get displayName => _displayName;
  String? get photoURL => _photoURL;
  String? get phoneNumber => _phoneNumber;
  DateTime? get createdAt => _createdAt;
  Map<String, dynamic>? get customData => _customData;

  // Public methods (optional)
  void updateEmail(String newEmail) {
    // Logic to update email, potentially using Firebase methods
    _email = newEmail;
  }

  // Public methods
  Future<void> updatePassword(String newPassword) async {
    // Implement logic to update password using Firebase Authentication methods
    // For example, using FirebaseAuth.instance.currentUser?.updatePassword(newPassword)
  }

  Future<void> updateImage(String imageUrl) async {
    // Implement logic to update profile image URL
    // This might involve storing the URL in Firestore or other storage solutions
    _photoURL = imageUrl;
  }
}
