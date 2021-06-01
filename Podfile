
platform :ios, '14.0'

target 'FoodPlanner+' do
  use_frameworks!

  # Pods for FoodPlanner+
  
  pod 'Firebase/Auth'
  pod 'Firebase/Firestore'
  pod 'Firebase/Analytics'

  target 'FoodPlanner+Tests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'FoodPlanner+UITests' do
    # Pods for testing
  end

end  

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end
