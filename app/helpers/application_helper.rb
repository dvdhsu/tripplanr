module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Travel"      
    end
  end
end
