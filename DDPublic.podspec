#
# Be sure to run `pod lib lint DDPublic.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DDPublic'
  s.version          = '0.1.2'
  s.summary          = 'DDPublic 项目基础代码'

  s.description      = <<-DESC
DDPublic 项目基础代码
DDPublic 项目基础代码
DDPublic 项目基础代码
                    DESC

  s.homepage         = 'https://github.com/DDKit/DDPublic'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DuanChangHe' => 'duanchanghe@gmail.com' }
  s.source           = { :git => 'https://github.com/DDKit/DDPublic.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.source_files = 'DDPublic/Classes/**/*/*'
  s.swift_version = '4.2'
   
  # s.resource_bundles = {
  #   'DDPublic' => ['DDPublic/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'DDFeedback', '~> 1.0'
  s.dependency 'Moya', '~> 13.0'

  
end
