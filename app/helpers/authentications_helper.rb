# gpmt = groupment
module AuthenticationsHelper
  def which_groupment(gpmt)
    if gpmt
      "<p> Groupement: #{gpmt.groupment.name} (#{gpmt.groupment.postal_code}) </p>"
    else
      '<p> Sans groupement </p>'
    end.html_safe
  end
end
