class TestSidekiqJob < ApplicationJob
    queue_as :default
  
    def perform user_id, last_name
        User.find(user_id).update_columns(lname: last_name)
    end
  end
  