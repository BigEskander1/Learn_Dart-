sealed class AuthState {}

class Unauthenticated extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String userId;
  AuthSuccess(this.userId);
}

class AuthFailure extends AuthState {
  final String errorMessage;
  AuthFailure(this.errorMessage);
}
 
void handleAuthState(AuthState state) {
  switch (state) {
    case Unauthenticated():
      print("User not auth");
      break;

    case AuthLoading():
      print("loading to log in");
      break;

    case AuthSuccess(:var userId):  // استخدام destructuring
      print("user id : $userId");
      break;

    case AuthFailure(:var errorMessage):
      print("failed in login : $errorMessage");
      break;
  }
}
void main() {
  AuthState state;

  state = Unauthenticated();
  handleAuthState(state);

  state = AuthLoading();
  handleAuthState(state);

  state = AuthSuccess("user_123");
  handleAuthState(state);

  state = AuthFailure("Password is incorrect");
  handleAuthState(state);
}
