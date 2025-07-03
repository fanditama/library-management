# Author API Spec

## Create Author

Endpoint : POST /api/authors

Request Header :

- X-API-TOKEN : Token (Mandatory)

Request Body :

```json
{
  "name" : "Tama Putra",
  "bio" : "Penulis"
}
```

Response Body (Success) :

```json
{
  "data" : {
    "id": "randomstring",
    "name": "Tama Putra",
    "bio": "Penulis"
  }
}
```

Response Body (Failed) :

```json
{
  "errors" : "Authors is not found"
}
```

## Update Author

Endpoint : PUT /api/authors/{idAuthor}

Request Header :

- X-API-TOKEN : Token (Mandatory)

Request Body :

```json
{
  "name" : "Tama Putra",
  "bio" : "Penulis"
}
```

Response Body (Success) :

```json
{
  "data" : {
    "id": "randomstring",
    "name": "Tama Putra",
    "bio": "Penulis"
  }
}
```

Response Body (Failed) :

```json
{
  "errors" : "Empty name, Empty bio, ..."
}
```

## Get Author

Endpoint : GET /api/authors/{idAuthor}

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data" : {
    "id": "randomstring",
    "name": "Tama Putra",
    "bio": "Penulis"
  }
}
```

Response Body (Failed, 404) :

```json
{
  "errors" : "Author is not found"
}
```

## Search Author

Endpoint : GET /api/authors

Query Param :

- name : String, author first name or last name, using like query, optional
- bio : String, bio author, using like query, optional

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data": [
    {
      "id": "randomstring",
      "name": "Tama Putra",
      "bio": "Penulis"
    }
  ],
  "paging" : {
    "currentPage" : 0,
    "totalPage" : 10,
    "size" : 10
  }
}
```

Response Body (Failed) :

```json
{
  "errors" : "Unauthorized"
}
```

## Remove Author

Endpoint : DELETE /api/authors/{idAuthor}

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data" : "OK"
}
```

Response Body (Failed) :

```json
{
  "errors" : "Author is not found"
}
```