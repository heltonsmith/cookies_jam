class CookiesController < ApplicationController
  def set
    session[:current_user] = {
      test_id: {
        name: "Netflix",
        client_id: "ghxfdw3r632"
      }
    }

    cookies[:session_id] = "test_id"
  end

  def show
    current_user = session[:current_user][cookies[:session_id]]
    @u = current_user[:name.to_s]
    @c = current_user[:client_id.to_s]
  end

  def delete
    session.delete :user_alias
    session.delete :client_id
  end
end
