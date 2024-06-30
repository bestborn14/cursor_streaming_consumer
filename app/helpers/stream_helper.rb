# frozen_string_literal: true

# Helper to call Redis methods
module StreamHelper
  def fetch_latest_data
    REDIS.xrevrange('mystream', count: 1)
  end
end
