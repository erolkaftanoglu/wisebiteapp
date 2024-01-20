import 'package:injectable/injectable.dart';
import 'package:get_storage/get_storage.dart';

const String tokenKey = 'token';
const String emailKey = 'email';
const String phoneKey = 'phone';
const String password = 'password';
const String userAgreementUrl = 'userAgreementUrl';
// in app tutorial first time
const String inAppTutorial = 'inAppTutorial';
// push token
const String pushToken = 'pushToken';
// affilateId
const String affilateId = 'affilateId';
// SocialAccountName
const String socialAccountName = 'socialAccountName';

@injectable
class GetStoreHelper {
  GetStorage getStorage;

  GetStoreHelper(this.getStorage);

  // save auth token
  Future<void> saveToken(String token) async {
    await getStorage.write(tokenKey, token);
  }

  // get auth token
  String? getToken() {
    return getStorage.read(tokenKey);
  }

  // email and password
  Future<void> saveEmailAndPassword(String email, String password) async {
    getStorage.write(emailKey, email);
    getStorage.write(password, password);
  }

  // save phone
  Future<void> savePhone(String phone) async {
    await getStorage.write(phoneKey, phone);
  }

  String? getPhone() {
    return getStorage.read(phoneKey);
  }

  String? getEmail() {
    return getStorage.read(emailKey);
  }

  String? getPassword() {
    return getStorage.read(password);
  }

  // user agreement url
  Future<void> saveUserAgreementUrl(String url) async {
    await getStorage.write(userAgreementUrl, url);
  }

  String? getUserAgreementUrl() {
    return getStorage.read(userAgreementUrl);
  }

  // save app Id
  Future<void> saveAppId(String appId) async {
    await getStorage.write('appId', appId);
  }

  String? getAppId() {
    return getStorage.read('appId');
  }

  // save in app tutorial
  Future<void> saveInAppTutorial(bool value) async {
    await getStorage.write(inAppTutorial, value);
  }

  bool? getInAppTutorial() {
    return getStorage.read(inAppTutorial);
  }

  // save push token
  Future<void> savePushToken(String token) async {
    await getStorage.write(pushToken, token);
  }

  String? getPushToken() {
    return getStorage.read(pushToken);
  }

  // save affilateId
  Future<void> saveAffilateId(String id) async {
    await getStorage.write(affilateId, id);
  }

  String? getAffilateId() {
    return getStorage.read(affilateId);
  }

  // save socialAccountName
  Future<void> saveSocialAccountName(String name) async {
    await getStorage.write(socialAccountName, name);
  }

  String? getSocialAccountName() {
    return getStorage.read(socialAccountName);
  }

  void clear() {
    String? phone = getPhone();
    getStorage.erase();
    savePhone("$phone");
  }
}
