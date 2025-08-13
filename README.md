# lucos_private
Serves non-public static files

## Accessing files
Files are secured using Basic auth over HTTPS.  The username is should be a lucos system, followed hyphen, followed by environment (eg _lucos_media_seinn-development_).  The password is set by [lucos_creds](https://github.com/lucas42/lucos_creds).