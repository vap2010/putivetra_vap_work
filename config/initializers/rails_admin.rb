I18n.locale = :ru
RailsAdmin.config do |config|
  if Article.table_exists?
    config.model Article do
      edit do
        include_all_fields
        #field :meta_tag, :has_one_association do
        #  partial "meta_tag"
        #end
      end
    end
  end

  if MetaTag.table_exists?
    config.model MetaTag do
      edit do
        include_all_fields
        exclude_fields :metatagable_id, :metatagable_type
      end
    end
  end
end
