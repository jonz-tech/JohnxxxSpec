Pod::Spec.new do |s|
  s.name         = "openssl"
  s.version      = '1.0.2b-dev.3'
  s.summary      = "openssl library fro 1.0.2b version"
  s.homepage     = "https://www.openssl.org"
  s.license      = "OpenSSL License"
  s.author       = "jonz-tech"
  s.source       = { :git => 'https://github.com/jonz-tech/openssl1.0.2b.git', :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  #s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.source_files = 'include/*.{h,m,cpp}','lib/*.{a}','*.{h,cpp}'
  s.public_header_files = 'include/*.{h}'  
end