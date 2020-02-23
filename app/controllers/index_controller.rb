class IndexController < ApplicationController
  # 投稿

  # /index (GET)
  def post
    if session[:account_id]
      @user = UserInfo.find_by(account_id: session[:account_id])
      @posts = UserPost.find_by(account_id: session[:account_id])
    else
      render("user/login")
    end
  end


  def asyncPost
    @post
  end

  def userPost_params
    params.require(:userPost).permit(:account_id, :post_date, :content, :junre, :favorite, :memo_picture1, :memo_picture2)
  end






end
