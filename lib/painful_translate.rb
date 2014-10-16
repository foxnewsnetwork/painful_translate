require "painful_translate/version"
require 'active_support'
require 'active_support/core_ext'
require 'capybara'
module PainfulTranslate
  require "painful_translate/google_translator"
  require "painful_translate/translation_page"
  require "painful_translate/client"

  class << self
    def translate(*keys, opts)
      PainfulTranslate::Client.instance.translate keys, opts
    end
  end
  Languages = {
    "af"=>"afrikaans",
    "sq"=>"albanian",
    "ar"=>"arabic",
    "be"=>"belarusian",
    "bg"=>"bulgarian",
    "ca"=>"catalan",
    "zh-CN"=>"chinese_simplified",
    "zh-TW"=>"chinese_traditional",
    "hr"=>"croatian",
    "cs"=>"czech",
    "da"=>"danish",
    "nl"=>"dutch",
    "en"=>"english",
    "et"=>"estonian",
    "tl"=>"filipino",
    "fi"=>"finnish",
    "fr"=>"french",
    "gl"=>"galician",
    "de"=>"german",
    "el"=>"greek",
    "iw"=>"hebrew",
    "hi"=>"hindi",
    "hu"=>"hungarian",
    "is"=>"icelandic",
    "id"=>"indonesian",
    "ga"=>"irish",
    "it"=>"italian",
    "ja"=>"japanese",
    "ko"=>"korean",
    "la"=>"latin",
    "lv"=>"latvian",
    "lt"=>"lithuanian",
    "mk"=>"macedonian",
    "ms"=>"malay",
    "mt"=>"maltese",
    "no"=>"norwegian",
    "fa"=>"persian",
    "pl"=>"polish",
    "pt"=>"portuguese",
    "ro"=>"romanian",
    "ru"=>"russian",
    "sr"=>"serbian",
    "sk"=>"slovak",
    "sl"=>"slovenian",
    "es"=>"spanish",
    "sw"=>"swahili",
    "sv"=>"swedish",
    "th"=>"thai",
    "tr"=>"turkish",
    "uk"=>"ukrainian",
    "vi"=>"vietnamese",
    "cy"=>"welsh",
    "yi"=>"yiddish"
  }
end
