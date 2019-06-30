version = '0.1.0-dev.1'
source = { :git => 'https://github.com/jonz-tech/JTReuse.git'} #:branch  => '#branchName'
source[:tag] = "v#{version}"
Pod::Spec.new do |s|
  s.name             = "JTReuse"
  s.version          = version
  s.summary          = "JTReuse projet"
  s.homepage         = "https://github.com/jonz-tech"
  s.license =  { :type => 'BSD' }
  s.source   = source
  s.author           = { "jonz-tech" => "jonz-tech@gmail.com" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.default_subspec = 'JTReuse'

  s.subspec 'JTReuse' do |spec|
    spec.requires_arc            = true
    spec.ios.dependency 'JTReuse/source'
    spec.ios.dependency 'JTReuse/include'
    spec.ios.dependency 'JTReuse/resources'
    spec.framework = 'UIKit'
  end

  s.subspec 'source' do |spec|
    spec.requires_arc            = true
    spec.source_files = 'JTReuse/JTReuse/JTReuseSource/*.{h,m,c,cpp,mm}'
    spec.ios.dependency 'JTReuse/include'
  end

  s.subspec 'include' do |spec|
    spec.requires_arc            = true
    spec.source_files = 'JTReuse/JTReuse/OutHeader/*.{h}'
  end

  s.subspec 'resources' do |spec|
    spec.resource_bundles = {
          'JTReuseBundle' => ['JTReuse/JTReuse/Resources/*.{xib,png}'],
    }
  end

end