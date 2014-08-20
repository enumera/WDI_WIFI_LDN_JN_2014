module ApplicationHelper
  def networks_data wifis
    wifis.map do |wifi| 
        {
          wifi_id: wifi.id,
          business_name: wifi.business_name,
          reviews: wifi.reviews.map(&:overall_rating),
          share_scope: wifi.share_scope,
          postcode: wifi.postcode
        }
    end
  end
end
