#!/usr/bin/env Rscript
# parameters ------------
w <- 0
Ne <- 1000
### simple
pops <- c("p2","p3","p4")
## branch lengths
cC <- 200
c41<- 370
c42<- 130
c3 <- 300
c21<- 170
c22<- 130

m <- matrix( c((cC+c22+c21),   (cC)*(1-w),                            (cC+c21)*w,
               (cC)*(1-w)  ,      (c3+cC),                                     0,
               (cC+c21)*w  ,            0,     (c41)*(1-w)^2 + (cC+c21)*w^2 + c42
               
), byrow = TRUE , nrow = 3  )
rownames(m) <- pops
Fij <- m * 1/(2*Ne)

# Write matrix
write.table(Fij, "simple_w000.tab",
            sep =  " ",
            row.names = TRUE,
            col.names = FALSE,
            quote = FALSE)

### complex
pops <- c("p2","p3","p4","p5","p6")
## branch lengths
cC <- 200
cD <- 200
cE <- 200
c6 <- 500
c5 <- 500
c3 <- 300
c41<- 370
c42<- 130
c21<- 170
c22<- 130



m <- matrix( c( cC+cD+c21+c22, (cD+cC)*(1-w),                                         (c21+cD+cC)*w,       0,           0,
                (cD+cC)*(1-w),      cC+cD+c3,                                                    cC,       0,           0,
                (c21+cD+cC)*w,            cC,                  (c21+cD+cC)*w^2+(c41+cC)*(1-w)^2+c42,       0,           0,
                0,             0,                                                     0,       c5+cE,       cE,
                0,             0,                                                     0,       cE,       c6+cE   ), byrow = TRUE , nrow = 5  )

rownames(m) <- pops

Fij <- m * 1/(2*Ne)
# Write matrix
write.table(Fij, "complex_w000.tab",
            sep =  " ",
            row.names = TRUE,
            col.names = FALSE,
            quote = FALSE)



# w=0.3 ------------
w <- 0.3
Ne <- 1000
### simple
pops <- c("p2","p3","p4")
## branch lengths
cC <- 200
c41<- 370
c42<- 130
c3 <- 300
c21<- 170
c22<- 130

m <- matrix( c((cC+c22+c21),   (cC)*(1-w),                            (cC+c21)*w,
               (cC)*(1-w)  ,      (c3+cC),                                     0,
               (cC+c21)*w  ,            0,     (c41)*(1-w)^2 + (cC+c21)*w^2 + c42
               
), byrow = TRUE , nrow = 3  )
rownames(m) <- pops
Fij <- m * 1/(2*Ne)

# Write matrix
write.table(Fij, "simple_w030.tab",
            sep =  " ",
            row.names = TRUE,
            col.names = FALSE,
            quote = FALSE)

### complex
pops <- c("p2","p3","p4","p5","p6")
## branch lengths
cC <- 200
cD <- 200
cE <- 200
c6 <- 500
c5 <- 500
c3 <- 300
c41<- 370
c42<- 130
c21<- 170
c22<- 130



m <- matrix( c( cC+cD+c21+c22, (cD+cC)*(1-w),                                         (c21+cD+cC)*w,       0,           0,
                (cD+cC)*(1-w),      cC+cD+c3,                                                    cC,       0,           0,
                (c21+cD+cC)*w,            cC,                  (c21+cD+cC)*w^2+(c41+cC)*(1-w)^2+c42,       0,           0,
                            0,             0,                                                     0,       c5+cE,       cE,
                            0,             0,                                                     0,       cE,       c6+cE   ), byrow = TRUE , nrow = 5  )

rownames(m) <- pops

Fij <- m * 1/(2*Ne)
# Write matrix
write.table(Fij, "complex_w030.tab",
            sep =  " ",
            row.names = TRUE,
            col.names = FALSE,
            quote = FALSE)
