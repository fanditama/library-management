# Loan API Spec

## Create Loan

Endpoint : POST /api/loan

Request Header :

- X-API-TOKEN : Token (Mandatory)

Request Body :

```json
{
  "loan_date" : "06-12-2020 09:00:00",
  "due_date" : "20-12-2020 09:00:00",
  "return_date": "15-12-2020 10:30:00",
  "status": "Dikembalikan"
}
```

Response Body (Success) :

```json
{
  "data" : {
    "id": "randomstring",
    "loan_date" : "06-12-2020 09:00:00",
    "due_date" : "20-12-2020 09:00:00",
    "return_date": "15-12-2020 10:30:00",
    "status": "Dikembalikan"
  }
}
```

Response Body (Failed) :

```json
{
  "errors" : "Loan is not found"
}
```

## Update Loan

Endpoint : PUT /api/users/{idUser}/books/{idBook}/loans/{idLoan}

Request Header :

- X-API-TOKEN : Token (Mandatory)

Request Body :

```json
{
  "loan_date" : "06-12-2020 09:00:00",
  "due_date" : "20-12-2020 09:00:00",
  "return_date": "15-12-2020 10:30:00",
  "status": "Dikembalikan"
}
```

Response Body (Success) :

```json
{
  "data" : {
    "id": "randomstring",
    "loan_date" : "06-12-2020 09:00:00",
    "due_date" : "20-12-2020 09:00:00",
    "return_date": "15-12-2020 10:30:00",
    "status": "Dikembalikan"
  }
}
```

Response Body (Failed) :

```json
{
  "errors" : "Loan is not found"
}
```

## Get Book

Endpoint : GET /api/users/{idUser}/books/{idBook}/loans/{idLoan}

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data" : {
    "id": "randomstring",
    "loan_date" : "06-12-2020 09:00:00",
    "due_date" : "20-12-2020 09:00:00",
    "return_date": "15-12-2020 10:30:00",
    "status": "Dikembalikan"
  }
}
```

Response Body (Failed, 404) :

```json
{
  "errors" : "Loan is not found"
}
```

## Search Loan

Endpoint : GET /api/users/{idUser}/books/{idBook}/loans

Query Param :

- loan_date : Timestamp, loan date book, using like query, optional
- due_date : Timestamp, due date book, using like query, optional
- return_date : Timestamp, return year book, using like query, optional
- status : String, status book, using like query, optional

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data": [
    {
      "id": "randomstring",
      "loan_date" : "06-12-2020 09:00:00",
      "due_date" : "20-12-2020 09:00:00",
      "return_date": "15-12-2020 10:30:00",
      "status": "Dikembalikan"
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

## Remove Loan

Endpoint : DELETE /api/authors/{idAuthor}/books/{idBook}/loans/{idLoan}

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

Endpoint : GET /api/users/{idUser}/books/{idBook}/loans

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data": [
    {
      "id": "randomstring",
      "loan_date" : "06-12-2020 09:00:00",
      "due_date" : "20-12-2020 09:00:00",
      "return_date": "15-12-2020 10:30:00",
      "status": "Dikembalikan"
    }
  ]
}
```

Response Body (Failed) :

```json
{
  "errors" : "Loan is not found"
}
```