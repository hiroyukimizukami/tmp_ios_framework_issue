Pod::Spec.new do |s|
  s.name             = 'FrameworkA'
  s.version          = '1.0.0'
  s.summary          = 'Awesome framework A'
  s.homepage         = 'https://github.com/hioryukimizukami/dummy.git'
  s.author           = 'PlusC, Inc.'
  s.source           = { :git => "git@github.com:hiroyukimizukami/frameworkA.git", :tag => "FrameworkA-v#{s.version}" }

  s.ios.deployment_target = '11.0'

  s.requires_arc         = true
  s.public_header_files  = 'FrameworkA/FrameworkA/Public/*.h'
  s.private_header_files = 'FrameworkA/FrameworkA/Private/**/*.h'
  s.source_files         = [
    'FrameworkA/FrameworkA/Public/*.{h,m}',
    'FrameworkA/FrameworkA/Private/*.{h,m}',
  ]

  s.preserve_paths = [
    'FrameworkA/FrameworkA/FrameworkA.private.modulemap',
  ]

    s.xcconfig = {
      'VERSION' => "#{s.version}",
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
      'MODULEMAP_PRIVATE_FILE' => '${PODS_ROOT}/../../FrameworkA/FrameworkA.private.modulemap',
    }

  s.static_framework = true
end
