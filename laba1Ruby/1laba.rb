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
command_ruby = `ruby "-e#{gets}"`
puts command_ruby


# Ответ на введенный язык
