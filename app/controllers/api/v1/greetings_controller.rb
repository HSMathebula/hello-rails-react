class Api::V1::GreetingsController < ApplicationController
    def index
        count = Greeting.count
        random_offset = rand(count)
        @greeting = Greeting.offset(random_offset).first
        render json: @greeting
    end
end
