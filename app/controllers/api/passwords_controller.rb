module Api
  class PasswordsController < ApplicationController
    def index
      puts "Index action called"
      passwords = Password.all
      render json: passwords, status: 200
    end
  end
end
