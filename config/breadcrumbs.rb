crumb :mercari_home do
  link "メルカリ", root_path
end

crumb :mercari_mypage do
  link "マイページ", users_mypage_path
  parent :mercari_home
end

crumb :mercari_show do
  link "購入する", product_path
  parent :mercari_mypage
end

crumb :mercari_new_product do
  link "出品する", new_product_path
  parent :mercari_mypage
end

crumb :mercari_detail do
  link "出品した商品-出品中", users_sns_path
  parent :mercari_mypage
end

crumb :mercari_card do
  link "支払い方法", users_add_card_path
  parent :mercari_mypage
end

crumb :mercari_new_card do
  link "クレジットカード情報入力", new_card_path
  parent :mercari_card
end

crumb :mercari_new_profile do
  link "本人情報の登録", users_base_path
  parent :mercari_mypage
end

crumb :mercari_myprofile do
  link "プロフィール", edit_user_path
  parent :mercari_mypage
end

crumb :mercari_logout do
  link "ログアウト", users_logout_path
  parent :mercari_mypage
end