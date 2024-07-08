# frozen_string_literal: true

# Stream controller
class StreamController < ApplicationController
  include StreamHelper
  def show
    # This is a simple example of how you might use the StreamController to serve a stream of data.
    # This example is not particularly useful, but it demonstrates how you might use the controller.
    # In a real application, you might use this controller to serve a stream of data from a database or
    # another source.
    @data = fetch_latest_data
  end

  def fetch_position
    data = fetch_latest_data
    p data
    render json: { data: }
  end

  def show_params
    render html: params
  end

  def ping
    loop do
      data = fetch_latest_data
      ActionCable.server.broadcast 'stream', data
      sleep 5
    end
    { json: {} }
  end
end
