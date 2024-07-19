#!/bin/bash

# Function to get command execution time and resource usage
get_usage() {
    local start=$(perl -MTime::HiRes=time -e 'printf "%.6f", time')
    local output=$(cat)
    local end=$(perl -MTime::HiRes=time -e 'printf "%.6f", time')
    local duration=$(echo "$end - $start" | bc)

    # Get CPU and RAM usage
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        local cpu_usage=$(ps -o %cpu= -p $$ | awk '{print $1}')
        local ram_usage=$(ps -o rss= -p $$ | awk '{print $1 / 1024}')
    else
        # Linux
        local cpu_usage=$(ps -p $$ -o %cpu --no-headers)
        local ram_usage=$(ps -p $$ -o rss --no-headers | awk '{print $1 / 1024}')
    fi

    # Print original command output
    echo "$output"

    # Print resource usage
    printf "\033[0;31mCPU: %.2f%%\033[0m \033[0;34mRAM: %.2f MB\033[0m \033[0;32mTime: %.6f s\033[0m\n" "$cpu_usage" "$ram_usage" "$duration" >&2
}

# Main execution
get_usage