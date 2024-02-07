# api.R

#* @get /healthy
function() {
  print(Sys.getenv("USERNAME"))
  print(Sys.getenv("PASSWORD"))
  return("API is healthy")
}
