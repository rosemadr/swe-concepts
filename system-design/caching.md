# Caching

Storing frequently accessed data in an easily and quickly accessible location in order to improve the performance of the system.

##### cache miss: the first time a request is made to a data source to originally retrieve the data

## Why not store all data in a cache?
- hardware of cache is more expensive than db
- search time will increase with data volume
- caches are volatile and data is impermanent, it is lost if the system crashes/restarts

## Types of cache
### Application server cache
- Cache in the application server is a storage layer within the application.
- Drawbacks: doesn't work with horizontally scales apps because there are more cache misses as each node only caches what it uses.

### Distributed cache


## Cache invalidation
Cache invalidation is needed to ensure cache data is kept up-to-date. Cache invalidation techniques are needed:
- time-based - has an expiration date, then data is refreshed from source
    - pros: easy to implement, good for data which doesn't change too frequently
    - cons: can lead to stale data/unnecessary refreshes if time limit is too long/short
- key-based - cached data has key, key is invalidated when original data is updated
    - pros: good for data which changes frequently, ensures that most up-to-date data is used
    - cons: more complex to implement than time-based, may require more storage for keys
- write-through - updating original source first, then updating/removing cache
    - pros: cached data always up to date
    - cons: slower than other methods
- write-behind - update cached data first then original source data
    - pros: can be faster than write-through
    - cons: increases risk of stale data because cached data may not always be in sync
- purge cache - cached content for particular resource is purged. Typically used when content has been updated or changed and cached version is no longer accurate
    - pros: ensures that all cahced data is removed and the cache is completely cleared
    - cons: can be slow and resource intensive, can cause temporary service disruptions
- refresh cache - fetches requested content from origin server and updates existing cached content
    - pros: can be done quickly/easily, ensures that cached data is up-to-date
    - cons: can result in temporary spike in traffic as clients request updates resource



___

## Caching services
Redis https://redis.io/ 


## Resources/citations

- https://www.geeksforgeeks.org/system-design/caching-system-design-concept-for-beginners/
- https://www.geeksforgeeks.org/system-design/what-is-a-distributed-cache/
- https://www.geeksforgeeks.org/system-design/cache-invalidation-and-the-methods-to-invalidate-cache/
