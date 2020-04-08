
# WebRTC Video in Twenty Minutes

A super short presentation on how to setup a basic [WebRTC] application to
communicate with video. Note that I use a public stun server for sake of
simplicity. When building your own WebRTC application you have to setup
your own infrastructure which requires a stun server, a turn server for
business connections, and some kind of server-side signaling (e.g. websockets,
sip, polling, etc.).

# Usage

In order to test this example start any local webserver and point it to the
public directory. For any non-local tests you have to host the HTML files on
a server with a valid HTTPS domain.

# Resources

On the web [Mozilla Developer Network](https://developer.mozilla.org/en-US/) is
an awesome resource, and always up to date.

- [WebRTC Signaling](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Connectivity#The_entire_exchange_in_a_complicated_diagram)
  is used to setup a connection
- [Media Steam Handling](https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia)
  provides access to camera and microphone
- [Session Description Protocol Exchange](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Signaling_and_video_calling)
  is done using a peer connection

[WebRTC]: https://en.wikipedia.org/wiki/WebRTC "Web Real-Time Communication"
