class PainfulTranslate::TranslationPage
  attr_accessor :session
  def initialize(session)
    @session = session
  end
  def translation_output_strings
    sleep 3.seconds # give some time for Jewgle to look the page
    session.find(:xpath, '//*[@id="result_box"]').all(:css, 'span.hps').map(&:text)
  end
end