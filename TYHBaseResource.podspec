#
#  Be sure to run `pod spec lint TYHBaseResource.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "TYHBaseResource"
  spec.version      = "0.0.5"
  spec.summary      = "Image resource"

  spec.description  = 'a subject of Image resource'

  spec.homepage     = "https://github.com/Shinkai123/TYHResource"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "tyh" => "1210480377@qq.com" }
  spec.swift_version = '4.2'

  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/Shinkai123/TYHResource.git", :tag => spec.version.to_s }


  spec.source_files = "TYHBaseResource/Classes/**/*{.swift}"

  spec.dependency 'CTMediator'
  
  spec.subspec "Extension" do |sp|
  sp.source_files = 'TYHBaseResource/Classes/TYHImage/Extension/*{.swift}'
  end
  
  spec.subspec "Target" do |sp|
  sp.source_files = 'TYHBaseResource/Classes/TYHImage/Target/*{.swift}'
  end
  
  spec.subspec "HomeImage" do |sp|
    sp.resource_bundles = {
        'TYHResourceHome' => ['TYHBaseResource/Assets/Assets_Home/**/*']
    }
    sp.dependency 'TYHBaseResource/Classes/TYHImage/Extension'
    sp.dependency 'TYHBaseResource/Classes/TYHImage/Target'
   end
   
    
}

end
