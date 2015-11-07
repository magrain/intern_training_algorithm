1.upto(100) do |i|
  if (i%3 == 0)&&(i%5 == 0)#15の倍数 i%15 == 0
    puts "FizzBuzz"
  elsif i%3 == 0
    puts "Fizz"
  elsif i%5 == 0
    puts "Buzz"
  else
    puts i
  end
end

#1.upto(100){ |i| puts i}
#ルビーは{}を一行で収まる時に使う
#複数行にはdo endを使う 