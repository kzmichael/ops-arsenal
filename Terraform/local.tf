#All you need is the plan, the road map, and the courage to press on to your destination.
resource "local_file" "pet" {
    filename = "pet.txt"
    content  = "we dont love pets shhh...." 
}

resource "random_pet" "my_pet" {
  prefix = "Mr"
  length    = 1
  separator = "."
}