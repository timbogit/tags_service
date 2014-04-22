
# Versioning your APIs
Change happens! You *will* encounter new requirements for your service. What to do when you have existing clients that would break when you changed your API to meet the new requirements?
Most of the time, "lock-step upgrades" of your service and all your clients are simply not an option.

The answer: versioning!

You can make changes to an existing service by bumping the version number on its API endpoints. Existing clients will keeping functioning, while new clients can use the updated / new features of our "API V2".


## Where does the version go?
There are many options for specifying a version for the API. Here are the most common approaches we have seen:

* In a special API header
	* `'X-LivingSocial-API-Version: 2'`
	* RESTful 'purists' will probably go this route, as they do not think a version of a resource should ever be part of the resources URI, as it is in essence still the same resource you are describing.
	
* In a path parameter
	* `/api/cities/123.json?version=2`
	* some API designers choose this approach, but we don't like it, as it seems less 'obvious', and muddles the waters around parameters for representations, search terms, etc.

* In a query parameter
	* `/api/v2/cities/123.json`
	* we usually use this approach, as it is simple and seems most intuitive to us.


## What numbering scheme should I use?
Most implementers tend to either use consecutive integers (v1, v2, v3, ...), or dates (v20140424, v20130811, ...). 
Whatever you do, we encourage using something that allows for easy and efficient 'comparisions' to understand which API is the later version. I.e., we discourage using schemes like "v_new", "v_old", "vEasterEdition", or even "v08112013" (if you use dates, use the ISO format).


## Deprecating APIs
Any API you publish will live for a ***long*** time, ... especially public APIs! Invest some though pre-laucn about a depprecation policy.

* Make sure you have a way to *identify* your clients for any given version of your API.
	* maybe require a `client_name` (header?) parameter for every call to your service, and make sure to log it.
* Think about how to notify / contact your clients about any updates to your APIs
	* Do you have email addresses / contact details of all client app owners?
	* Inernally, we use mailing list for communicating changes, bugfixes, etc.
* Along with any API, be sure to publish a deprecation and support policy
	* that way, client apps can plan ahead, ... and you have a better position to tell them "get off this version" :-)
* For internal APIs, be sure to set expectations / responsibilities around which team is responsible for upgrading your client applications
	* Is the client app team responsible to act on it, or will the service team be on the hook? (At LivingSocial, it's usually the service team that sends PRs to all client apps.) 



## Walk-through of an example:

Someone in our business department thinks it's a *great* idea to not ony show a list of *inventory items* filtered by category (... tags, for us techies), but also allow for presenting the customer a list of cities that our business department would like to categorize (... again, us techies hear "tagging"). 

The engineers get together and think that we can probably best implement this by allowing things *other than inventory items*  to be tagged inside the existing `tags-service`.

Let's walk through the changes to [`tags-service`](https://github.com/timbogit/tags_service/commit/615c10ff6a77047c4fe29e1a7b49193d4d343298) (in the `features/tag_entities` branch) that were necessary to allow for tagging cities (or in principle, arbitraty 'entities'), and exposing these capabilities as a V2 API ... all while keeping the V1 API unchanged, so that there is no service interruption for `inventory-service`'s usage of the v1 API endpoints.

The v2 API's swagger JSON spec can be best viewed in `tags-service`' swagger UI by pointing it at this API spec:

````
http://tags-service-development.herokuapp.com/api_docs/v2/api-docs.json
```` 

By the way: we also changed [`cities-service`](https://github.com/timbogit/cities_service/commit/c709caf7cf28ffb0fd3ed92bf2d58d6e828848c0) (in the `features/tag_cities` branch) to have it call `tags-service` for tagging information about a given city, so that these tags can be displayed in the city JSON representation.

## Exercise
* Use `tags-service`'s API V2 to tag some cities with (existing, or newly created tags).
	* hint: `curl -v -H "Content-type: application/json" -X POST 'http://localhost:3000/api/v2/tags/bacon/tagged_items.json' -d '{"id":1, "item_type": "city"}'`
* Add a simple "show me all cities tagged with <tag_name>" page to the `deals` application, using data from `cities-service` and `tags-service`
