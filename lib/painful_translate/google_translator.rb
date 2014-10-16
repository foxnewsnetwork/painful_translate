class PainfulTranslate::GoogleTranslator
  attr_accessor :session, :to, :from, :strings

  def translations
    PainfulTranslate::TranslationPage.new(_page).translation_output_strings
  end

  private
  def _page
    session.tap { |s| s.visit _page_url }
  end
  
  def _page_url
    @page_url ||= ["https://translate.google.com", _transition, _query_string].join "/"
  end
  def _transition
    '#' + [from, to].map(&:to_s).join('/')
  end
  def _query_string
    strings.join("\n").to_query("").gsub /^=+/, ""
  end
end

