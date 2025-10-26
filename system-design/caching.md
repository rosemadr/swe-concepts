# Caching

Storing frequently accessed data in an easily and quickly accessible location in order to improve the performance of the system.

##### cache miss: the first time a request is made to a data source to originally retrieve the data

## Why not store all data in a cache?
- hardware of cache is more expensive than db
- search time will increase with data volume
- caches are volatile and data is impermanent, it is lost if the system crashes/restarts

## Types of cache
### application server cache
- Cache in the application server is a storage layer within the application.
- Drawbacks: doesn't work with horizontally scales apps because there are more cache misses as each node only caches what it uses.

### distributed cache


## Cache invalidation


___

## Caching services
Redis https://redis.io/ 


## Resources/citations

- https://www.geeksforgeeks.org/system-design/caching-system-design-concept-for-beginners/
- https://www.geeksforgeeks.org/system-design/what-is-a-distributed-cache/
- https://www.geeksforgeeks.org/system-design/cache-invalidation-and-the-methods-to-invalidate-cache/
