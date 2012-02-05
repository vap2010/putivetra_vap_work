I18n.locale = :ru
RailsAdmin.config do |config|

  config.actions do
    all
    root :tools
  end

  if Article.table_exists?
    config.model Article do
      treeview true
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

  if Node.table_exists?
    config.model Node do
      edit do
        field :parent_id, :enum do
          enum do
            collection = Node.select(:id).where("id != ?", bindings[:object].id)
            collection = collection.where(:project_id => bindings[:object].project_id) if bindings[:object].project_id
            collection = collection.reject {|node| bindings[:object].descendant_ids.include?(node.id) }
            collection.map{|node| node.id}
          end
        end
        include_all_fields
        field :nodeable, :polymorphic_association
        exclude_fields :ancestry
      end
      include_all_fields
      exclude_fields :ancestry
      treeview true
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
