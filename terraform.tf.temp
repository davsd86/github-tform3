terraform {
  required_version = ">= 0.9.1"

  backend "s3" {
    # This is an s3bucket you will need to create in your aws 
    # space
    bucket = "davterrabackend2"
     
    # The key should be unique to each stack, because we want to
    # have multiple enviornments alongside each other we set
    # this dynamically in the bitbucket-pipelines.yml with the
    # --backend
    key = "global/s3/terraform.tfstate"

    region = "eu-west-2"

    # This is a DynamoDB table with the Primary Key set to LockID
    dynamodb_table = "davterratable5"

    #Enable server side encryption on your terraform state
    encrypt = true
  }
