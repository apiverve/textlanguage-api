# Text Language API - Ruby Gem

Text Language is a language detection API that detects the language of any input string, returning the full language name and its two-letter ISO 639-1 code. Send plain text passages or short snippets to identify incoming multilingual content.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_textlanguage'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_textlanguage
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_textlanguage'

# Initialize the client
client = APIVerve::Textlanguage::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ text: "Ceci est un exemple de texte. Il peut détecter la langue" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "Ceci est un exemple de texte. Il peut détecter la langue" })
  puts response["data"]
rescue APIVerve::Textlanguage::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Textlanguage::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Textlanguage::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "language": "french",
    "iso": "fr"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/textlanguage?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/textlanguage?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/textlanguage?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
