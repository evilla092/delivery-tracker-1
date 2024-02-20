class HomeController < ApplicationController

  def index
    @current_time = DateTime.now
    if current_user != nil
      render(template: 'home_templates/index')
    else
      redirect_to("/users/sign_in")
    end
  end
end
