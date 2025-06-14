# Text::Homoglyph::Cyrillic

Identifies and replaces homoglyphic characters (visually identical or nearly identical characters) with their proper Cyrillic equivalents. Language independent. It simply changes all homoglyphs to Cyrillic letters. If you'd like to keep Latin letters for any reason in your text, you'll have to implement additional language specific logic first.

## Problem

Text containing Cyrillic script corrupted or modified with look-alike characters from other Unicode blocks is difficult to process correctly. For example:

- `мoре` (contains Latin "o" instead of Cyrillic "о")
- `Αлександр` (contains Greek Alpha instead of Cyrillic А)
- `ⲙир` (contains Coptic letters)

This creates issues with:
- Text search and matching
- Font rendering inconsistencies
- Data processing and analysis
- Text normalization

## Installation

```bash
zef install Text::Homoglyph::Cyrillic
```

## Usage

### Basic Cleaning

```raku
use Text::Homoglyph::Cyrillic;

# Clean mixed text
my $dirty = "мoре";  # Contains Latin "o"
my $clean = clean-cyrillic($dirty);
say $clean;  # "море" (proper Cyrillic)

# More examples
say clean-cyrillic("pека");       # "река" 
say clean-cyrillic("Αлександр");  # "Александр"
```

### Detecting Look-alikes

```raku
# Find all look-alike characters in text
my @lookalikes = detect-cyrillic-lookalikes("мoре");
for @lookalikes -> %item {
    say "Found '{%item<char>}' at positions {%item<positions>}, should be '{%item<replacement>}'";
}
# Output: Found 'o' at positions [1], should be 'о'
```

### Verbose Cleaning

```raku
# Get detailed information about the cleaning process
my %result = clean-cyrillic-verbose("Пpивет, мир!");
say "Original: {%result<original>}";
say "Cleaned:  {%result<cleaned>}";
say "Changed:  {%result<changed>}";
say "Replacements: {%result<replacements>}";
```

## API Reference

### Functions

#### `clean-cyrillic(Str $text --> Str)`
Cleans the input text by replacing look-alike characters with proper Cyrillic equivalents.

- **Parameters**: `$text` - Text to clean
- **Returns**: Cleaned text with proper Cyrillic characters

#### `detect-cyrillic-lookalikes(Str $text --> Array)`
Detects all look-alike characters in the text without modifying it.

- **Parameters**: `$text` - Text to analyze
- **Returns**: Array of hashes with keys:
  - `char`: The found look-alike character
  - `replacement`: The proper Cyrillic replacement
  - `positions`: Array of character positions where found

#### `clean-cyrillic-verbose(Str $text --> Hash)`
Performs cleaning and returns detailed information about the process.

- **Parameters**: `$text` - Text to clean
- **Returns**: Hash with keys:
  - `original`: Original input text
  - `cleaned`: Cleaned output text  
  - `replacements`: Array of replacement details
  - `changed`: Boolean indicating if any changes were made

## Use Cases

- **OCR Post-processing**: Clean text extracted by OCR systems
- **Data Normalization**: Standardize Cyrillic text in databases
- **Text Analysis**: Prepare text for linguistic analysis
- **Search Enhancement**: Improve search accuracy by normalizing queries
- **Font Issues**: Fix rendering problems caused by mixed scripts
- **Academic Research**: Clean historical or digitized texts
- **Web Scraping**: Normalize text extracted from web pages

## Contributing

https://github.com/slavenskoj/Raku-Text-Homoglyph-Cyrillic

## Testing

Run the test suite:

```bash
prove -e "raku -I lib" t/
```

## License

This module is available under the Artistic License 2.0.

## Author

Danslav Slavenskoj

## See Also

- [Unicode Confusables](https://www.unicode.org/reports/tr39/) - Unicode Technical Report on Security
- [Cyrillic Script](https://en.wikipedia.org/wiki/Cyrillic_script) - Wikipedia article on Cyrillic
- [Homoglyph](https://en.wikipedia.org/wiki/Homoglyph) - Characters that look similar but are different