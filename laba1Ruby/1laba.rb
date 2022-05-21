 def select_language(language)
   case language
   when "Ruby"
     puts "Ну ты и подлиза!"
   when "C"
     puts "Программирование на С похоже на быстрые танцы на только что отполированном полу людей с острыми бритвами в руках."
   when "C++"
     puts "Последние нововведения в C++ были созданы, чтобы исправить предыдущие нововведения."

   else
     puts "Не понял, но скоро будет Ruby."
   end
 end


 puts "Hello world"
 a=ARGV[0]#АРГУМЕНТ ПРОГРАММЫ
 puts "Hello #{a}!"
 ARGV.clear
 k=gets.chomp
 puts k
 puts "Какой ваш любимый язык?"
 language = gets.chomp # Считываем язык
 select_language(language) # Вызов выбора ответа

 puts "Введите команду ОС"
 command_os = system"#{gets}"
 puts command_os

 puts "Введите команду Ruby"
 input = gets.chomp
 #command_ruby = `ruby "-e#{input}"`
 eval(input)

#Task 2
#1.
# num = ARGV[0].to_i
#  sum_digits = 0
#  while num !=0
#  sum_digits += num % 10
#  num /= 10
#  end
#  puts sum_digits

def sum_digits(number)
 sum = 0
 while number != 0
  sum += number%10
  number /= 10
 end
 sum
end
  # puts sum_digits(1231)
def mult_digits(number)
 res = 1
 while number != 0
  res *= number%10
  number /= 10
 end
 res
end
# puts mult_digits(123)

 def find_max(number)
  max = number%10
  number /= 10
  while number != 0
   check = number % 10
   if check > max
    max = check
   end
   number /= 10
   end
   max
  end
  puts find_max(5421)
#
#
  def find_min(number)
   min_el = number % 10
   number /= 10
   while number != 0
    if min_el > number % 10
     min_el = number % 10
    end
    number /= 10
   end
   min_el
  end
#   puts find_min(12345678)

 def alg_Ev(a,b)
  while a != 0 and b!= 0
   if a > b
    a %= b
   else
    b %= a
   end
  end
  a+b
 end

 def count_prime_digits(num)
  count = 0
  iter = 1
  until iter >= num
   if alg_Ev(iter,num) == 1
    count+=1
   end
   iter+=1
  end
  count
 end
 # puts count_prime_digits(12)

 def sum_digts_div_3(num)
  sum = 0
  while(num != 0)
   if (num%10)% 3 == 0
    sum += num%10
   end
   num /= 10
  end
  sum
 end
 # puts sum_digts_div_3(132)
 def max_count_vz_prost(num,div)
  count = 0
  while num > 0
   if alg_Ev(num%10,div) == 1
    count += 1
   end
   num /= 10
  end
  count
 end
 puts max_count_vz_prost(26,13)