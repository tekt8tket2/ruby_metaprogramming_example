# Contrived example of metaprogramming

# A 'DaysPick' defines one of the set of "This Month's picks" from a 3rd party rating agency
class DaysPick

  ATTRS = [
    :name,
    :symbol,
    :current_price
  ]

  # Creates getters dynamically for each of the ATTRS (note this could be done easily in ruby core with attr_reader)
  ATTRS.each do |key|
    define_method key do
      instance_variable_get "@#{key}"
    end
  end

  # Enforces only allowed attributes are loaded from our 3rd party datasource
  def initialize(*attrs)
    # Sets all attributes as instance variables from the params (note this could also be done easily by using an OpenStruct)
    ATTRS.each do |key|
      instance_variable_set("@#{key}", attrs.first[key])
    end
  end
end