
curl -XPUT '0:9200/_river/my_jdbc_river/_meta' -d '{
    "type" : "jdbc",
    "jdbc" : {
        "url" : "jdbc:mysql://localhost:3306/test",
        "user" : "",
        "password" : "",
        "sql" : "select *, created as _id from orders",
        "schedule" : "0/20 0-59 0-23 ? * *"
    }
}'
