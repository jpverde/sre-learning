#! /bin/bash

function get_cpu_utilization() {
  local instance_id="$1"
  local query="[{
  \"Id\": \"m1\",
  \"MetricStat\": {
      \"Metric\": {
      \"Namespace\": \"AWS/EC2\",
      \"MetricName\": \"CPUUtilization\",
      \"Dimensions\": [
          { \"Name\": \"InstanceId\", \"Value\": \"$instance_id\" }
      ]
      },
      \"Period\": 300,
      \"Stat\": \"Average\"
  }
  }]"

  awslocal cloudwatch get-metric-data \
    --metric-data-queries "${query//instance_id/$instance_id}" \
    --start-time $(date -u +%Y-%m-%dT%H:%M:%S --date '1 hour ago') \
    --end-time $(date -u +%Y-%m-%dT%H:%M:%S)
}

get_cpu_utilization $1
# get_cpu_utilization $1
# Example usage: ./cpu_metrics.sh i-0123456789abcdef0
# Replace i-0123456789abcdef0 with your actual EC2 instance ID
# Make sure you have AWS CLI configured with appropriate permissions
# to access CloudWatch metrics for EC2.
