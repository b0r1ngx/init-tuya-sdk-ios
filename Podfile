source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/TuyaInc/TuyaPublicSpecs.git'
source 'https://github.com/tuya/tuya-pod-specs.git'

platform :ios, '11.0'

# Replace 'TuyaHuya' with your app target name
target 'TuyaHuya' do
  use_frameworks!
  pod 'ThingSmartHomeKit','~> 5.8.0'

  # 构建和获取 ThingSmartCryption：从 IoT Tuya 开发者中心 构建并获取 ThingSmartCryption，详细教程请参考：构建 ThingSmartCryption 指南。
  # Building and Obtaining ThingSmartCryption from iot.tuya.com：Build and obtain ThingSmartCryption from IoT Tuya Developer Center. For a detailed tutorial, please refer to: ThingSmartCryption Building and Retrieval Guide.
  # 购买正式版后的下一步：一旦您购买了正式版，需要在 IoT 平台重新构建 SDK，并下载相关的 ZIP 文件。随后，进行重新集成以确保您的项目能够充分利用 Tuya 提供的功能。
  # Next Steps After Purchasing the Official Version: After purchasing the official version, proceed to rebuild the SDK on the IoT platform and download the related ZIP file. Then, reintegrate to ensure your project fully leverages the functionalities provided by Tuya.
  pod 'ThingSmartCryption', :path => './'


end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings["IPHONEOS_DEPLOYMENT_TARGET"] = "11.0"
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"

      # 请替换为您的 TeamID
      # replace to your teamid
      # config.build_settings["DEVELOPMENT_TEAM"] = "JW77DJ2MHR"
    end
  end
end
