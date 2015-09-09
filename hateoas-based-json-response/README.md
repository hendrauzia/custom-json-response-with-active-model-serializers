# Custom JSON Response with ActiveModel::Serializer
---

This is a companion code for article Custom JSON Response with ActiveModel::Serializer on sitepoint.com.

## HATEOAS-based JSON Response

This application is an example of serving HATEOAS-based custom JSON response using ActiveModel::Serializer. This application can also be accessed [online](http://sitepoint-asm-hateoas.herokuapp.com), and is deployed using heroku.

### Retrieve Latest Videos

```
GET /videos.json
```

**Example**

```
curl http://sitepoint-asm-hateoas.herokuapp.com/videos.json
```

**Response**

```
{
  "videos":[
    {
      "id":135801055,
      "title":"Les quatre cents coups",
      "description":"Moving story of a young boy who, left without attention, delves into a life of petty crime.",
      "links":{
        "self":"/videos/135801055"
      },
      "user_id":321975000
    },
    {
      "id":419895383,
      "title":"La heine",
      "description":"24 hours in the lives of three young men in the French suburbs the day after a violent riot.",
      "links":{
        "self":"/videos/419895383"
      },
      "user_id":321672063
    }
  ],
  "users":[
    {
      "id":321975000,
      "name":"Sarah Ferguson",
      "links":{
        "self":"/users/321975000"
      }
    },
    {
      "id":321672063,
      "name":"Javier Dean",
      "links":{
        "self":"/users/321672063"
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
curl http://sitepoint-asm-hateoas.herokuapp.com/users/1066742030.json
```

**Response**

```
{
  "user":{
    "id":1066742030,
    "name":"Jill Ray",
    "links":{
      "self":"/users/1066742030"
    }
  }
}
```

### Retrieve Video's Latest Comments

```
GET /videos/:video_id/comments.json
```

**Examples**

```
curl http://sitepoint-asm-hateoas.herokuapp.com/videos/424990186/comments.json
```

**Response**

```
{
  "comments":[
    {
      "id":632418569,
      "text":"All these jokes are purely jokes - nothing is meant seriously.",
      "links":{
        "self":"/comments/632418569"
      },
      "user_id":623761651
    }
  ],
  "users":[
    {
      "id":623761651,
      "name":"Terry Holland",
      "links":{
        "self":"/users/623761651"
      }
    }
  ]
}
```
