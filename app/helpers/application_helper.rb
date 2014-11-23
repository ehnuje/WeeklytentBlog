module ApplicationHelper

  def validation_state(model_instance, attribute)
    if model_instance.errors.any?
      if model_instance.errors[attribute].empty?
        "has-success"
      else
        "has-error"
      end
    end
  end

  def validation_state_feedback(model_instance, attribute)
    if model_instance.errors.any?
      if model_instance.errors[attribute].empty?
        "glyphicon-ok"
      else
        "glyphicon-remove"
      end
    end
  end

  def attribute_error_message(model_instance, attribute)
    model_instance.errors[attribute].join('\n')
  end
end
