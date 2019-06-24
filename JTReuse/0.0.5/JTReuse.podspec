version = '0.0.5'
source = { :git => 'https://github.com/jonz-tech/JTReuse.git' }

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
    spec.ios.dependency = 'JTReuse/source'
    spec.ios.dependency = 'JTReuse/include'
    spec.ios.dependency = 'JTReuse/Resources'
  end
  s.subspec 'source' do |spec|
    spec.requires_arc            = true
    spec.source_files = 'JTReuse/JTReuseSource/*.{h,m,c,cpp,mm}','OutHeader/*.{h}'
  end
  s.subspec 'include' do |spec|
    spec.requires_arc            = true
    spec.source_files = 'JTReuse/OutHeader/*.{h}'
  end
  s.subspec 'Resources' do |spec|
    spec.resource_bundles = {
          'JTReuseBundle' => ['JTReuse/Resources/*.{xib,png}'],
    }
  end
end