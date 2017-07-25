Pod::Spec.new do |s|

s.name         = "JKit-Swift"
s.version      = "1.0"
s.summary      = "Fast iOS Develope App Kit"
s.description  = <<-DESC
                    JKit-Swift 开发时用的工具类
                 DESC
s.homepage     = "https://github.com/GitHubZebra/JKit-Swift"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "陈杰" => "mr_banma@126.com" }
s.platform = :ios

s.ios.deployment_target = '8.0'

s.source       = { :git => "https://github.com/GitHubZebra/JKit-Swift.git", :tag => s.version }
s.source_files = "JKit-Swift/**/*.{h,m,plist}"
s.requires_arc = true

s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }
end
