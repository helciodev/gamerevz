module GamesHelper

  def custom_pluralize(objectArr, word)
    objectArr.split('-').size > 1 ? word.pluralize : word
  end

  def format_date (date)
    date.strftime("%Y %B  %d")
  end
end
