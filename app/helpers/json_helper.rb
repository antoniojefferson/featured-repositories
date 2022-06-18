require 'json'

module JsonHelper
  
  def get_json_keys(hash)
    return [] unless hash.present?

    hash.keys
  end

  def get_percentage(hash, current_key)
    return 0 unless hash.class == Hash

    total = hash.values.sum{ |v| v.to_i }
    language_value = hash[current_key]
    int_value = language_value/(total/100)
    rest = language_value%(total/100)

    "#{int_value}.#{rest}".to_f.round(2)
  end

end