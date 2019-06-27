version = '0.0.2'
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
    spec.ios.dependency 'JTLive/source'
    spec.ios.dependency 'JTLive/include'
    spec.ios.dependency 'JTLive/resources'
    spec.framework = 'UIKit'
  end

  s.subspec 'source' do |spec|
    spec.requires_arc            = true
    spec.source_files = 'JTLive/source/*.{h,m,c,cpp,mm}'
    # spec.dependency 'JTReuse','0.0.9'
  end

  s.subspec 'include' do |spec|
    spec.requires_arc            = true
    spec.source_files = 'JTLive/out/*.{h}' #,'JTReuse/include/*.{h}'
    # spec.dependency 'JTReuse/include','0.0.9'
  end

  s.subspec 'resources' do |spec|
    spec.resource_bundles = {
          'JTLiveBundle' => ['JTLive/resources/*.{xib,png}'],
    }
    # spec.resources = 'JTReuse/resources'
  end

end