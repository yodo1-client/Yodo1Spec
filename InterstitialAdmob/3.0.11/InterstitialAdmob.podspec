Pod::Spec.new do |s|
    s.name             = 'InterstitialAdmob'
    s.version          = '3.0.11'
    s.summary          = '2018.11.12 更新admob v7.35.2'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC

    s.homepage         = 'https://github.com'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => "#{s.version}" + "/LICENSE" }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :http => "https://cocoapods.yodo1api.com/advert/interstitial/" + "#{s.name}" + "/"+ "#{s.version}" + ".zip" }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '8.0'

   #s.source_files = tags + '/*.{h,m}'

    #s.public_header_files = tags + '/*.h'

    s.vendored_libraries = "#{s.version}" + '/*.a'

    s.requires_arc = true

    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "ONLY_ACTIVE_ARCH" => "NO"
    }

    s.frameworks = 'UIKit'

    s.dependency 'Yodo1Interstitial','3.0.7'
    s.dependency 'Yodo1AdsAdmob','3.0.3'
    s.dependency 'Yodo1ThirdsAnalytics','3.0.7'

end
