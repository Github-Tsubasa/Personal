class PrefectureController < ApplicationController
  def new
    @prefecture = Prefecture.new
    @prefecture.users << current_user
  end

  def create
    
  end

  def edit
    @prefecture = Prefecture.find(params[:id])
  end

  def update
    @prefecture = Prefecture.find(params[:id])
    if @prefecture.update(prefecture_params)
      redirect_to root_path, notice: 'グループを更新しました'
    else
      render :edit
    end
  end

  private
  
  def group_params
    params.require(:group).permit(:name, user_ids: [] )
  end

end
