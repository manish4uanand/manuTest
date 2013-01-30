module ApplicationHelper
  def wrap_input_field(field,label = nil,error_msg = "", hint_text = nil)
    str = "<div class = 'control-group'>"
    str << "<label class = 'control-label'>#{label}</label>" unless label.blank?
    str << "<div class='controls'>"
    str << field
    str << error_msg
    str << "<i class = 'muted'>#{hint_text}</i>"
    str << "</div></div>"
    str.html_safe
  end
   
   
    
end
