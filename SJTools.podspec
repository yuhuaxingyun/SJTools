Pod::Spec.new do |s|

  s.name         = "SJTools"
  s.version      = "0.0.1"
  s.summary      = "SJTools for ios"

  s.homepage     = "https://github.com/yuhuaxingyun"

  s.license          =   { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "yuhuaxingyun" => "2496157421@qq.com" }

  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/yuhuaxingyun/SJTools.git", :tag => "0.0.1" }


  s.source_files  = "SJTools", "SJTools/**/*.{h,m}"

  s.framework  = "UIKit"
  # s.frameworks = "SomeFramework", "AnotherFramework"

end
