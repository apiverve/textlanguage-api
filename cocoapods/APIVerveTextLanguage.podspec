Pod::Spec.new do |s|
  s.name             = 'APIVerveTextLanguage'
  s.version          = '1.2.3'
  s.summary          = 'Text Language is a language detection API that detects the language of any input string, returning the full language name and its...'
  s.description      = <<-'DESC'
Text Language is a language detection API that detects the language of any input string, returning the full language name and its two-letter ISO 639-1 code. Send plain text passages or short snippets to identify incoming multilingual content.

This iOS/macOS SDK provides a convenient way to access the Text Language from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/textlanguage?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/textlanguage-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveTextLanguage/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
