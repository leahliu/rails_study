class LoginController < ApplicationController
  def login
    @user = User.find
  end
end
