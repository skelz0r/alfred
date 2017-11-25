class GoogleAssistantController < ApplicationController
  def conversation
    assistant_response = GoogleAssistant.respond_to(params, response) do |assistant|
      assistant.intent.main do
        assistant.tell("Mais encore ..?")
      end

      assistant.intent.custom('skelz0bot.MIAM') do
        food = assistant.arguments.find { |arg| arg.name == 'food' }.text_value

        assistant.tell("Tu crois que je vais manger #{food} ? T'es pas bien toi...")
      end

      assistant.intent.custom('skelz0bot.CALM') do
        assistant.tell("Hey oh, on se calme au fond svp. merci.")
      end
    end

    render json: assistant_response
  end
end
