n = 5
B = 5000
theta_list = c(-0.8, -0.5, 0.3, 0.7)


for (th in theta_list){
	l = (1 - th) / 6
	h = (1 + th) / 6 
	generation = lapply(1:B, function(i) sample(1:6, n, replace = T, prob = c(rep(l, 3), rep(h,3))))
	xbar = sapply(generation, mean)
	print(paste("Theta: ", th))
	print(paste("Mean: ", mean(xbar)))
}