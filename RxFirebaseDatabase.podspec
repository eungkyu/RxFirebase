Pod::Spec.new do |s|
    s.name             = 'RxFirebaseDatabase'
    s.version          = '0.3.11'
    s.summary          = 'RxSwift extensions for FirebaseDatabase.'

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
    RxSwift extensions for RxFirebaseDatabase.
    DESC

    s.homepage         = 'https://github.com/RxSwiftCommunity/RxFirebase'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Arnaud Dorgans' => 'arnaud.dorgans@gmail.com' }
    s.source           = { :git => 'https://github.com/RxSwiftCommunity/RxFirebase.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.cocoapods_version = '>= 1.10.0'
    s.ios.deployment_target = '10.0'
    s.osx.deployment_target = '10.12'
    s.tvos.deployment_target = '10.0'

    s.static_framework = true
    s.dependency 'RxSwift', '~> 6'
    s.dependency 'RxCocoa', '~> 6'
    s.dependency 'FirebaseDatabase', '~> 7'

    s.source_files = 'Sources/Database/**/*'
end
