Pod::Spec.new do |s|

  s.name         = "HWLog"
  s.version      = "1.1.0"
  s.summary      = "HWLog"
  s.homepage     = "https://github.com/wowbby/HWLog"
  s.ios.deployment_target = '7.0'
  s.license      = "MIT"
  s.author             = {
                          "wowbby" => "zhengzx@haierubic.com.com"
 }
  s.source        = { :git => "https://github.com/wowbby/HWLog.git", :tag => s.version.to_s }
  s.source_files  = "HWLog/*.{h,m}"
  s.platform      = :ios, "7.0"
  s.requires_arc  = true
  s.dependency "CocoaLumberjack", "~> 2.2.0"
end
