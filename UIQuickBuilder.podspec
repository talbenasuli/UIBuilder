Pod::Spec.new do |spec|

  spec.name         = "UIQuickBuilder"
  spec.version      = "1.3.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you build UI quicker via code.
                   DESC

  spec.homepage     = "https://github.com/talbenasuli/UIBuilder"
  
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Tal Ben Asuli" => "talbenasuli@gmail.com" }

  spec.ios.deployment_target = "11.0"
  spec.swift_version = "5.0"

  spec.source        = { :git => "https://github.com/talbenasuli/UIBuilder.git", :tag => spec.version.to_s }
  spec.source_files  = "UIBuilder/**/*.{h,m,swift}"

end
