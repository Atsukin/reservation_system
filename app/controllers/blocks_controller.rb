class BlocksController < ApplicationController
  def index
    @blocks = Block.all
  end

  def edit
    @block = Block.find(params[:id])
  end

  def update
    @block = Block.find(params[:id])
    if @block.update(block_params)
      redirect_to blocks_url, notice: "テーブルを編集しました。"
    else
      render :edit
    end
  end

  def new
    @block = Block.new
  end

  def create
    block = Block.new(block_params)
    if block.save
      redirect_to blocks_url, notice: "テーブルを登録しました。"
    else
      render :new
    end
  end

  def show
  end

  private

  def block_params
    params.require(:block).permit(:sheet,:kind,:total)
  end
end
