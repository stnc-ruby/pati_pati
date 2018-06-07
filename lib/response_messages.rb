class ResponseMessages
  def self.announcement_update_success; MessageBuilder.new(message: 'announcement_update_success', code: 100).info end
  def self.announcement_not_found; MessageBuilder.new(message: 'announcement_not_found', code: 110).errors end
  def self.user_not_found; MessageBuilder.new(message: 'user_not_found', code: 120).errors end

  def initialize(params)
    @message = params.fetch(:message, '')
    @code = params.fetch(:code, '')
    @key = params.fetch(:key, '')
  end

  def messages
    [{ message: I18n.t("api_v1_response_codes.#{@message}"), code: @code, key: @key }]
  end

  def errors
    { errors: messages }
  end

  def info
    { info: messages }
  end
end
