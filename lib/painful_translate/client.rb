require 'singleton'
class PainfulTranslate::Client
  class NoTargetLanguage < StandardError; end

  class << self
    def instance
      new
    end
  end

  def translate(*keys, options)
    opts = _normalize options
    PainfulTranslate::GoogleTranslator.new.tap do |t|
      t.strings = keys
      t.to = opts[:to]
      t.from = opts[:from]
      t.session = _session
    end.translations
  end

  private
  def _session
    _raw_session.tap(&:reset!)
  end

  def _raw_session
    @session ||= Capybara::Session.new :selenium
  end

  def _normalize(opts={})
    {
      to: opts[:to] || _uh_oh!,
      from: opts[:from] || :auto
    }
  end

  def _uh_oh!
    raise NoTargetLanguage, "You didn't specific a target language to translate into"
  end
end