module DeviseHelper

  def error_nickname
    if resource.errors[:nickname].count > 0
      I18n.t(
        "errors.messages.nickname",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

  def error_email
    if resource.errors[:email].count > 0
      I18n.t(
        "errors.messages.email",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

  def error_password
    if resource.errors[:password].count > 0
      I18n.t(
        "errors.messages.password",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

  def error_password2
    if resource.errors[:password_confirmation].count > 0
      I18n.t(
        "errors.messages.password_confirmation",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

  def error_last_name
    if resource.errors[:last_name].count > 0
      I18n.t(
        "errors.messages.last_name",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

  def error_first_name
    if resource.errors[:first_name].count > 0
      I18n.t(
        "errors.messages.first_name",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

  def error_kana_last_name
    if resource.errors[:kana_last_name].count > 0
      I18n.t(
        "errors.messages.kana_last_name",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

  def error_kana_first_name
    if resource.errors[:kana_first_name].count > 0
      I18n.t(
        "errors.messages.kana_first_name",
        count: resource.errors.count,
        resource: resource.class.model_name.human.downcase
      )
    end
  end

end