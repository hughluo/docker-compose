# docker-compose
collection of handy docker-compose recipes for development

## Conventions

### all wexort
username is `wexort`, password is `wexort`, if there is any other users (e.g root, admin), password is also `wexort`

### just like production
* The port number will be the same as in production. 
For example, the port `mysql` listen to will be `3306`.

* If it should be persistence in production, then it will

### persistence via volume
The persistenc will be done via `volume` provided by docker.

> `docker-compose down -v` will remove named volumes declared in the `volumes`section of the Compose file and anonymous volumes attached to containers.
