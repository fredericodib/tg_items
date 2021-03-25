Feature: bdd_generator

	Scenario: items show
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		When the client requests with GET /items/3, body: {"controller":"items","action":"show","id":"3"}, headers: {"Authorization":"dedeed"}
		Then the response status should be 200
		And The JSON response should be {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}

	Scenario: items show
		Given There is an instance of Item with id 3 and params: {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		When the client requests with GET /items/3, body: {"controller":"items","action":"show","id":"3"}, headers: {}
		Then the response status should be 200
		And The JSON response should be {"id":3,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.163Z","updated_at":"2021-03-16T23:31:36.163Z"}

	Scenario: items index
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with GET /items, body: {"controller":"items","action":"index"}, headers: {}
		Then the response status should be 200
		And The JSON response should be [{"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"},{"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"},{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"},{"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"},{"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"},{"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"},{"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}]

	Scenario: items update
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-16T23:31:36.839Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with PATCH /items/4, body: {"item":{"name":"clarita caneca"},"controller":"items","action":"update","id":"4"}, headers: {}
		Then the response status should be 200
		And The JSON response should be {"id":4,"name":"clarita caneca","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-25T00:38:28.873Z"}

	Scenario: items update
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"clarita caneca","value":30,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-25T00:38:28.873Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with PATCH /items/4, body: {"item":{"value":"5000000"},"controller":"items","action":"update","id":"4"}, headers: {}
		Then the response status should be 200
		And The JSON response should be {"id":4,"value":5000000,"name":"clarita caneca","created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-25T00:38:40.003Z"}

	Scenario: items show
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"clarita caneca","value":5000000,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-25T00:38:40.003Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with GET /items/4, body: {"controller":"items","action":"show","id":"4"}, headers: {"Authorization":"dedeed"}
		Then the response status should be 200
		And The JSON response should be {"id":4,"name":"clarita caneca","value":5000000,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-25T00:38:40.003Z"}

	Scenario: items destroy
		Given There is an instance of Item with id 4 and params: {"id":4,"name":"clarita caneca","value":5000000,"created_at":"2021-03-16T23:31:36.839Z","updated_at":"2021-03-25T00:38:40.003Z"}
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with DELETE /items/4, body: {"controller":"items","action":"destroy","id":"4"}, headers: {}
		Then the response status should be 200
		And The JSON response should be {}

	Scenario: items index
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with GET /items, body: {"controller":"items","action":"index"}, headers: {}
		Then the response status should be 200
		And The JSON response should be [{"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"},{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"},{"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"},{"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"},{"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"},{"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}]

	Scenario: items index
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with GET /items, body: {"controller":"items","action":"index"}, headers: {}
		Then the response status should be 200
		And The JSON response should be [{"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"},{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"},{"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"},{"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"},{"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"},{"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}]

	Scenario: items index
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with GET /items, body: {"controller":"items","action":"index"}, headers: {}
		Then the response status should be 200
		And The JSON response should be [{"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"},{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"},{"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"},{"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"},{"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"},{"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}]

	Scenario: items index
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with GET /items, body: {"controller":"items","action":"index"}, headers: {}
		Then the response status should be 200
		And The JSON response should be [{"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"},{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"},{"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"},{"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"},{"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"},{"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}]

	Scenario: items update
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-16T23:31:37.332Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with PATCH /items/5, body: {"item":{"value":"5000000"},"controller":"items","action":"update","id":"5"}, headers: {}
		Then the response status should be 200
		And The JSON response should be {"id":5,"value":5000000,"name":"caderno","created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-25T13:14:46.944Z"}

	Scenario: items show
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":5000000,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-25T13:14:46.944Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with GET /items/5, body: {"controller":"items","action":"show","id":"5"}, headers: {"Authorization":"dedeed"}
		Then the response status should be 200
		And The JSON response should be {"id":5,"name":"caderno","value":5000000,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-25T13:14:46.944Z"}

	Scenario: items create
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":5000000,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-25T13:14:46.944Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		When the client requests with POST /items, body: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}, headers: {}
		Then the response status should be 201
		And The JSON response should be {"id":13,"name":"caderno","value":30,"created_at":"2021-03-25T13:16:29.013Z","updated_at":"2021-03-25T13:16:29.013Z"}

	Scenario: items create
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":5000000,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-25T13:14:46.944Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30,"created_at":"2021-03-25T13:16:29.013Z","updated_at":"2021-03-25T13:16:29.013Z"}
		When the client requests with POST /items, body: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}, headers: {}
		Then the response status should be 201
		And The JSON response should be {"id":14,"name":"caderno","value":30,"created_at":"2021-03-25T13:19:44.046Z","updated_at":"2021-03-25T13:19:44.046Z"}

	Scenario: items create
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":5000000,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-25T13:14:46.944Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30,"created_at":"2021-03-25T13:16:29.013Z","updated_at":"2021-03-25T13:16:29.013Z"}
		Given There is an instance of Item with id 14 and params: {"id":14,"name":"caderno","value":30,"created_at":"2021-03-25T13:19:44.046Z","updated_at":"2021-03-25T13:19:44.046Z"}
		When the client requests with POST /items, body: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}, headers: {}
		Then the response status should be 201
		And The JSON response should be {"id":15,"name":"caderno","value":30,"created_at":"2021-03-25T13:20:56.757Z","updated_at":"2021-03-25T13:20:56.757Z"}

	Scenario: items create
		Given There is an instance of Item with id 5 and params: {"id":5,"name":"caderno","value":5000000,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-25T13:14:46.944Z"}
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"}
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30,"created_at":"2021-03-25T13:16:29.013Z","updated_at":"2021-03-25T13:16:29.013Z"}
		Given There is an instance of Item with id 14 and params: {"id":14,"name":"caderno","value":30,"created_at":"2021-03-25T13:19:44.046Z","updated_at":"2021-03-25T13:19:44.046Z"}
		Given There is an instance of Item with id 15 and params: {"id":15,"name":"caderno","value":30,"created_at":"2021-03-25T13:20:56.757Z","updated_at":"2021-03-25T13:20:56.757Z"}
		When the client requests with POST /items, body: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}, headers: {}
		Then the response status should be 201
		And The JSON response should be {"id":16,"name":"caderno","value":30,"created_at":"2021-03-25T13:21:40.774Z","updated_at":"2021-03-25T13:21:40.774Z"}

