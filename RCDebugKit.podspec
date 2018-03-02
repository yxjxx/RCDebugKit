#
# Be sure to run `pod lib lint RCDebugKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RCDebugKit'
  s.version          = '0.1.0'
  s.summary          = 'Rico\'s debug tool collection.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Rico's debug tool collection.
                       DESC

  s.homepage         = 'https://github.com/yxjxx/RCDebugKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yxjxx' => 'i@yxjxx.com' }
  s.source           = { :git => 'https://github.com/yxjxx/RCDebugKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.default_subspecs = 'Core', 'FPSLabel'
  # s.source_files = 'RCDebugKit/Classes/**/*'

  s.subspec 'FPSLabel' do |fpslabel|
    fpslabel.requires_arc = true
    fpslabel.source_files = 'RCDebugKit/Classes/YYFPSLabel/*.{h,m}'
    fpslabel.public_header_files = 'RCDebugKit/Classes/YYFPSLabel/*.h'
    fpslabel.frameworks = 'Foundation', 'UIKit'
    fpslabel.libraries = 'stdc++.6', 'stdc++'
    # fpslabel.dependency 'YYText'
  end 
  
  # s.resource_bundles = {
  #   'RCDebugKit' => ['RCDebugKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
