Pod::Spec.new do |s|
  s.name         = 'DekuSanCore'
  s.version      = '0.2.2'
  s.summary      = 'Core DEXON data structures and algorithms.'
  s.homepage     = 'https://dexon.org'
  s.license      = 'MIT'
  s.authors      = { 'DEXON Foundation' => 'app@dexon.org' }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'

  s.source       = { git: 'https://github.com/dexon-foundation/dekusan-core.git', tag: s.version }
  s.source_files = 'Sources/**/*.{swift,h,m}'
  s.public_header_files = 'Sources/DekuSanCore.h', 'Sources/Crypto.h'

  s.dependency 'BigInt'
  s.dependency 'TrezorCrypto', '~> 0.0.8'
  s.dependency 'SwiftProtobuf', '~> 1.0'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
