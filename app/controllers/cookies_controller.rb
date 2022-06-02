class CookiesController < ApplicationController
  def set
    cookies[:user_alias] = "Netflix"
    cookies[:client_id] = "ghxfdw3r632"
  end

  def show
    @u = cookies[:user_alias]
    @c = cookies[:client_id]
  end

  def delete
    cookies.delete :user_alias
    cookies.delete :client_id
  end
end
