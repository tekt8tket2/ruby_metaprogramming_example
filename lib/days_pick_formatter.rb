class DaysPickFormatter

  DISPLAY_METHODS = [
    :name,
    :symbol,
    :current_price
  ]

  def self.format(pick)
    display_string = ''
    DISPLAY_METHODS.each do |attr_name|
      display_string += pick.send(attr_name) + '***'
    end
    
    return display_string
  end

end
