# PainfulTranslate

This is the poor man's version of https://github.com/seejohnrun/easy_translate

For those of us who want to use Google Translate, but can't afford to sign up for the api (seriously though, it's apparently $20 per million characters translated, and if you can't afford that, I don't know how you're managing to write computer programs and whatnot).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'painful_translate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install painful_translate

## Usage

The API is very much the same as easy_translate... however, because we don't actually use Google's API, you'll need capybara and selenium-webdriver instead of an API key

## Batch translation (Yay!)
```ruby
# multiple strings and specify your languages
PainfulTranslate.translate('Hello', 'Goodbye', :to => :es, :from => :en) # => ["¡Hola", "Despedida"]

# multiple strings auto-detect
PainfulTranslate.translate('Hello', 'Goodbye', :to => :es) # => ["¡Hola", "Despedida"]
```

## You want language detection too?

Sorry, not built yet

## Batch detection (Woohoo!)

Sorry, not built yet

## Need confidence in your detections?

Sorry, not built yet

---

## A note on capybara and selenium and how this thing works

This gem will open up selenium via capybara which, for most of you, will mean it actually opens up firefox and visits https://translate.google.com . It then fills out the translation form, and fetches the translated answer from the webpage. In other words, this is exactly what you (as a lowly human) would do if you had to translate something with Google. Consequently, this process is slow and painful.

I suggest this thing be used to make seed files and whatnot for nascent rails projects, and not actively in production.

Because the scumbag engineers at Google are getting smart with users rapidly hitting their translate site, we now refresh the session each time and sleep 2 seconds for the page to load. Go grab a drink while you wait.

---

## List of languages

```ruby
# list from EasyTranslate::LANGUAGES which was originally from <http://translate.google.com/>
PainfulTranslate::Languages # => { 'en' => 'english', ... }
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/painful_translate/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
