set terminal png

set output "gke-nginx.png"

set title " ab -c 10 -n 100"

set size 1,0.7

set grid y

set xlabel "Requests"

set ylabel "Response Time (ms)"

plot "gke-nginx" using 9 smooth sbezier with lines title "Conoha Concurrency (Nginx)"
