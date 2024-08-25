# mssql-alloy-image

Container to test MSSQL integration with Grafana Cloud instance. 

# Build and run
- git clone this repo 
- Anything with #TODO, you will need to replace with your relevant data. Keep sensitive data out of Git (which is why I didn't just build this and push an image to Quay)
```
docker-compose -f docker-compose.yaml up -d
```
- Service discovery should take place within the Pod, you can simply use 'mssql' for hostname in the connection string in Alloy. 


Obviously you can use numberous methods to provide variables, this was just quick and dirty approach to test MSSQL integrations. 

# Alloy running successfully will look like the following:

![image](https://github.com/user-attachments/assets/6194a8aa-038c-435d-ae98-d3dfef5c234a)


# Grafana MSSQL integrations dashboard:


![image](https://github.com/user-attachments/assets/637a81f8-3527-4e97-aaea-501b134241ba)


# This was developed for testing only, do not use for production, etc. 
