
all:
	g++ -I /usr/local/include/eigen3 main.cpp KalmanFilter.cpp -o main

clean:
	rm *.o