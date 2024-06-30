# frozen_string_literal: true

REDIS = Redis.new(
  host: Rails.application.credentials.redis_host,
  port: Rails.application.credentials.redis_port
)
