class ApplicationController < ActionController::Base

  def load_current_user
    the_id = session.fetch(:user_id)
  
    @current_user = User.where({ :id => the_id }).at(0)
  end

  before_action(:load_current_user)

end
