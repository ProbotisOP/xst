<p align="center">
  <img src="https://github.com/user-attachments/assets/54f8808b-c6c0-4011-b96c-8400670a16c4"  height=200 width=200/>
</p>


# xst: The Command Line's Tiny Telemetry Titan

## What is xst?

`xst` is your command line's personal fitness tracker. It's like having a tiny, lightning-fast accountant that tells you exactly how much CPU sweat, RAM calories, and time your commands are burning!

## Why xst?

Because ignorance isn't bliss when it comes to performance! `xst` lets you:

- Catch resource-hogging commands red-handed
- Impress your tech friends with exact command execution times
- Finally answer the age-old question: "Is my computer slow, or is it just me?"

## Installation

To install `xst`, run:

```bash
curl -s https://raw.githubusercontent.com/ProbotisOP/ExecStat/main/xst.bash | bash

cd ExecStat 

chmod +x xst.bash

mv xst.bash /usr/local/bin/xst 
```

<details>
 <summary> Purpose and Applications </summary>
  
`xst` is a versatile tool that enhances productivity across various tech domains:

### 1. Software Development
Optimize your code and build processes:
```bash
# Measure compilation time
gcc -O2 src/*.c -o myapp | xst

# Profile test suite execution
python -m pytest tests/ | xst

# Analyze build time
make | xst

# Measure database query performance
mysql -e "SELECT * FROM users" | xst

# Measure file system operations
cp -r /path/to/source /path/to/destination | xst

```

### 2. DevOps and System Administration

Monitor resource usage of critical operations:
```bash
# Analyze database backup performance
 pg_dump mydatabase | gzip > backup.gz | xst 

# Measure system update resource usage
 sudo apt update && sudo apt upgrade -y | xst 

 ```

 ### 3 CICD Pieplines

Track the performance of your CI/CD pipelines:

```bash
# Measure Docker build time
docker build . | xst

# Measure Kubernetes deployment time
kubectl apply -f deployment.yaml | xst

# Measure Helm chart installation time
helm install mychart | xst

```

### 4 Web Development and API Testing

```bash
# Measure API response times
curl -X POST https://api.example.com/data -d '{"key":"value"}' | xst

# Profile server-side rendering
node server.js & sleep 2 && ab -n 1000 -c 10 http://localhost:3000/ | xst

```
</details>
