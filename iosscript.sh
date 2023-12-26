output="../build/ios_integ"
product="build/ios_integ/Build/Products"
dev_target="14.3"

# Pass --simulator if building for the simulator.
flutter build ios --flavor free integration_test/login_test.dart --release

pushd ios
pod install
xcodebuild build-for-testing \
  -workspace Runner.xcworkspace \
  -scheme Runner \
  -xcconfig Flutter/Release.xcconfig \
  -configuration Release-free \
  -derivedDataPath \
  $output -sdk iphoneos
popd

#
xcodebuild test-without-building \
    -xctestrun /Users/anthonydade/flutter-prog/test_app/build/ios_integ/Build/Products/Runner_iphoneos17.0-arm64.xctestrun \
    -destination id=00008110-0018359A0246801E

pushd $product
zip -r "ios_tests.zip" "Release-iphoneos" "Runner_iphoneos$dev_target-arm64.xctestrun"
popd