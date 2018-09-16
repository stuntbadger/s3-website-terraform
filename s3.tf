resource "aws_s3_bucket" "b" {
  bucket = "s3-website-eth2.co.uk"
  acl    = "public-read"
  policy = "${file("policy.json")}"

  website {
    index_document = "index.html"
    error_document = "error.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}

resource "aws_s3_bucket_object" "object" {
  bucket = "s3-website-eth2.co.uk"
  key    = "index.html"
  source = "eth2/index.html"
  content_type ="text/html"
  etag   = "${md5(file("eth2/index.html"))}"
}
