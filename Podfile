platform :ios, '9.0'
use_frameworks!

target ’ASDKLayoutIssues’ do
# For latest release in cocoapods

pod 'AsyncDisplayKit’

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
end
