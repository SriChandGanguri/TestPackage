Pod::Spec.new do |spec|
spec.name         = "TestPackage"
spec.version      = "1.2.0"
spec.summary      = "Brief description"
spec.description  = <<-DESC
This is a way longer description
DESC
spec.homepage     = "https://github.com/SriChandGanguri/TestPackage"
spec.license      = { :type => "MIT", :file => "LICENSE" }
spec.author             = { "Sri Chand" => "srichand@uvik.in" }
spec.documentation_url = "https://link_to_documentation.com"
spec.platforms = { :ios => "13.0", :osx => "10.15", :watchos => "6.0" }
spec.swift_version = "5.1"
spec.source       = { :git => "https://github.com/SriChandGanguri/TestPackage", :tag => "#{spec.version}" }
spec.xcconfig = { "SWIFT_VERSION" => "5.1" }
spec.dependency 'Alamofire', '~> 5.6.4'
end
