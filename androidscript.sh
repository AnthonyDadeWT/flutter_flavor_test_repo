

pushd android
# flutter build generates files in android/ for building the app
flutter build apk --flavor free
./gradlew app:assembleAndroidTest
./gradlew app:assembleDebug -Ptarget="integration_test/test.dart"
popd

gcloud auth activate-service-account --key-file=<PATH_TO_KEY_FILE>
gcloud --quiet config set project <PROJECT_NAME>
gcloud firebase test android run --type instrumentation \
  --app build/app/outputs/apk/debug/app-debug.apk \
  --test build/app/outputs/apk/androidTest/debug/app-debug-androidTest.apk\
  --timeout 2m \
  --results-bucket=<RESULTS_BUCKET> \
  --results-dir=<RESULTS_DIRECTORY>