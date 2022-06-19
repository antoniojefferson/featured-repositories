require 'json'

module JsonHelper
  def get_json_keys(hash)
    return [] if hash.blank?

    hash.keys
  end

  def get_percentage(hash, current_key)
    return 0 unless hash.instance_of?(Hash)

    total = hash.values.sum(&:to_i)
    language_value = hash[current_key]
    int_value = language_value / (total / 100)
    rest = language_value % (total / 100)

    "#{int_value}.#{rest}".to_f.round(2)
  end
end
