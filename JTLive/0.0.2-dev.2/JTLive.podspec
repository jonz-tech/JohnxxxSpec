version = '0.0.3-dev.1'
source = { :git => 'https://github.com/jonz-tech/JTLive.git'} #:branch  => '#branchName'
source[:tag] = "v#{version}"
Pod::Spec.new do |s|
    s.name         = 'JTLive'
    s.version      = version
    s.summary      = 'JTLive projet'
    s.homepage     = 'https://github.com/jonz-tech'
    s.license      = 'MIT'
    s.authors      = { "jonz-tech" => "jonz-tech@gmail.com" }
    s.platform     = :ios, '8.0'
    s.source       = source
    s.source_files = 'JTLive/out/*.{h}','JTLive/source/JTLiveViewController.h'
    spec.source_files = 'JTLive/out/*.{h}','JTLive/source/JTLiveViewController.h'
    s.requires_arc = true
end
