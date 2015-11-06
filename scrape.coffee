casper = require("casper").create(
  viewportSize:
    width: 1440
    height: 900
)

i = 0

directoryName = "screenshot"

casper.start("http://kakaku.com/item/K0000538202/pricehistory/", ->
  @capture("#{directoryName}/cap_#{i++}.png",
    top: 0
    left: 380
    height: 800 
    width: 680
  )
)

.thenOpen "http://kakaku.com/item/K0000747700/pricehistory/", ->
  @capture("#{directoryName}/cap_#{i++}.png",
    top: 0
    left: 380
    height: 800 
    width: 680
  )

.thenOpen "http://kakaku.com/item/K0000736874/pricehistory/", ->
  @capture("#{directoryName}/cap_#{i++}.png",
    top: 0
    left: 380
    height: 800 
    width: 680
  )

# .wait 3000, ->
#   console.log "3000ms passed"

# .then ->
#   @capture "edit_project.png"
#   console.log "took snap shot"

casper.run()