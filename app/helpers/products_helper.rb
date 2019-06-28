# frozen_string_literal: true

module ProductsHelper
  def available
    image_tag 'true.png', class: 'icons', title: 'Produit disponible'
  end

  def unavailable
    image_tag 'false.png', class: 'icons', title: 'Produit indisponible'
  end
end