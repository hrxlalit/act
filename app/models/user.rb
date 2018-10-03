class User < ApplicationRecord
  after_create_commit { UserBroadcastJob.perform_later self }  
  after_update_commit { UserBroadcastJob.perform_later self }  
  after_destroy { UserBroadcastJob.perform_later self }  
end
