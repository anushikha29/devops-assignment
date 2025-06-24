#!/bin/bash

LOGFILE="logs/results.txt"
echo "test run – $(date)" > "$LOGFILE"

echo "testing service 1 (/ping)..." | tee -a "$LOGFILE"
curl -s http://localhost:8080/service1/ping | tee -a "$LOGFILE"
echo -e "\n" >> "$LOGFILE"

echo "testing service 1 (/hello)..." | tee -a "$LOGFILE"
curl -s http://localhost:8080/service1/hello | tee -a "$LOGFILE"
echo -e "\n" >> "$LOGFILE"

echo "testing service 2 (/ping)..." | tee -a "$LOGFILE"
curl -s http://localhost:8080/service2/ping | tee -a "$LOGFILE"
echo -e "\n" >> "$LOGFILE"

echo "testing service 2 (/hello)..." | tee -a "$LOGFILE"
curl -s http://localhost:8080/service2/hello | tee -a "$LOGFILE"
echo -e "\n" >> "$LOGFILE"

echo "all requests completed." | tee -a "$LOGFILE"
