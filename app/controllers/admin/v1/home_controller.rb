# frozen_string_literal: true

module Admin::V1
  class HomeController < ApiController
    def index
      render json: { message: "Welcome to the API" }
    end
  end
end
