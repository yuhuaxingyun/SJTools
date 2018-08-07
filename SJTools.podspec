Pod::Spec.new do |s|
  s.name         = "SJTools"
  s.version      = "1.1.0"
  s.summary      = "SJTools for ios"
  s.homepage     = "https://github.com/yuhuaxingyun/SJTools"
  s.license      =  'MIT'
  s.author       = { "yuhuaxingyun" => "2496157421@qq.com" }
  s.source       = { :git => "https://github.com/yuhuaxingyun/SJTools.git", :tag => "#{s.version}" }
  s.source_files  = "SJTools/*.{h,m}"
end
