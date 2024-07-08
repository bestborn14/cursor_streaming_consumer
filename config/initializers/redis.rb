# frozen_string_literal: true

REDIS = Redis.new(
  host: Rails.application.credentials.redis_host,
  port: Rails.application.credentials.redis_port,
  password: Rails.application.credentials.redis_password,
  username: Rails.application.credentials.redis_username
)
