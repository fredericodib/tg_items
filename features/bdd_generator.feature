Feature: bdd_generator

	Scenario: items create
		When the client requests with POST /items, body: {"item":{"name":"item1","value":"30"},"controller":"items","action":"create"}, headers: {}
		Then the response status should be 201
		And The JSON response should be {"id":20,"name":"item1","value":30,"created_at":"2021-04-19T02:05:18.017Z","updated_at":"2021-04-19T02:05:18.017Z"}

	Scenario: items create
		Given There is an instance of Item with id 20 and params: {"id":20,"name":"item1","value":30,"created_at":"2021-04-19T02:05:18.017Z","updated_at":"2021-04-19T02:05:18.017Z"}
		When the client requests with POST /items, body: {"item":{"name":"item2","value":"20"},"controller":"items","action":"create"}, headers: {}
		Then the response status should be 201
		And The JSON response should be {"id":21,"name":"item2","value":20,"created_at":"2021-04-19T02:05:27.928Z","updated_at":"2021-04-19T02:05:27.928Z"}

	Scenario: items index
		Given There is an instance of Item with id 20 and params: {"id":20,"name":"item1","value":30,"created_at":"2021-04-19T02:05:18.017Z","updated_at":"2021-04-19T02:05:18.017Z"}
		Given There is an instance of Item with id 21 and params: {"id":21,"name":"item2","value":20,"created_at":"2021-04-19T02:05:27.928Z","updated_at":"2021-04-19T02:05:27.928Z"}
		When the client requests with GET /items, body: {"controller":"items","action":"index"}, headers: {}
		Then the response status should be 200
		And The JSON response should be [{"id":20,"name":"item1","value":30,"created_at":"2021-04-19T02:05:18.017Z","updated_at":"2021-04-19T02:05:18.017Z"},{"id":21,"name":"item2","value":20,"created_at":"2021-04-19T02:05:27.928Z","updated_at":"2021-04-19T02:05:27.928Z"}]

