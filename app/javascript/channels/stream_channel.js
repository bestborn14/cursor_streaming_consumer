import consumer from "channels/consumer"

consumer.subscriptions.create("StreamChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the chat channel.")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("data: ", data)
    // data = JSON.parse(data);
    var x = data['xPosition'];
    var y = data['yPosition'];
    $('#centeredDiv').css({
        left: x + 'px',
        top: y + 'px'
    });
  }
});
