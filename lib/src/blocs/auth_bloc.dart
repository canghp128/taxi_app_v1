import 'dart:async';

class AuthBloc{
  StreamController _nameController = new StreamController();
  StreamController _phoneController = new StreamController();
  StreamController _emailController = new StreamController();
  StreamController _passController = new StreamController();

  Stream get nameStream => _nameController.stream;
  Stream get phoneStream => _phoneController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;


  bool isValid(String name, String phone, String email, String pass) {
    if(name == null || name.length == 0) {
      _nameController.sink.addError('Nhập tên');
      return false;
    }
    _nameController.sink.add('');
    if(phone == null || phone.length == 0) {
      _phoneController.sink.addError('Nhập số điện thoại');
      return false;
    }
    _phoneController.sink.add('');
    if(email == null || email.length == 0) {
      _emailController.sink.addError('Nhập địa chỉ email');
      return false;
    }
    _emailController.sink.add('');
    if(pass == null || pass.length < 6) {
      _passController.sink.addError('Mật khẩu phải trên 6 ký tự');
      return false;
    }
    _passController.sink.add('');
    return true;
  }



  void dispose() {
    _nameController.close();
    _phoneController.close();
    _emailController.close();
    _passController.close();
  }
}