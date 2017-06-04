# docker-compose


## Diagrama Arquiteturial Easyac
```
                                       +---------+
                                       |         |
                                       |  REDIS  <---------------+
                                       |         |               |
                                       +--^------+               |
                                          |                      |
                                          |                      | :6379
                                          | :6379                |
                                          |                      |
         :443      +---------+         +--v------+         +-----v----+
         :80       |         | :3000   |         |         |          |
CLIENT +----------->  NGINX  +--------->   API   |         |  WORKER  |
                   |         |         |         |         |          |
                   +---------+         +--+------+         +----------+
                                          |
                                          |
                                          | :27017
                                          |
                                       +--v------+              LEGENDA
                                       |         |              ":num" - porta
                                       | MONGODB |              "->"   - direção da
                                       |         |                       comunicação
                                       +---------+

```

## ENV
- NODE_ENV=production
- PORT=3000
- MONGO_URL=mongodb://mongo/easyac
- JWT_SECRET="[YteUqD8?HAG{PCkLjYwms3ura[@aJy,@9)wt=x"

## Run
```
docker-compose up
```

## Stop
```
docker-compose stop
```
