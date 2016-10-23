require 'date'
class Lesson1
  def sum(val = 0)
    y = 0
    val.to_s.each_char{|x| y += x.to_i}
    y
  end

  def age(birthday)
    if birthday.is_a?(Array)
      return 'Invalid Date Format'
    end
    if birthday === nil
      return 'Invalid Date Format'
    end
    result = birthday.gsub(/[^\d\\\/]/, '')
    birthday_object = Date.parse(result)
    today = Date.today

    birthday_object_time = Time.new(result)
    time_now = Time.now
    time_stamp = time_now - birthday_object_time

    "Я живу #{today.year - birthday_object.year}
    года или  #{(today - birthday_object).to_i} дней
    или #{(today - birthday_object).to_i * 24} часов
    или #{(today - birthday_object).to_i * 24 * 60} минут
    или #{time_stamp} секунд"
  end

  def name
    puts'Имя'
    put_name = gets.chomp

    puts'Фамилия'
    put_last_name = gets.chomp

    puts'Отчество'
    put_second_name = gets.chomp


    "Hello #{put_name} #{put_last_name} #{put_second_name}!"
  end
end
