module ApplicationHelper
  def networks_data wifis
    wifis.map do |wifi|
      {
        business_name: wifi.business_name,
        reviews: wifi.reviews.map(&:overall_rating),
        share_scope: wifi.share_scope

      }
    end

  end
end
