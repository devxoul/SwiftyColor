Pod::Spec.new do |s|
  s.name             = 'SwiftyColor'
  s.version          = '1.0.0'
  s.summary          = 'The most sexy way to use colors in Swift.'
  s.homepage         = 'https://github.com/devxoul/SwiftyColor'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Suyeol Jeon' => 'devxoul@gmail.com' }
  s.source           = { :git => 'https://github.com/devxoul/SwiftyColor.git',
                         :tag => s.version.to_s }
  s.source_files     = 'Sources/*.{swift}'
  s.requires_arc     = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
end
