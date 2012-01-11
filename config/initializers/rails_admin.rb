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

  if Agency.table_exists?
    config.model Agency do
      edit do
        include_all_fields
        exclude_fields :brand_agencies
      end
    end
  end

  if Distributor.table_exists?
    config.model Distributor do
      edit do
        include_all_fields
        exclude_fields :brand_distributors
      end
    end
  end

  if Event.table_exists?
    config.model Event do
      edit do
        include_all_fields
        exclude_fields :project_events
      end
    end
  end

  if ProductType.table_exists?
    config.model ProductType do
      edit do
        include_all_fields
        exclude_fields :brand_product_type
      end
    end
  end

  if Project.table_exists?
    config.model Project do
      edit do
        include_all_fields
        exclude_fields :project_vacancies, :project_events
      end
    end
  end

  if Region.table_exists?
    config.model Region do
      edit do
        include_all_fields
        exclude_fields :brand_regions
      end
    end
  end

  if Vacancy.table_exists?
    config.model Vacancy do
      edit do
        include_all_fields
        exclude_fields :project_vacancies
      end
    end
  end

  if Category.table_exists?
    config.model Category do
      treeview true
    end
  end

end
