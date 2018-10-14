Pod::Spec.new do |s|
  s.name             = 'InAppLocalization'
  s.version          = '0.1.0'
  s.summary          = 'Swift friendly In-App Localization. Easy way to localize your App without limitation of system language.'
 
  s.description      = <<-DESC
iOS as mobile device operation system is quite old. As other old softwares also iOS has some issues/bugs/solutions unsuitable to modern application design. One of these issues is system of localizations depended on device language.

This library helps you with two base challenges connected with issue of changing application language "In-App":

- provides models and solutions to set, change and eventually remove language in your application
- provides simple way to localize your view primitives (UILabel, UIButton, ..) with your application language
                       DESC
 
  s.homepage         = 'https://github.com/LukasHakulin/InAppLocalization'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lukas Hakulin' => 'l.hakulin@gmail.com' }
  s.source           = { :git => 'https://github.com/LukasHakulin/InAppLocalization.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
  s.source_files = [
     'InAppLocalization/InAppLocalization/**/*.{swift,plist}'
  ]
end