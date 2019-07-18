module ProductsHelper
	def error_name(resource)
    if resource.errors[:name].count > 0
      I18n.t(
        "errors.messages.name",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

  def error_text(resource)
    if resource.errors[:text].count > 0
      I18n.t(
        "errors.messages.text",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

  def error_price(resource)
    if resource.errors[:price].count > 0
      I18n.t(
        "errors.messages.price",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end
end
