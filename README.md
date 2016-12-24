# KalmanFilter

This is a C++ implementation of the famous **Kalman Filter**.  
It use the **Eigen** Library for matrix manipulation and calculation.

  
  

### The repo contain:
1. *KalmanFilter.h* - Kalman class declaration
2. *KalmanFilter.cpp* - Kalman class implementation
3. *main.cpp* - Example that use the Kalman class
4. *makefile*

The example is based on a monodimensional problem explained here (look for: *A Simple Example*):
http://bilgin.esme.org/BitsAndBytes/KalmanFilterforDummies       
It simulate a noisy voltage reading from a constant source.
 
 
   
   
### How to use this code:
1. Download or clone the repo
2. Install Eigen Library (https://eigen.tuxfamily.org/dox/GettingStarted.html)  
On Mac you could simply do: `brew install eigen`.  
NOTE: Maybe you need to change the include path in the makefile: `-I /usr/local/include/eigen3`  
3. Open Terminal -> `cd` to this directory -> $ `make` -> $ `./main`  
You should see the voltage filter output values



### Class notes:
You have to use the correct dimension for the matrix:

 	n: State vector dimension
	m: Control vector dimension (input)

	A: n x n
	B: n x m
	H: n x n
	Q: n x n
	R: n x n
	I: n x n
	X: n x 1
	U: m x 1
	Z: n x 1
	P: n x n
	K: n x n
	
If the problem has **not input**, use the `setFixed()` and `predict()` functions versions that doesn't not need the input control vector (*vector U*) and the *matrix B*.
