require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "SnapchatKit"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  SnapchatKit for all Snap's frameworks !
                   DESC
  s.homepage     = "https://github.com/BreadApp/react-snap-kit"
  s.license      = package["license"]
  s.author       = { "author" => package["author"]["email"], "name" => package["author"]["name"] }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/BreadApp/react-snap-kit", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "SnapSDK/SCSDKLoginKit", "~> 1.12"
  s.dependency "SnapSDK/SCSDKCreativeKit", "~> 1.12"
end

