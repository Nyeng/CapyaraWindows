require 'capybara'

module Testhelper

  def verify_page_contains_fields(table: table, mandatory: true)
    table.each do |e|
      label_value = e[0]
      field_element = find_field("#{label_value}")
      puts "#{label_value}"
      if field_element.nil?
        failure("Fant ikke felt #{label_value} på siden")
      end
      field_element_id = field_element[:id]
      field_element_value = field_element[:value]
      field_element_name = field_element[:name]
      puts "Fant Element med id=#{field_element_id}, name=#{field_element_name}, value=#{field_element_value}, labelvalue=#{label_value}"
    end
  end


end