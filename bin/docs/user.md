# User API Spec

## Register User

Endpoint : POST /api/users

Request Body :

```json
{
  "username" : "affandi",
  "password" : "rahasia",
  "first_name" : "Affandi",
  "last_name": "Pratama",
  "email": "affandi@example.com",
  "role": "User"
}
```

Response Body (Success) :

```json
{
  "data" : "OK"
}
```

Response Body (Failed) :

```json
{
  "errors" : "Username and password must not blank, ???"
}
```

## Login User

Endpoint : POST /api/auth/login

Request Body :

```json
{
  "username" : "affandi",
  "password" : "rahasia" 
}
```

Response Body (Success) :

```json
{
  "data" : {
    "token" : "TOKEN",
    "expiredAt" : 2342342423423 // milliseconds
  }
}
```

Response Body (Failed, 401) :

```json
{
  "errors" : "Username or password wrong"
}
```

## Get User

Endpoint : GET /api/users/current

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data" : {
    "username" : "affandi",
    "password" : "rahasia",
    "first_name" : "Affandi",
    "last_name": "Pratama",
    "email": "affandi@example.com",
    "role": "User"
  }
}
```

Response Body (Failed, 401) :

```json
{
  "errors" : "Unauthorized"
}
```

## Update User

Endpoint : PATCH /api/users/current

Request Header :

- X-API-TOKEN : Token (Mandatory)

Request Body :

```json
{
  "username" : "affandi",
  "password" : "rahasia",
  "first_name" : "Affandi",
  "last_name": "Pratama",
  "email": "affandi@example.com",
  "role": "User"
}
```

Response Body (Success) :

```json
{
  "data" : {
    "username" : "Pratama",
    "password" : "baru",
    "first_name" : "Pratama",
    "last_name": "Affandi",
    "email": "fandi@example.com",
    "role": "User"
  }
}
```

Response Body (Failed, 401) :

```json
{
  "errors" : "Unauthorized"
}
```

## Remove User

Endpoint : DELETE /api/users/current

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "role" : "Admin",
  "data" : "OK"
}
```

Response Body (Failed) :

```json
{
  "errors" : "User is not found"
}
```

## Logout User

Endpoint : DELETE /api/auth/logout

Request Header :

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) :

```json
{
  "data" : "OK"
}
```