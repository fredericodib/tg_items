Feature: bdd_generator

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
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30,"created_at":"2021-03-25T13:21:40.774Z","updated_at":"2021-03-25T13:21:40.774Z"}
		When the client requests with POST /items, body: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}, headers: {}
		Then the response status should be 201
		And The JSON response should be {"id":17,"name":"caderno","value":30,"created_at":"2021-03-25T13:28:44.695Z","updated_at":"2021-03-25T13:28:44.695Z"}

	Scenario: items index
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
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30,"created_at":"2021-03-25T13:21:40.774Z","updated_at":"2021-03-25T13:21:40.774Z"}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30,"created_at":"2021-03-25T13:28:44.695Z","updated_at":"2021-03-25T13:28:44.695Z"}
		When the client requests with GET /items, body: {"controller":"items","action":"index"}, headers: {}
		Then the response status should be 200
		And The JSON response should be [{"id":5,"name":"caderno","value":5000000,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-25T13:14:46.944Z"},{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"},{"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"},{"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"},{"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"},{"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"},{"id":13,"name":"caderno","value":30,"created_at":"2021-03-25T13:16:29.013Z","updated_at":"2021-03-25T13:16:29.013Z"},{"id":14,"name":"caderno","value":30,"created_at":"2021-03-25T13:19:44.046Z","updated_at":"2021-03-25T13:19:44.046Z"},{"id":15,"name":"caderno","value":30,"created_at":"2021-03-25T13:20:56.757Z","updated_at":"2021-03-25T13:20:56.757Z"},{"id":16,"name":"caderno","value":30,"created_at":"2021-03-25T13:21:40.774Z","updated_at":"2021-03-25T13:21:40.774Z"},{"id":17,"name":"caderno","value":30,"created_at":"2021-03-25T13:28:44.695Z","updated_at":"2021-03-25T13:28:44.695Z"}]

	Scenario: items update
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
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30,"created_at":"2021-03-25T13:21:40.774Z","updated_at":"2021-03-25T13:21:40.774Z"}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30,"created_at":"2021-03-25T13:28:44.695Z","updated_at":"2021-03-25T13:28:44.695Z"}
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
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30,"created_at":"2021-03-25T13:16:29.013Z","updated_at":"2021-03-25T13:16:29.013Z"}
		Given There is an instance of Item with id 14 and params: {"id":14,"name":"caderno","value":30,"created_at":"2021-03-25T13:19:44.046Z","updated_at":"2021-03-25T13:19:44.046Z"}
		Given There is an instance of Item with id 15 and params: {"id":15,"name":"caderno","value":30,"created_at":"2021-03-25T13:20:56.757Z","updated_at":"2021-03-25T13:20:56.757Z"}
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30,"created_at":"2021-03-25T13:21:40.774Z","updated_at":"2021-03-25T13:21:40.774Z"}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30,"created_at":"2021-03-25T13:28:44.695Z","updated_at":"2021-03-25T13:28:44.695Z"}
		When the client requests with GET /items/5, body: {"controller":"items","action":"show","id":"5"}, headers: {"Authorization":"dedeed"}
		Then the response status should be 200
		And The JSON response should be {"id":5,"name":"caderno","value":5000000,"created_at":"2021-03-16T23:31:37.332Z","updated_at":"2021-03-25T13:14:46.944Z"}

	Scenario: items destroy
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
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30,"created_at":"2021-03-25T13:21:40.774Z","updated_at":"2021-03-25T13:21:40.774Z"}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30,"created_at":"2021-03-25T13:28:44.695Z","updated_at":"2021-03-25T13:28:44.695Z"}
		When the client requests with DELETE /items/5, body: {"controller":"items","action":"destroy","id":"5"}, headers: {}
		Then the response status should be 200
		And The JSON response should be {}

	Scenario: items index
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30}
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30}
		Given There is an instance of Item with id 14 and params: {"id":14,"name":"caderno","value":30}
		Given There is an instance of Item with id 15 and params: {"id":15,"name":"caderno","value":30}
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30}
		When the client requests with GET /items, body: {"controller":"items","action":"index"}, headers: {}
		Then the response status should be 200
		And The JSON response should be [{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"},{"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"},{"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"},{"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"},{"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"},{"id":13,"name":"caderno","value":30,"created_at":"2021-03-25T13:16:29.013Z","updated_at":"2021-03-25T13:16:29.013Z"},{"id":14,"name":"caderno","value":30,"created_at":"2021-03-25T13:19:44.046Z","updated_at":"2021-03-25T13:19:44.046Z"},{"id":15,"name":"caderno","value":30,"created_at":"2021-03-25T13:20:56.757Z","updated_at":"2021-03-25T13:20:56.757Z"},{"id":16,"name":"caderno","value":30,"created_at":"2021-03-25T13:21:40.774Z","updated_at":"2021-03-25T13:21:40.774Z"},{"id":17,"name":"caderno","value":30,"created_at":"2021-03-25T13:28:44.695Z","updated_at":"2021-03-25T13:28:44.695Z"}]

	Scenario: items create
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30}
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30}
		Given There is an instance of Item with id 14 and params: {"id":14,"name":"caderno","value":30}
		Given There is an instance of Item with id 15 and params: {"id":15,"name":"caderno","value":30}
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30}
		When the client requests with POST /items, body: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}, headers: {}
		Then the response status should be 201
		And The JSON response should be {"id":18,"name":"caderno","value":30,"created_at":"2021-03-25T14:18:25.618Z","updated_at":"2021-03-25T14:18:25.618Z"}

	Scenario: items create
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30}
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30}
		Given There is an instance of Item with id 14 and params: {"id":14,"name":"caderno","value":30}
		Given There is an instance of Item with id 15 and params: {"id":15,"name":"caderno","value":30}
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30}
		Given There is an instance of Item with id 18 and params: {"id":18,"name":"caderno","value":30}
		When the client requests with POST /items, body: {"item":{"name":"caderno","value":"30"},"controller":"items","action":"create"}, headers: {}
		Then the response status should be 201
		And The JSON response should be {"id":19,"name":"caderno","value":30,"created_at":"2021-03-25T14:18:27.160Z","updated_at":"2021-03-25T14:18:27.160Z"}

	Scenario: items index
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30}
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30}
		Given There is an instance of Item with id 14 and params: {"id":14,"name":"caderno","value":30}
		Given There is an instance of Item with id 15 and params: {"id":15,"name":"caderno","value":30}
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30}
		Given There is an instance of Item with id 18 and params: {"id":18,"name":"caderno","value":30}
		Given There is an instance of Item with id 19 and params: {"id":19,"name":"caderno","value":30}
		When the client requests with GET /items, body: {"controller":"items","action":"index"}, headers: {}
		Then the response status should be 200
		And The JSON response should be [{"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"},{"id":8,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:39.503Z","updated_at":"2021-03-16T23:31:39.503Z"},{"id":9,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:56.471Z","updated_at":"2021-03-16T23:31:56.471Z"},{"id":10,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.425Z","updated_at":"2021-03-16T23:31:57.425Z"},{"id":11,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:57.902Z","updated_at":"2021-03-16T23:31:57.902Z"},{"id":12,"name":"caderno","value":30,"created_at":"2021-03-25T00:36:00.443Z","updated_at":"2021-03-25T00:36:00.443Z"},{"id":13,"name":"caderno","value":30,"created_at":"2021-03-25T13:16:29.013Z","updated_at":"2021-03-25T13:16:29.013Z"},{"id":14,"name":"caderno","value":30,"created_at":"2021-03-25T13:19:44.046Z","updated_at":"2021-03-25T13:19:44.046Z"},{"id":15,"name":"caderno","value":30,"created_at":"2021-03-25T13:20:56.757Z","updated_at":"2021-03-25T13:20:56.757Z"},{"id":16,"name":"caderno","value":30,"created_at":"2021-03-25T13:21:40.774Z","updated_at":"2021-03-25T13:21:40.774Z"},{"id":17,"name":"caderno","value":30,"created_at":"2021-03-25T13:28:44.695Z","updated_at":"2021-03-25T13:28:44.695Z"},{"id":18,"name":"caderno","value":30,"created_at":"2021-03-25T14:18:25.618Z","updated_at":"2021-03-25T14:18:25.618Z"},{"id":19,"name":"caderno","value":30,"created_at":"2021-03-25T14:18:27.160Z","updated_at":"2021-03-25T14:18:27.160Z"}]

	Scenario: items show
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30}
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30}
		Given There is an instance of Item with id 14 and params: {"id":14,"name":"caderno","value":30}
		Given There is an instance of Item with id 15 and params: {"id":15,"name":"caderno","value":30}
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30}
		Given There is an instance of Item with id 18 and params: {"id":18,"name":"caderno","value":30}
		Given There is an instance of Item with id 19 and params: {"id":19,"name":"caderno","value":30}
		When the client requests with GET /items/6, body: {"controller":"items","action":"show","id":"6"}, headers: {"Authorization":"dedeed"}
		Then the response status should be 200
		And The JSON response should be {"id":6,"name":"caderno","value":30,"created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-16T23:31:37.851Z"}

	Scenario: items update
		Given There is an instance of Item with id 6 and params: {"id":6,"name":"caderno","value":30}
		Given There is an instance of Item with id 8 and params: {"id":8,"name":"caderno","value":30}
		Given There is an instance of Item with id 9 and params: {"id":9,"name":"caderno","value":30}
		Given There is an instance of Item with id 10 and params: {"id":10,"name":"caderno","value":30}
		Given There is an instance of Item with id 11 and params: {"id":11,"name":"caderno","value":30}
		Given There is an instance of Item with id 12 and params: {"id":12,"name":"caderno","value":30}
		Given There is an instance of Item with id 13 and params: {"id":13,"name":"caderno","value":30}
		Given There is an instance of Item with id 14 and params: {"id":14,"name":"caderno","value":30}
		Given There is an instance of Item with id 15 and params: {"id":15,"name":"caderno","value":30}
		Given There is an instance of Item with id 16 and params: {"id":16,"name":"caderno","value":30}
		Given There is an instance of Item with id 17 and params: {"id":17,"name":"caderno","value":30}
		Given There is an instance of Item with id 18 and params: {"id":18,"name":"caderno","value":30}
		Given There is an instance of Item with id 19 and params: {"id":19,"name":"caderno","value":30}
		When the client requests with PATCH /items/6, body: {"item":{"value":"5000000"},"controller":"items","action":"update","id":"6"}, headers: {}
		Then the response status should be 200
		And The JSON response should be {"id":6,"value":5000000,"name":"caderno","created_at":"2021-03-16T23:31:37.851Z","updated_at":"2021-03-25T14:19:03.460Z"}

