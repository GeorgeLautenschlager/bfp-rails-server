class ShipChannel < ApplicationCable::Channel
  # Called when the consumer has successfully
  # become a subscriber of this channel.
  def subscribed
    stream_from uuid
  end

  def test_event(data)
    message = "Like throwing eggs at a stone wall."
    binding.pry
    ActionCable.server.broadcast(uuid, message: message)
  end
end
