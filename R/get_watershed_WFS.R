#'@title get WFS from site
#'@description get a WFS url from a site that has a 'watershed'
#'
#'@param site a site identifier
#'
#'@return a character string for WFS url or NULL if watershed doesn't exist for site, or site doesn't exist.
#'@seealso \code{\link{get_watershed_WMS}}
#'@examples
#'
#'\dontrun{
#'site <- "nwis_04165500"
#'get_watershed_WFS(site)
#'
#'# will fail
#'get_watershed_WFS('fake_site'))
#'}
#'
#'@import sbtools 
#'@export
get_watershed_WFS = function(site){
  
  watershed_item <- get_watershed_item(site)
 
  WFS_url <- match_url_distro(watershed_item, "ScienceBase WFS Service")
  return(WFS_url)
}

get_watershed_item = function(site){
	
  identifier <- query_item_identifier(scheme = get_scheme(), type = 'watershed', key = site)
  
  watershed_id <- identifier$id
  
  watershed_item <- item_get(id = watershed_id)
  
  return(watershed_item)
}
match_url_distro = function(item, title_to_match){
  
  num_links <- length(item[["distributionLinks"]])
  
  url = NULL
  for (i in seq_len(num_links)){
    if (item[["distributionLinks"]][[i]][['title']] == title_to_match){
      url <- item[["distributionLinks"]][[i]][['uri']]
      break
    }
  }
  
  return(url)
  
}