echo "Running config.sh"
flutter pub get
dart run build_runner build -d
flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart --source-dir ./assets/translations
# dart run flutter_native_splash:create --path=flutter_native_splash.yaml