#
# Be sure to run `pod lib lint testA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'testA'
  s.version          = '0.1.3'
  s.summary          = 'A short description of testA.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/DecembeGrirl/testA'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dev' => 'yangshuyuan@kkworld.com' }
  s.source           = { :git => 'https://github.com/DecembeGrirl/testA.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

  if ENV['IS_SOURCE'] || ENV[s.name]
    s.default_subspec = 'source'
  else
    s.default_subspec = 'framework'
  end

  s.subspec 'source' do |ss|
    ss.source_files = 'testA/Classes/**/*.{h,m}'
  end

  s.subspec 'framework' do |ss|
    ss.vendored_frameworks = 'testA/*.framework'
  end

  # s.source_files = 'testA/Classes/**/*'
  
  # s.resource_bundles = {
  #   'testA' => ['testA/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
