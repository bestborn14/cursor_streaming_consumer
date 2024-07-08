class StreamChannel < ApplicationCable::Channel
  include StreamHelper
  def subscribed
    # stream_from "some_channel"
    stream_from 'stream'
    loop do
      data = fetch_latest_data
      ActionCable.server.broadcast 'stream', data
      # sleep 1
    end
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
