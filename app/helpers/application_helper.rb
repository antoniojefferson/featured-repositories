module ApplicationHelper
  def date_br(date_us)
    format_string = english_language ? '%Y-%m-%d' : '%d/%m/%Y'
    date_us.strftime(format_string)
  end

  def english_language
    I18n.locale == :en
  end
end
