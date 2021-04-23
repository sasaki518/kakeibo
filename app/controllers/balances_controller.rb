class BalancesController < ApplicationController
    
    before_action :set_balance, only: [:show, :edit, :update, :destroy]
    
    def index
        @balances = Balance.where(user_id: session[:user_id])
        @balances = Balance.where(year: params[:year]) if params[:year].present?
        @balances = Balance.where(month: params[:month]) if params[:month].present?
    end
    
    def show
    end

    def new
        @balance = Balance.new
    end
    
    def create
        balance_params = params.require(:balance).permit(:year, :month, :property, :account, :credit_card, :digital_cash, :certificate,
        :account_info, :credit_card_info, :digital_cash_info, :certificate_info)
        balance_params[:user_id] = session[:user_id]
        @balance = Balance.new(balance_params)
        if @balance.save
            flash[:notice] = "#{@balance.year}#{@balance.month}のデータを一件登録しました。"
        redirect_to balances_path
        else
            flash.now[:alert] = "登録に失敗しました。"
            render :new
        end
    end
    
    def edit
    end
    
    def update
        balance_params = params.require(:balance).permit(:year, :month, :property, :account, :credit_card, :digital_cash, :certificate,
        :account_info, :credit_card_info, :digital_cash_info, :certificate_info)   
        if @balance.update(balance_params)
            flash[:notice] = "#{@balance.year}年の#{@balance.month}月のデータを更新しました。"
            redirect_to balances_path
        else
            flash.now[:alert] = "更新に失敗しました。"
            render :edit
        end
    end
    
    def destroy
        @balance.destroy
        flash[:notice] = "削除しました。"
        redirect_to balances_path
    end
    
    private
    def set_balance
        @balance = Balance.where(user_id: session[:user_id]).find(params[:id])
    end
end