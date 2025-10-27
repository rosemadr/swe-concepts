# api-health-check
The API health check is a monitoring method that checks your API and alerts you to anything wrong.

This differs from an **API ping** which will return a status 200 OK.

API health checks check everything which might stop the API from serving incoming requests:
- downstread operation status - e.g. other APIs you're dependent on
- database connection
- database response time
- memory consumption
- in-flight messages - too many in-flight messages in your message queues may be a sign of underlying issues

**n.b. you should disable caching on that endpoint so HTTP caching does not serve the request** 

### Things you may test
- response time
- status code
- JSON format



___
## Resources/citations
- https://testfully.io/blog/api-health-check-monitoring/
- https://learn.microsoft.com/en-us/azure/architecture/patterns/health-endpoint-monitoring
- https://dev.to/quicksilversel/liveness-vs-readiness-in-kubernetes-the-truth-for-frontend-apps-2b24 