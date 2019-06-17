module AuthenticationsHelper

def which_groupment groupment
  if groupment
    html = "<p> Groupement: #{groupment.groupment.name}  (#{@groupment.groupment.postal_code}) </p>".html_safe
  else
    html = "<p> Sans groupement </p>".html_safe
  end
  html 
end

end
