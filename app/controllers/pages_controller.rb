class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def profile
    @user = current_user
  end

  def damien
    @damienuser = User.find_by(first_name: "Damien")
  end
end
