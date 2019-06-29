Pod::Spec.new do |s|
  s.name         = "OpensslDynamicV111"
  s.version      = '111.6717.0-dev.4'
  s.summary      = "openssl library"
  s.homepage     = "https://www.openssl.org"
  s.license      = "OpenSSL License"
  s.author       = "OpensslDynamicV111 Project"
  s.source       = { :git => 'https://github.com/jonz-tech/OpensslDynamicV111.git', :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  #s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = '*.{framework}'
  # s.public_header_files = 'Source/*.{h}'

  # s.dependency 'openssl', '111.6717.0' 
  
end