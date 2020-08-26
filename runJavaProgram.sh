#!/bin/bash
date
echo "Args: $@"
env
echo "This is my simple test job!."
echo "jobId: $AWS_BATCH_JOB_ID"
echo "jobQueue: $AWS_BATCH_JQ_NAME"
echo "computeEnvironment: $AWS_BATCH_CE_NAME"
aws s3 cp s3://$1/$2 /tmp
java -jar sample.jar `cat /tmp/$2`
date
echo "bye bye!!"
