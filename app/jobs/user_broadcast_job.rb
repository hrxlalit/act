class UserBroadcastJob < ApplicationJob  
  queue_as :default  

  def perform(user)  
    ActionCable.server.broadcast 'user_channel', name: render(user)  
  end  

  private   
    def render(user)  
        ApplicationController.renderer.render(json: '/api/v1/users', locals: {user: user})  
    end  
end