version = '0.0.2-dev.3'
source = { :git => 'https://github.com/jonz-tech/JTLive.git'} #:branch  => '#branchName'
source[:tag] = "v#{version}"
Pod::Spec.new do |s|
  s.name             = "JTLive"
  s.version          = version
  s.summary          = "JTLive projet"
  s.homepage         = "https://github.com/jonz-tech"
  s.license =  { :type => 'BSD' }
  s.source   = source
  s.author           = { "jonz-tech" => "jonz-tech@gmail.com" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.default_subspec = 'JTLive'

  s.subspec 'JTLive' do |spec|
    spec.requires_arc            = true
    spec.ios.dependency 'JTLive/include'
    spec.framework = 'UIKit'
  end

  s.subspec 'include' do |spec|
    spec.requires_arc            = true
    spec.public_header_files = 'JTLive/out/*.{h}','JTLive/source/JTLiveViewController.h'
    spec.source_files = 'JTLive/out/*.{h}','JTLive/source/JTLiveViewController.h' #,'JTReuse/include/*.{h}'
  end
end