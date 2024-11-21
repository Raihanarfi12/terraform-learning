resource "aws_s3_bucket" "marvel-cinematic-universe" {
  bucket = "mcu-202011121359"

}

resource "aws_s3_bucket_object" "upload" {
    bucket = "pixar-studios-2020"
    key = "woody.jpg"
    source = "/root/woody.jpg"
}