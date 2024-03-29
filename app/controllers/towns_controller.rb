class TownsController < ApplicationController
  def index
    @town = Town.where("(region = ?)", params[:region])
  end


  def new
    @town = Town.new
  end


  def create
    @town = Town.new(town_params)

    #新しいTweetの保存に成功した場合
    if @town.save
    #index.html.erbにページが移る
      redirect_to root_path
    #新しいTweetの保存に失敗した場合
    else
    #もう一回投稿画面へ
      redirect_to action: "new"
    end
  end

  def show

    @town = Town.find(params[:id])

  end

  def top
  end

  def destroy
    Town.find(params[:id]).destroy
    redirect_to action: :"towns/#{region}"
  end

private
 #セキュリティのため、許可した:bodyというデータだけ取ってくるようにする
 def town_params
  params.require(:town).permit(:image, :title, :region, :comment)
 end
end
