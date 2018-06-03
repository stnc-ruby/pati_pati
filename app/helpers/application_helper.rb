module ApplicationHelper
  def render_model_errors(object)
    render json: { errors: model_errors(object) }, status: 422
  end

  def model_errors(object)
    object.errors.messages.map do |k, v|
      v.map do |message|
        {
          code: 111,
          message: I18n.t("activerecord.attributes.#{object.class.to_s.downcase}.#{k}") + " #{message}",
          key: k
        }
      end
    end.flatten
  end

  def render_json(method, code)
    render json: ResponseMessages.send(method), status: code
  end
end
