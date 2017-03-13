require 'motion-ai'
require 'multi_json'

module Lita
  module Handlers
    class Motionai < Handler
      config :api_key, type: String, required: true
      config :bot_id, type: Integer, required: true

      route(/^\s*(.+)\s*/i, :anything, command: false, help: { 'listen' => 'Say anything and the bot will listen' })

      def client
        return @_client if @_client
        @_client = MotionAI::Client.new config.api_key, config.bot_id
        return @_client
      end

      def anything(response)
        heard = response.match_data[1]
        Lita.logger.debug("Message Heard: [#{heard}]")

        res = client.message_bot msg: heard, session: response.user.id

        Lita.logger.debug(MultiJson.encode(res.body))

        if res.status == 200 && res.body.key?('botResponse')
          response.reply res.body['botResponse']
        else
          if res.status != 200
            Lita.logger.error("MotionAI API status #{res.status}")
          elsif !res.body.key? 'botResponse'
            Lita.logger.error("MotionAI API `botResponse` not found")
          end
        end
      end
    end
  end
  Lita.register_handler(Lita::Handlers::Motionai)
end
