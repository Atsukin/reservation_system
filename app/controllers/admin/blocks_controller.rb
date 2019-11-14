class Admin::BlocksController < ApplicationController
    before_action :authenticate_admin!
    def index
        @blocks = Block.all
    end
    
    def edit
        @block = Block.find(params[:id])
    end
    
    def update
        @block = Block.find(params[:id])
        if @block.update(block_params)
            redirect_to admin_blocks_url, notice: "テーブルを編集しました。"
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
            redirect_to admin_blocks_url, notice: "テーブルを登録しました。"
        else
            render :new
        end
    end

    def destroy
        Block.find(params[:id]).destroy
        redirect_to admin_blocks_url, notice: 'テーブルを削除しました。'
    end
    
    def show
        @block = Block.find(params[:id])
    end
    
    private
    
    def block_params
        params.require(:block).permit(:sheet,:kind,:total)
    end
end
