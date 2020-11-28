class ChinemasController < ApplicationController

  def new
    @chinema = Chinema.new
  end


  def create
    @chinema = current_user.chinemas.build(chinema_params)
    if @chinema.save
      redirect_to chinema_path(@chinema), notice: "投稿に成功しました"
    else
      render :new
    end
  end

  def index
    @chinemas = Chinema.all.order(id: "DESC")
  end

  def show
    @chinema = Chinema.find(params[:id])
  end

  def edit
    @chinema = Chinema.find(params[:id])
  end

  def update
    @chinema = Chinema.find(params[:id])
    if @chinema.update!(chinema_params)
      redirect_to chinema_path(@chinema), notice: "投稿を更新しました"
    else

    render :edit
    end
  end

  def destroy
    chinema = Chinema.find(params[:id])
    @chinema.destroy
    redirect_to chinema_path(chinema.user), notice: "投稿を削除しました"
  end


  private

  def chinema_params
    params.require(:chinema).permit(:chinema_name, :chinema_body, :chinema_image, :url, :address )
  end

end
