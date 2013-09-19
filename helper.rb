# helper.rb

@@bar = 45
@@weight_set = [[:forty_five, 90],
              [:thirty_five, 70],
              [:twenty_five, 50],
              [:ten, 20],
              [:five, 10],
              [:two_half, 5]]


def plate_calculator(weight_with_bar, weight_set)
  weight = weight_with_bar.to_i - @@bar
  rack_weight = {:bar => 1}
  return "You need fractional weights to lift #{weight_with_bar}" unless weight%5==0
  @@weight_set.each do |plate, pounds|
    current_plate_num, weight = weight.divmod(pounds)
    rack_weight[plate] = current_plate_num unless current_plate_num.zero?
  end

  rack_weight
end
