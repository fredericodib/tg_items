Feature: bdd_generator

	Scenario: items create
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":1,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:13.999Z","updated_at":"2021-03-16T23:31:13.999Z"}

	Scenario: items index
		Given There is an instance of Item with id 1 and params: {"id":1,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:13.999Z","updated_at":"2021-03-16T23:31:13.999Z"}
		When the client requests with GET /items, params: {"controller":"items","action":"index"}
		Then the response status should be 200
		And The JSON response should be [{"id":1,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:13.999Z","updated_at":"2021-03-16T23:31:13.999Z"}]

	Scenario: items show
		Given There is an instance of Item with id 1 and params: {"id":1,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:13.999Z","updated_at":"2021-03-16T23:31:13.999Z"}
		When the client requests with GET /items/1, params: {"controller":"items","action":"show","id":"1"}
		Then the response status should be 200
		And The JSON response should be {"id":1,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:13.999Z","updated_at":"2021-03-16T23:31:13.999Z"}

	Scenario: items index
		When the client requests with GET /items, params: {"controller":"items","action":"index"}
		Then the response status should be 200
		And The JSON response should be []

	Scenario: items create
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}

	Scenario: items create
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}

	Scenario: items create
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}

	Scenario: items create
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}

	Scenario: items create
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}

	Scenario: items create
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":7,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:38.958Z","updated_at":"2021-03-16T23:31:38.958Z"}

	Scenario: items create
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 7 and params: {"id":7,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:38.958Z","updated_at":"2021-03-16T23:31:38.958Z"}
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}

	Scenario: items index
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		When the client requests with GET /items, params: {"controller":"items","action":"index"}
		Then the response status should be 200
		And The JSON response should be [{"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"},{"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"},{"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"},{"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"},{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}]

	Scenario: items create
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}

	Scenario: items create
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}

	Scenario: items create
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		When the client requests with POST /items, params: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}
		Then the response status should be 201
		And The JSON response should be {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}

	Scenario: items index
		Given There is an instance of Item with id 2 and params: {"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"}
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		When the client requests with GET /items, params: {"controller":"items","action":"index"}
		Then the response status should be 200
		And The JSON response should be [{"id":2,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:35.461Z","updated_at":"2021-03-16T23:31:35.461Z"},{"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"},{"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"},{"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"},{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"},{"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"},{"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"},{"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}]

