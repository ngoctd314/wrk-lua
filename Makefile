host:= "http://localhost:8080/"
thread := 12
duration := "10s"
connections := 10
workrate := 100

benchmark:
	wrk -t$(thread) -d$(duration) -c$(connections) -R$(workrate) -s running.lua $(host)