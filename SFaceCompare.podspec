Pod::Spec.new do |s|
  s.name             = 'SFaceCompare'
  s.version          = '3.1.4'
  s.summary          = 'Simple lib fro iOS to find and compare faces.'
  s.requires_arc     = true
  s.static_framework = true
  s.swift_versions = '5.0'
  s.description      = <<-DESC
  SFaceCompare is an simple libray for iOS to find and compare faces. SFaceCompare works on top of dlib and OpenCV libraries.
  With usage of trained model.
                       DESC

  s.homepage         = 'https://github.com/BohdanNikoletti/SFaceCompare'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bohdan Mihiliev' => 'bohdanrose1@gmail.com' }
  s.source           = { :git => 'https://github.com/BohdanNikoletti/SFaceCompare.git', :tag => s.version.to_s }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  s.ios.deployment_target = '12.0'
  s.preserve_paths = 'SFaceCompare/SameFace.framework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework SameFace' }
  s.source_files = 'SFaceCompare/Classes/**/*'
  s.vendored_frameworks = 'SFaceCompare/SameFace.framework'
end
