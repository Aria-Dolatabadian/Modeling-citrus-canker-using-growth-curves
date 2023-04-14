#Modeling citrus canker using growth curves

##Set up function
plot2 <- function(y1,y2,r1,r2,max1,max2){
  # The first curve
  curve(
          y1*exp(r1*x),
          from=0,
          to=max1,
          add=FALSE,
          lty=1,
          xlab='Days',
          ylab='Disease Incidence',
          col='black',
          xlim=c(0,400),
          ylim=c(0,1)
  )
  # The second curve
  curve(y2*exp(r2*x),
          from=0,
          to=max2,
          add=TRUE,
          lty=1,
          col='mediumblue'
  )
}
##Run the function plot2
plot2(0.0017,0.0017,0.01579,0.01661,383,382);
##Creates title for the graph and subtitle at bottom
title(main="Orange and Grapefruit Comparison",
  sub="Exponential Curve Model")
##Creates legend in upper left corner
legend(
  "topleft",
  c("Orange","Grapefruit"),
  lty=c(1),
  col=c("black","mediumblue"),
  inset=0.05
)

#Plotting three exponential curves.

##Set up function
plot3 <- function(y1,y2,y3,r1,r2,r3,max1,max2,max3){
  # The first curve
  curve(y1*exp(r1*x),
          from=0,
          to=max1,
          add=FALSE,
          lty=1,
          xlab='Days',
          ylab='Disease Incidence',
          col='black',
          xlim=c(0,500),
          ylim=c(0,1)
  )
  # The second curve
  curve(y2*exp(r2*x),
          from=0,
          to=max2,
          add=TRUE,
          lty=1,
          col='mediumblue'
  )
  # The third curve
  curve(y3*exp(r3*x),
          from=0,
          to=max3,
          add=TRUE,
          lty=1,
          col='orange'
  )
}
##Run the function plot3
plot3(0.0017,0.0017,0.001,0.01579,0.01661,0.01466,383,382,463);
##Creates title for the graph and subtitle at bottom
title(
  main="Orange, Grapefruit, Swingle Comparison",
  sub="Exponential Curve Model"
)
##Creates legend in upper left corner
legend(
  "topleft",
  c("Orange","Grapefruit","Swingle"),
  lty=c(1),
  col=c("black","mediumblue","orange"),
  inset=0.05
)

