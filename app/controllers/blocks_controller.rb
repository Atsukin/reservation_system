class BlocksController < ApplicationController
  def index
    @blocks = Block.all
  end

  def edit
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
    params.require(:block).permit(:sheet,:kind)
  end
end
