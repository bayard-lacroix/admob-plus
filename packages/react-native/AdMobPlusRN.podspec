require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "AdMobPlusRN"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.authors      = package['author']
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => package['repository']['url'], :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"

  s.dependency "React-Core"
  s.dependency 'Google-Mobile-Ads-SDK', '>= 8.11.0'
end
