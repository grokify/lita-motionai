# Lita Motion AI Handler

[![Gem Version][gem-version-svg]][gem-version-link]
[![Dependency Status][dependency-status-svg]][dependency-status-link]
[![Codacy Badge][codacy-svg]][codacy-link]
[![Downloads][downloads-svg]][downloads-link]
[![Docs][docs-rubydoc-svg]][docs-rubydoc-link]
[![License][license-svg]][license-link]

Motion AI is a bot service that provides visiual design and hosting capabilities for conversational bots. Using this handler a Lita bot can offload conversational handling to Motion AI. The handler accomplishes this by sending all received messages to Motion AI by API and responding with the message returned by Motion AI.

## Configuration

### Direct

```ruby
Lita.configure do |config|

  # Motion AI API Info
  config.handlers.motionai.api_key = 'my_api_key'
  config.handlers.motionai.bot_id = 12345          # your Motion AI bot id

end
```

### Using LitaDotenv

[LitaDotenv](https://github.com/grokify/lita_dotenv) is a way to load in Lita config parameters from the environment, including the `.env` file. Some use cases include:

* using the `.env` file
* using Heroku environment variables

```
LITA_HANDLERS_MOTIONAI_apiKey=my_api_key
LITA_HANDLERS_MOTIONAI_botId__TYPEINT=12345
```

## Links

Motion AI

* https://motion.ai

 [gem-version-svg]: https://badge.fury.io/rb/lita-motionai.svg
 [gem-version-link]: http://badge.fury.io/rb/lita-motionai
 [downloads-svg]: http://ruby-gem-downloads-badge.herokuapp.com/lita-motionai
 [downloads-link]: https://rubygems.org/gems/lita-motionai
 [dependency-status-svg]: https://gemnasium.com/grokify/lita-motionai.svg
 [dependency-status-link]: https://gemnasium.com/grokify/lita-motionai
 [codacy-svg]: https://api.codacy.com/project/badge/Grade/08a78318461441abaca6930dd35cd17f
 [codacy-link]: https://www.codacy.com/app/grokify/lita-motionai
 [docs-rubydoc-svg]: https://img.shields.io/badge/docs-rubydoc-blue.svg
 [docs-rubydoc-link]: http://www.rubydoc.info/gems/lita-motionai/
 [license-svg]: https://img.shields.io/badge/license-MIT-blue.svg
 [license-link]: https://github.com/grokify/motion-ai-ruby/blob/master/LICENSE.md
