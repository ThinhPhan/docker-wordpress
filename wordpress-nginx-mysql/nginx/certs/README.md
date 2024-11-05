# Add local certificates here to enable https

I personally like using [mkcert](https://github.com/FiloSottile/mkcert) for this.

Follow the installation instructions, then `cd` to this directory and use `mkcert` with the local domain name of your choosing.

## Usage

Short: `./generate-cert.sh`

Give certificate to all following domains:
  `mkcert example.com "*.example.com" example.test localhost 127.0.0.1 ::1`

## References

- [Cài đặt SSL trên local sử dụng mkcert](https://toidicode.com/cai-dat-ssl-tren-local-su-dung-mkcert-478.html)
