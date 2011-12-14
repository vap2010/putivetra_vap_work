I18n.locale = :ru
RailsAdmin.config do |config|
  if MetaTag.table_exists?
    config.model MetaTag do
      edit do
        include_all_fields
        exclude_fields :metatagable_id, :metatagable_type
      end
    end
  end

  if Brand.table_exists?
    config.model Brand do
      edit do
        include_all_fields
        exclude_fields :brand_product_type, :brand_regions, :brand_agencies, :brand_distributors
      end
    end
  end
end
