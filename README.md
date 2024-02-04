## Enable AWS organization - just to understand the concept - no real scenario implementation
## This is a free services by AWS and will not create any billings
# Its the resources within every ou that will cost depends on your requirments for a fully working envorinment setup

---

Service principal names for which you want to enable integration with your organization. 
This services you can see: AWS Organizations > Services, as a list of services e.g "Access enabled"  or "Access disabled"
If you checking the list now it will have "Access disabled for Amazon Detective"
- IF you uncomment the api for that service in the list and run apply , this will change to "Access enabled"
     - So now this service are alowed to be used across the Organization.


--- 
Here is a link to a list for some services:
https://gist.github.com/shortjared/4c1e3fe52bdfa47522cfe5b41e5d6f22