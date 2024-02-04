provider "aws" {
  # Adding a credentials file that i can modify when needed and also lives outside all my repo
  shared_credentials_files = ["../tf_user/.creds"]
  profile                  = "privateprofile"
  region                   = "eu-north-1"
}

### we can have mulitply provider