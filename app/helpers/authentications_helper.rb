# frozen_string_literal: true

# gpmt = groupment
module AuthenticationsHelper
  def which_groupment(gpmt)
    if gpmt
      "<td class='pt-4 pr-3'>#{gpmt.groupment.name} (#{gpmt.groupment.postal_code})</td>"
    else
      '<td class="pt-4 pr-3">Sans groupement</td>'
    end.html_safe
  end
end
