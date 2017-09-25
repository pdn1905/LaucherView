#
# Be sure to run `pod lib lint LaucherView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LaucherView'
  s.version          = '0.1.0'
  s.summary          = 'The easy ways to custom left menu or bottom menu.. with LaucherView'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
'The easy ways to custom left menu or bottom menu.. with LaucherView'
                       DESC

  s.homepage         = 'https://github.com/pdn1905/LaucherView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pdn1905' => 'ngoc.phan@smartdev.vn' }
  s.source           = { :git => 'https://github.com/pdn1905/LaucherView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LaucherView/*'
  
  # s.resource_bundles = {
  #   'LaucherView' => ['LaucherView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
