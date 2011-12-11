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
end
