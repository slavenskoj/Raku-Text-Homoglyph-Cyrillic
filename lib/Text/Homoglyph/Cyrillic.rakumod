unit module Text::Homoglyph::Cyrillic;

my %lookalikes = 
    # Latin look-alikes (true homoglyphs only)
    'a' => 'а', 'A' => 'А',  # Latin to Cyrillic а/А
    'e' => 'е', 'E' => 'Е',  # Latin to Cyrillic е/Е  
    'o' => 'о', 'O' => 'О',  # Latin to Cyrillic о/О
    'p' => 'р', 'P' => 'Р',  # Latin to Cyrillic р/Р
    'c' => 'с', 'C' => 'С',  # Latin to Cyrillic с/С
    'y' => 'у', 'Y' => 'У',  # Latin to Cyrillic у/У
    'x' => 'х', 'X' => 'Х',  # Latin to Cyrillic х/Х
    'k' => 'к', 'K' => 'К',  # Latin to Cyrillic к/К
    'm' => 'м', 'M' => 'М',  # Latin to Cyrillic м/М
    'n' => 'н', 'H' => 'Н',  # Latin n to Cyrillic н, Latin H to Cyrillic Н
    'T' => 'Т',              # Latin T to Cyrillic Т
    'B' => 'В',              # Latin B to Cyrillic В
    '3' => 'З',              # Digit 3 to Cyrillic З
    '6' => 'б',              # Digit 6 sometimes used for б
    'i' => 'і',              # Latin i sometimes used for Ukrainian і
    'I' => 'І',              # Latin I sometimes used for Ukrainian І
    'j' => 'ј',              # Latin j sometimes used for Macedonian/Serbian ј
    'J' => 'Ј',              # Latin J sometimes used for Macedonian/Serbian Ј
    
    
        'ï' => 'ї',
    'Ï' => 'Ї',             
    
    
    'S' => 'Ѕ',              # 
        's' => 'ѕ',              # 
    
    
    
    # Greek look-alikes (true homoglyphs only)
    'α' => 'а', 'Α' => 'А',  # Greek alpha (identical)
    'β' => 'в', 'Β' => 'В',  # Greek beta (very similar)
    'ε' => 'є', 'Ε' => 'Е',  # Greek epsilon (similar to е)
    'ι' => 'ꙇ', 'Ι' => 'І',  # Greek iota (identical to і/І)
    'κ' => 'к', 'Κ' => 'К',  # Greek kappa (identical)
  'Μ' => 'М',  # Greek mu (very similar)
    'ν' => 'н',   # Greek nu (identical)
    'ο' => 'о', 'Ο' => 'О',  # Greek omicron (identical)
    'π' => 'п', 'Π' => 'П',  # Greek pi (identical)
    'ρ' => 'р', 'Ρ' => 'Р',  # Greek rho (identical)
    'τ' => 'т', 'Τ' => 'Т',  # Greek tau (identical)
     'Υ' => 'У',  # Greek upsilon (similar)
    'φ' => 'ф', 'Φ' => 'Ф',  # Greek phi (identical)
    'χ' => 'х', 'Χ' => 'Х',  # Greek chi (identical)
    
    # IPA symbols that are true homoglyphs
    'ʒ' => 'ж',              # Voiced postalveolar fricative (similar shape)
    'χ' => 'х',              # Voiceless uvular fricative (identical to х)
    'ħ' => 'ћ',              # Voiceless pharyngeal fricative (similar to һ)
    'ɸ' => 'ф',              # Voiceless bilabial fricative (similar to ф)
    'θ' => 'ө',              # Voiceless dental fricative (identical to ө)
   
    
    
    # Coptic homoglyphs
 # Coptic look-alikes
 'ⲁ' => 'а',              # Coptic alpha
 'ⲃ' => 'в',              # Coptic vida
  'ⲅ' => 'г',              # Coptic gamma
  'ⲇ' => 'д',              # Coptic dalda
  'ⲉ' => 'е',              # Coptic eie
  'ⲍ' => 'ꙁ',              # Coptic zata
  'ⲏ' => 'н',              # Coptic hate
  'ⲑ' => 'ө',              # Coptic thethe
  'ⲓ' => 'і',              # Coptic iauda
  'ⲕ' => 'к',              # Coptic kapa
  'ⲗ' => 'л',              # Coptic laula
  'ⲙ' => 'м',              # Coptic mi
  'ⲛ' => 'н',              # Coptic ni
  'ⲝ' => 'ѯ',              # Coptic ksi
  'ⲟ' => 'о',              # Coptic o
  'ⲡ' => 'п',              # Coptic pi
  'ⲣ' => 'р',              # Coptic ro
  'ⲥ' => 'с',              # Coptic sima
  'ⲧ' => 'т',              # Coptic tau
  'ⲩ' => 'у',              # Coptic ua
  'ⲫ' => 'ф',              # Coptic fi
  'ⲭ' => 'х',              # Coptic khi
  'ⲯ' => 'ѱ',              # Coptic psi
  'ⲱ' => 'ѡ',              # Coptic o
 
    # Fullwidth forms (true homoglyphs)
    'ａ' => 'а',              # Fullwidth Latin small letter a
    'Ａ' => 'А',              # Fullwidth Latin capital letter A
    'ｃ' => 'с',              # Fullwidth Latin small letter c
    'Ｃ' => 'С',              # Fullwidth Latin capital letter C
    'ｅ' => 'е',              # Fullwidth Latin small letter e
    'Ｅ' => 'Е',              # Fullwidth Latin capital letter E
    'ｈ' => 'һ',              # Fullwidth Latin small letter h
    'Ｈ' => 'Н',              # Fullwidth Latin capital letter H
    'ｉ' => 'і',              # Fullwidth Latin small letter i
    'Ｉ' => 'І',              # Fullwidth Latin capital letter I
    'ｊ' => 'ј',              # Fullwidth Latin small letter j
    'Ｊ' => 'Ј',              # Fullwidth Latin capital letter J
    'ｋ' => 'к',              # Fullwidth Latin small letter k
    'Ｋ' => 'К',              # Fullwidth Latin capital letter K
    'ｍ' => 'м',              # Fullwidth Latin small letter m
    'Ｍ' => 'М',              # Fullwidth Latin capital letter M
    'ｎ' => 'н',              # Fullwidth Latin small letter n
    'ｏ' => 'о',              # Fullwidth Latin small letter o
    'Ｏ' => 'О',              # Fullwidth Latin capital letter O
    'ｓ' => 'с',              # Fullwidth Latin small letter s
    'Ｓ' => 'С',              # Fullwidth Latin capital letter S
    'Ｔ' => 'Т',              # Fullwidth Latin capital letter T
    'ｘ' => 'х',              # Fullwidth Latin small letter x
    'Ｘ' => 'Х',              # Fullwidth Latin capital letter X
    'ｙ' => 'у',              # Fullwidth Latin small letter y
    'Ｙ' => 'У',              # Fullwidth Latin capital letter Y
    
    # Mathematical italic/bold (true homoglyphs)
    '𝑎' => 'а',              # Mathematical italic small a
    '𝐴' => 'А',              # Mathematical italic capital A
    '𝑐' => 'с',              # Mathematical italic small c
    '𝐶' => 'С',              # Mathematical italic capital C
    '𝑒' => 'е',              # Mathematical italic small e
    '𝐸' => 'Е',              # Mathematical italic capital E
    'ℎ' => 'һ',              # Planck constant (looks like h)
    '𝐻' => 'Һ',              # Mathematical italic capital H
    '𝑖' => 'і',              # Mathematical italic small i
    '𝐼' => 'І',              # Mathematical italic capital I
    '𝑗' => 'ј',              # Mathematical italic small j
    '𝐽' => 'Ј',              # Mathematical italic capital J
    '𝑘' => 'к',              # Mathematical italic small k
    '𝐾' => 'К',              # Mathematical italic capital K
    '𝑚' => 'м',              # Mathematical italic small m
    '𝑀' => 'М',              # Mathematical italic capital M
    '𝑛' => 'н',              # Mathematical italic small n
    '𝑁' => 'Н',              # Mathematical italic capital N
    '𝑜' => 'о',              # Mathematical italic small o
    '𝑂' => 'О',              # Mathematical italic capital O
    '𝑝' => 'п',              # Mathematical italic small p
    '𝑃' => 'П',              # Mathematical italic capital P
    '𝑟' => 'р',              # Mathematical italic small r
    '𝑅' => 'Р',              # Mathematical italic capital R
    '𝑠' => 'с',              # Mathematical italic small s
    '𝑆' => 'С',              # Mathematical italic capital S
    '𝑡' => 'т',              # Mathematical italic small t
    '𝑇' => 'Т',              # Mathematical italic capital T
    '𝑥' => 'х',              # Mathematical italic small x
    '𝑋' => 'Х',              # Mathematical italic capital X
    '𝑦' => 'у',              # Mathematical italic small y
    '𝑌' => 'У',              # Mathematical italic capital Y
    
   # Roman numerals (true homoglyphs)
    'Ⅰ' => 'І',              # Roman numeral one
    'Ⅴ' => 'Ѵ',              # Roman numeral five
    'Ⅹ' => 'Х',              # Roman numeral ten
    'Ⅽ' => 'С',              # Roman numeral one hundred
    'Ⅿ' => 'М',              # Roman numeral one thousand
    'ⅰ' => 'і',              # Small roman numeral one
    'ⅴ' => 'ѵ',              # Small roman numeral five
    'ⅹ' => 'х',              # Small roman numeral ten
    'ⅽ' => 'с',              # Small roman numeral one hundred
    
    # Geometric shapes (only truly similar ones)
    '○' => 'о',              # White circle (identical to о)
    '◯' => 'о',              # Large circle (similar to о)
    
;

sub clean-cyrillic(Str $text is copy --> Str) is export {
    for %lookalikes.kv -> $from, $to {
        $text ~~ s:g/$from/$to/;
    }
    return $text;
}

sub detect-cyrillic-lookalikes(Str $text --> Array) is export {
    my @found;
    for %lookalikes.keys -> $char {
        if $text.contains($char) {
            @found.push: {
                char => $char,
                replacement => %lookalikes{$char},
                positions => $text.indices($char).Array
            };
        }
    }
    return @found;
}

sub clean-cyrillic-verbose(Str $text is copy --> Hash) is export {
    my @replacements = detect-cyrillic-lookalikes($text);
    my $cleaned = clean-cyrillic($text);
    
    return {
        original => $text,
        cleaned => $cleaned,
        replacements => @replacements,
        changed => $text ne $cleaned
    };
}