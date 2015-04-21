Pod::Spec.new do |s|
  s.name          = "SHPullAcrossViewController"
  s.version       = "1.0"
  s.summary       = "A UIViewController that pulls a UIView over another UIView."
  s.homepage      = "https://github.com/CarvineJimmy/SHPullAcrossViewController"
  s.license       = "MIT"
  s.author        = { "Carvine Software" => "contactus@carvinesoftware.com" }
  s.source        = { :git => "https://github.com/CarvineJimmy/SHPullAcrossViewController.git", :tag =>  "v#{s.version}" }
  s.platform      = :ios, "7.0"
  s.source_files  = "SHPullAcrossViewController/*.{h,m}"
  s.framework     = "CoreGraphics"
  s.requires_arc  = true
end
