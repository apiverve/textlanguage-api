# Text Language API - PHP Package

Text Language is a language detection API that detects the language of any input string, returning the full language name and its two-letter ISO 639-1 code. Send plain text passages or short snippets to identify incoming multilingual content.

## Installation

Install via Composer:

```bash
composer require apiverve/textlanguage
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Textlanguage\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['text' => 'Ceci est un exemple de texte. Il peut détecter la langue']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Textlanguage\Client;
use APIVerve\Textlanguage\Exceptions\APIException;
use APIVerve\Textlanguage\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'Ceci est un exemple de texte. Il peut détecter la langue']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/textlanguage?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/textlanguage?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/textlanguage?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
