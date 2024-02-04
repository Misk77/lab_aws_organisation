provider "aws" {
  # Adding a credetnials file that i can mofie when needed and also outside my repo
  shared_credentials_files = ["../tf_user/.creds"]
  profile                  = "privateprofile"
  region                   = "eu-north-1"
}

### we can have mulitply provider