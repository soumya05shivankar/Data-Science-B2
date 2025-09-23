#Soumya_Shivankar_22070521177
#Practical_05
#Pictured below is a matrix. Recreate this matrix in at least three different ways.
#Player Piece
#[1,] &quot;dark&quot; &quot;king&quot;
#[2,] &quot;dark&quot; &quot;queen&quot;
#[3,] &quot;dark&quot; &quot;pawn&quot;
#[4,] &quot;dark&quot; &quot;pawn&quot;
#[5,] &quot;dark&quot; &quot;knight&quot;
#[6,] &quot;light&quot; &quot;bishop&quot;
#[7,] &quot;light&quot; &quot;king&quot;
#[8,] &quot;light&quot; &quot;rook&quot;
#[9,] &quot;light&quot; &quot;pawn&quot;
#[10,] &quot;light&quot; &quot;pawn&quot;
#a)Hint. Use the dim() function, the matrix() function, and cbind().
#b)Can you think of a faster way to create this matrix?
#c)Assign names to it in two different ways.
#d)Would using rbind() be practical in this case?
#e)Can you think of a way to make adding a row to the matrix worthwhile?

#Practical_5_22070521177

#a)
#Method 1: Using matrix() 
data <- c("dark","king",
          "dark","queen",
          "dark","pawn",
          "dark","pawn",
          "dark","knight",
          "light","bishop",
          "light","king",
          "light","rook",
          "light","pawn",
          "light","pawn")

m1 <- matrix(data, ncol=2, byrow=TRUE)
colnames(m1) <- c("Player", "Piece")
m1

#Method2: Using cbind()
Player <- c("dark","dark","dark","dark","dark",
            "light","light","light","light","light")

Piece <- c("king","queen","pawn","pawn","knight",
           "bishop","king","rook","pawn","pawn")

m2 <- cbind(Player, Piece)
m2

#b)
#Method 3: Using data.frame()
m3 <- data.frame(
  Player = c("dark","dark","dark","dark","dark",
             "light","light","light","light","light"),
  Piece = c("king","queen","pawn","pawn","knight",
            "bishop","king","rook","pawn","pawn")
)
m3

#c)
#Add names in two ways
colnames(m1) <- c("Player","Piece")               
dimnames(m1) <- list(1:10, c("Player","Piece"))    

#d) Not practically but works
#Using rbind() 
m4 <- rbind(
  c("dark","king"),
  c("dark","queen"),
  c("dark","pawn"),
  c("dark","pawn"),
  c("dark","knight"),
  c("light","bishop"),
  c("light","king"),
  c("light","rook"),
  c("light","pawn"),
  c("light","pawn")
)
colnames(m4) <- c("Player","Piece")
m4

#e)
#Adding a new row
m4 <- rbind(m4, c("dark","rook"))
m4






