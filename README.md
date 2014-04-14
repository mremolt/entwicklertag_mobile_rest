## REST API

### help (list database column definitions)

```bash
curl -X GET http://entwicklertag-mobile-rest.herokuapp.com/api/:user/items/help
```

Example:
```bash
curl -X GET http://entwicklertag-mobile-rest.herokuapp.com/api/mr/items/help
```

### index

```bash
curl -X GET http://entwicklertag-mobile-rest.herokuapp.com/api/:user/items
```

Example:
```bash
curl -X GET http://entwicklertag-mobile-rest.herokuapp.com/api/mr/items
```


### show

```bash
curl -X GET http://entwicklertag-mobile-rest.herokuapp.com/api/:user/items/:database_id
```

Example:
```bash
curl -X GET http://entwicklertag-mobile-rest.herokuapp.com/api/mr/items/5
```


### for_tag

```bash
curl -X GET http://entwicklertag-mobile-rest.herokuapp.com/api/:user/items/for_tag/:tag_name
```

Example:
```bash
curl -X GET http://entwicklertag-mobile-rest.herokuapp.com/api/mr/items/for_tag/eins
```


### create

```bash
curl -X POST http://entwicklertag-mobile-rest.herokuapp.com/api/:user/items -d "item[column1]=content" -d "item[columns2]=content"
```

Example:
```bash
curl -X POST http://entwicklertag-mobile-rest.herokuapp.com/api/mr/items -d "item[content]=sampletext" -d "item[lat]=23.4" -d "item[lng]=53.8" -d "item[image_name]=sampleimage2.png" -d "item[tags][]=tag_1" -d "item[tags][]=tag_2"
```


### update

```bash
curl -X PATCH http://entwicklertag-mobile-rest.herokuapp.com/api/:user/items/:database_id -d "item[column1]=content"
```

Example:
```bash
curl -X PATCH http://entwicklertag-mobile-rest.herokuapp.com/api/mr/items/1 -d "item[content]=newtext"
curl -X PATCH http://entwicklertag-mobile-rest.herokuapp.com/api/mr/items/1 -d "item[remember_at]=2014-05-21 14:30"
```


### delete

```bash
curl -X DELETE http://entwicklertag-mobile-rest.herokuapp.com/api/:user/items/:database_id
```

Example:
```bash
curl -X DELETE http://entwicklertag-mobile-rest.herokuapp.com/api/mr/items/3


