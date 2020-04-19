require 'active_support/core_ext'

# 旅行会社簡単プログラム
# 0.プランを作成
travel_plans = [{name:"沖縄",price:50000},
{name:"東京",price:20000},{name:"北海道",price:40000},
{name:"鹿児島",price:40000},{name:"淡路島",price:50000}]


# 1.プランを選択
travel_plans.each.with_index(1) do |plan,i|
  puts "#{i}.#{plan[:name]}(#{plan[:price]})"
end


while true
  print "旅行プランを選択:"
  select_number = gets.chomp().to_i

  if travel_plans[select_number-1]
    puts"旅行プラン：#{select_number}"
    break
  else
    puts "その旅行プランはありません。もう一度入力してください"
  end
end
# 2.人数を入力
print "人数を入力："
numbers = gets.chomp.to_i
puts"入力人数：#{numbers}人"

# 3.合計額を算出
total_charge = travel_plans[select_number-1][:price] * numbers

# 4.割引処理
if numbers >= 10
  total_charge *= 0.9
end

# 5.結果を表示
puts "_________________"
puts "合計金額：#{total_charge.floor.to_s(:delimited)}円"
