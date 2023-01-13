Pod::Spec.new do |spec|
spec.name         = "TestPackageSriChand"
spec.version      = "1.3.0"
spec.summary      = "Brief description"
spec.description  = <<-DESC
This is a way longer description
DESC
spec.homepage     = "https://github.com/SriChandGanguri/TestPackage"
spec.license          = { :type => "MIT", :text => "MIT License" }
spec.author             = { "Sri Chand" => "srichand@uvik.in" }
spec.documentation_url = "https://github.com/SriChandGanguri/TestPackage"
spec.platforms = { :ios => "13.0" }
spec.swift_version = "5.1"
spec.source       = { :http => "https://github.com/SriChandGanguri/TestPackage/blob/main/TestFramework.xcframework.zip" }
spec.ios.vendored_framework = "TestFramework.xcframework"
spec.dependency 'Alamofire', '~> 5.6.4'
end
