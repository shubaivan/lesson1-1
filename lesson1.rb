require 'date'
class Lesson1
  def sum(val = 0)
    y = 0
    val.to_s.each_char { |x| y += x.to_i }
    y
  end

  def parse_date(date)
    Date.parse(date)
  end

  def parse_time(date)
    Time.new(date)
  end

  def age(birthday)
    begin
      birthday_object = parse_date(birthday)
      birthday_object_time = parse_time(birthday)
    rescue
      return 'Invalid Date Format'
    end
    today = Date.today
    time_now = Time.now
    return_result today, birthday_object, time_now, birthday_object_time
  end

  def return_result(today, birthday_object, time_now, birthday_object_time)
    "Я живу
    #{today.year - birthday_object.year} года или
    #{(today - birthday_object).to_i} дней или
    #{(today - birthday_object).to_i * 24} часов или
    #{(today - birthday_object).to_i * 24 * 60} минут или
    #{time_now - birthday_object_time} секунд"
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
