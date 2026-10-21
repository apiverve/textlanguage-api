# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_textlanguage"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Text Language API - Ruby Client"
  spec.description   = "Text Language is a language detection API that detects the language of any input string, returning the full language name and its two-letter ISO 639-1 code. Send plain text passages or short snippets to identify incoming multilingual content."
  spec.homepage      = "https://apiverve.com/marketplace/textlanguage?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/textlanguage-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/textlanguage"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
