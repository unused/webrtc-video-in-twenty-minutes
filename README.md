
# WebRTC Video in Twenty Minutes

A super short presentation on how to setup a basic [WebRTC] application to
communicate with video. Note that I use a public stun server for sake of
simplicity. When building your own WebRTC application you have to setup
your own infrastructure which requires a stun server, a turn server for
business connections, and some kind of server-side signaling (e.g. websockets,
sip, polling, etc.). Everything used in this example is based on web standards,
no additional dependencies are required.

## Usage

In order to test this example start any local webserver and point it to the
public directory. For any non-local tests you have to host the HTML files on
a server with a valid HTTPS domain.

## Resources

On the web Mozilla Developer Network [MDN](https://developer.mozilla.org/en-US/)
is an awesome resource, and always up to date.

- [WebRTC Signaling](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Connectivity#The_entire_exchange_in_a_complicated_diagram)
  is used to setup a connection
- [Media Steam Handling](https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia)
  provides access to camera and microphone
- [Session Description Protocol Exchange](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Signaling_and_video_calling)
  is done using a peer connection

## That was easy, what's next...

Unfortunately this is just the beginning... there is a lot that comes next.
Firsty first you'll have to setup some server-side signaling. Popular variants
are done using Websockets, SIP or even REST-API polling. Then you should
definitely provide your own stun server(s) to provide better privacy and
security. For trickier network conditions you might require a TURN server,
which now can cause quite heavy traffic. Then there is a very uncomfortable
topic of device management - choose and switch cameras and microphones, as well
as handle output devices. All those things come with various states that have
to be constantly tracked for changes (e.g. camera is removed, connection lost).

Besides your users might expect a lot of features that are commonly to be found
in modern video communication tools. Mute/unmute devices, make recordings,
stream to other platforms, share your screen or documents, and many more.
Fortunately besides having WebRTC as a great improvement at Web Standards there
are many more APIs provided by state of the art web browsers that makes such
things quite easily added to your service. Again checkout [MDN] on those
to find proper documentations.

[WebRTC]: https://en.wikipedia.org/wiki/WebRTC "Web Real-Time Communication"
[MDN]: https://developer.mozilla.org/en-US/ "Mozilla Developer Network"
