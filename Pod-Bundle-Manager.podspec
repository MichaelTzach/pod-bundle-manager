Pod::Spec.new do |s|
  s.name             = 'Pod-Bundle-Manager'
  s.version          = '0.1.2'
  s.summary          = 'A small pod that allows easy use of images in pods.'

  s.description      = 'A small pod that allows easy use of images in pods.'

  s.homepage         = 'http://github.com/michaelTzach/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'I' => 'michael.tzach@jivesoftware.com' }
  s.source           = { :git => 'https://github.com/MichaelTzach/pod-bundle-manager.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'Pod-Bundle-Manager/Classes/**/*'

end
