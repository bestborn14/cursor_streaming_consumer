# frozen_string_literal: true

# Helper to call Redis methods
module StreamHelper
  def fetch_latest_data
    data = REDIS.xrevrange(Rails.application.credentials.redis_stream, count: 1)
    data[0][1].transform_keys { |key| key.gsub(/"/, '') }
              .transform_values { |value| value.gsub(/"/, '') }
    # { 'xPosition' => '122px', 'yPosition' => '122px' }
    # { 'xPosition' => '883.5px', 'yPosition' => '-17.5px' }
  end
end
