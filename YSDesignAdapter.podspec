#
# Be sure to run `pod lib lint YSDesignAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YSDesignAdapter'
  s.version          = '0.0.1'
  s.summary          = 'YSDesignAdapter. 用于处理iPhone各机型适配'

  s.homepage         = 'https://github.com/yuansirios/YSDesignAdapter'
  s.author           = { 'yuansirios' => 'yuanxd25114@hsjry.com' }
  s.source           = { :git => 'https://github.com/yuansirios/YSDesignAdapter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'YSDesignAdapter/Classes/**/*'
  s.requires_arc = true

end
