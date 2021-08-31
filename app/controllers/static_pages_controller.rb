class StaticPagesController < ApplicationController
  def index
    if user_signed_in? 
      @current_user = current_user.id
    end
  end
end
