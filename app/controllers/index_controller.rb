class IndexController < ApplicationController

  def post
    @user = UserInfo.find_by(account_id: session[:account_id])
  end


  def ajaxPost
    if
    end
  end

end
