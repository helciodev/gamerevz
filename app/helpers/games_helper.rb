module GamesHelper

  def pluralize(objectArr, word)
    objectArr.split('-').size > 1 ? word.pluralize : word
  end
end
