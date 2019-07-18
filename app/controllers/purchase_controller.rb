class PurchaseController < ApplicationController

  require 'payjp'

  def index

    @products = Product.find(params[:product_id])

    card = Card.where(user_id: current_user.id).first
    # テーブルからpayjpの顧客IDを検索

    if card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    product = Product.find(params[:product_id])
    product.buyer_id = current_user.id
    product.save


    
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    charge = Payjp::Charge.create(
      :amount => product.price,
      :customer => card.customer_id,
      :currency => 'jpy',
    )


    redirect_to "/" #完了画面に移動
  end

  def done
  end

end
