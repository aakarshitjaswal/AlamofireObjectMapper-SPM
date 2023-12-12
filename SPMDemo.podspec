
Pod::Spec.new do |s|
  s.name             = 'SPMDemo'
  s.version          = '0.1.0'
  s.summary          = 'A short description of BloggerBird.'
  s.homepage         = 'https://github.com/quickbirdeng/BloggerBird'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Quick Bird' => 'mascot@quickbirdstudios.com' }
  s.source           = { :git => 'https://github.com/quickbirdeng/BloggerBird.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/SPMDemo/**/*'
end
