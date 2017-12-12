# alpine-xfce4

Simple and minimal Docker image providing Xfce4 Desktop and VNC server.

#### Build Image

```sh
git clone https://github.com/jkuri/alpine-xfce4.git
docker build -t alpine-xfce4 alpine-xfce4/
```

#### Run Image

```sh
docker run -it -p 5900:5900 --rm alpine-xfce4
```

#### Connect With VNC

Use `vncviewer` or similar software to connect to container. Predefined password is `alpine`.

#### LICENCE

MIT
