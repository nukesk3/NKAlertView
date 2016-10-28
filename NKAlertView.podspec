Pod::Spec.new do |s|
  s.name         = "NKAlertView"
  s.version      = "0.1.1"
  s.summary      = "Easily customizable AlertView library available.It is written in swift."
  s.homepage     = "https://github.com/nukesk3/NKAlertView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "nukesk3" => "cobi.dqn@gmail.com" }
  s.social_media_url   = "https://twitter.com/nukesaku_03"
  s.platform     = :ios,"9.0"
  s.source       = { :git => "https://github.com/nukesk3/NKAlertView.git", :tag => s.version }
  s.source_files  = "NKAlertView/*"
  s.requires_arc = true
end
