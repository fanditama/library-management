# Book API Spec

## Create Book

Endpoint : POST /api/books

Request Header :

- X-API-TOKEN : Token (Mandatory)

Request Body :

```json
{
  "title" : "Sejarah Jawa",
  "isbn" : "1234567890123",
  "publisher_year": "2012",
  "genre": "Sejarah",
  "total_copies": "10",
  "availaible_copies": "10"
}
```

Response Body (Success) :

```json
{
  "data" : {
    "id": "randomstring",
    "title" : "Sejarah Jawa",
    "isbn" : "1234567890123",
    "publisher_year": "2012",
    "genre": "Sejarah",
    "total_copies": "10",
    "availaible_copies": "10"
  }
}
```

Response Body (Failed) :

```json
{
  "errors" : "Books is not found"
}
```

## Update Book

Endpoint : PUT /api/authors/{idAuthor}/books/{idBook}

Request Header :

- X-API-TOKEN : Token (Mandatory)

Request Body :

```json
{
  "title" : "Sejarah Jawa",
  "isbn" : "1234567890123",
  "publisher_year": "2012",
  "genre": "Sejarah",
  "total_copies": "10",
  "availaible_copies": "10"
}
```

Response Body (Success) :

```json
{
  "data" : {
    "id": "randomstring",
    "title" : "Sejarah Jawa",
    "isbn" : "1234567890123",
    "publisher_year": "2012",
    "genre": "Sejarah",
    "total_copies": "10",
    "availaible_copies": "10"
  }
}
```

Response Body (Failed) :

```json
{
  "errors" : "Book is not found"
}
```

## Get Book

Endpoint : GET /api/authors/{idAuthor}/books/{idBook}

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data" : {
    "id": "randomstring",
    "title" : "Sejarah Jawa",
    "isbn" : "1234567890123",
    "publisher_year": "2012",
    "genre": "Sejarah",
    "total_copies": "10",
    "availaible_copies": "10"
  }
}
```

Response Body (Failed, 404) :

```json
{
  "errors" : "Book is not found"
}
```

## Search Book

Endpoint : GET /api/authors/{idAuthor}/books

Query Param :

- title : String, title book, using like query, optional
- isbn : String, isbn book, using like query, optional
- published_year : Integer, published year book, using like query, optional
- genre : String, genre book, using like query, optional
- total_copies: Integer, total copies book, using like query, optional
- available_copies: Integer, available copies book, using like query, optional

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data": [
    {
      "id": "randomstring",
      "title" : "Sejarah Jawa",
      "isbn" : "1234567890123",
      "publisher_year": "2012",
      "genre": "Sejarah",
      "total_copies": "10",
      "availaible_copies": "10"
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

Endpoint : DELETE /api/authors/{idAuthor}/books/{idBook}

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
  "errors" : "Book is not found"
}
```

## List Book

Endpoint : GET /api/authors/{idAuthor}/books

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data": [
    {
      "id": "randomstring",
      "title" : "Sejarah Jawa",
      "isbn" : "1234567890123",
      "publisher_year": "2012",
      "genre": "Sejarah",
      "total_copies": "10",
      "availaible_copies": "10"
    }
  ]
}
```

Response Body (Failed) :

```json
{
  "errors" : "Book is not found"
}
```