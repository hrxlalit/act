class InitializerGenerator < Rails::Generators::Base
	desc "This generator creates an initializer file at config/initializers"
	binding.pry
  def create_initializer_file
    create_file "app/controllers/initializer_controller.rb", "class InitializersController < ApplicationController
end"
  end
end