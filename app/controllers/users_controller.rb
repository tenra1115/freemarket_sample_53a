class UsersController < ApplicationController

  def select
  end

  def base
    @address = Prefecture.all
  end

  def privacy
  end

  def call
  end

  def address
    @address = Prefecture.all
  end

  def card
  end

  def finish
  end

  def add_card
  end

  def edit
  end

  def mypage
    @users = User.all
  end

  def logout
  end
  
end
