# Custom JSON Response with ActiveModel::Serializer
---

This is a companion code for article Custom JSON Response with ActiveModel::Serializer on sitepoint.com.

## JSON Response with Nested Data

This application is an example of serving custom JSON response with nested data using ActiveModel::Serializer. This application can also be accessed [online](http://sitepoint-asm-nested.herokuapp.com), and is deployed using heroku.

### Retrieve Latest Videos

```
GET /videos.json
```

**Example**

```
curl http://sitepoint-asm-nested.herokuapp.com/videos.json
```

**Response**

```
{
  "videos":[
    {
      "id":135801055,
      "title":"Les quatre cents coups",
      "description":"Moving story of a young boy who, left without attention, delves into a life of petty crime.",
      "user":{
        "id":321975000,
        "name":"Sarah Ferguson"
      }
    },
    {
      "id":419895383,
      "title":"La heine",
      "description":"24 hours in the lives of three young men in the French suburbs the day after a violent riot.",
      "user":{
        "id":321672063,
        "name":"Javier Dean"
      }
    }
  ]
}
```

### Retrieve User Profile

```
GET /users/:id.json
```

**Example**

```
curl http://sitepoint-asm-nested.herokuapp.com/users/1066742030.json
```

**Response**

```
{
  "user":{
    "id":1066742030,
    "name":"Jill Ray"
  }
}
```

### Retrieve Video's Latest Comments

```
GET /videos/:video_id/comments.json
```

**Examples**

```
curl http://sitepoint-asm-nested.herokuapp.com/videos/424990186/comments.json
```

**Response**

```
{
  "comments":[
    {
      "id":632418569,
      "text":"All these jokes are purely jokes - nothing is meant seriously.",
      "user":{
        "id":623761651,
        "name":"Terry Holland"
      }
    }
  ]
}
```
