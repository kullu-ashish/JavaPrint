# JavaPrint
#download awscliv2 in this folder


curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

#create jar file


javac PrintCommandLineArguments.java 
jar cvfe sample.jar PrintCommandLineArguments  PrintCommandLineArguments.class

#Create docker files


docker build -t javaprint .
aws ecr get-login <AWS A/c ID>.dkr.ecr.ap-southeast-2.amazonaws.com
docker image ls --> Check the image ID of javaprint say its abcde
docker tag abcde <AWS a/c ID>.dkr.ecr.ap-southeast-2.amazonaws.com/javaprint
docker push <AWS a/c ID>.dkr.ecr.ap-southeast-2.amazonaws.com/javaprint
docker build -t javaawscli -f Dockerfile1 .
docker image ls --> Check image ID of javaawscli, say its bnmcx
docker tag bnmcx <AWS a/c ID>.dkr.ecr.ap-southeast-2.amazonaws.com/javaawscli
docker push <AWS a/c ID>.dkr.ecr.ap-southeast-2.amazonaws.com/javaawscli

#Creating AWS Batch Job


1. In the AWS Batch console, choose Jobs, Submit Job.
2. Enter a name for the job, for example: script_test.
3. Choose the latest fetch_and_run job definition.
4. For Job Queue, choose a queue, for example: first-run-job-queue.
5. For Command, enter myjob.sh,60.
6. Choose Validate Command.
7.Enter the following environment variables and then choose Submit job.

    Key=BATCH_FILE_TYPE, Value=script
    Key=BATCH_FILE_S3_URL, Value=s3:///myjob.sh. Don’t forget to use the correct URL for your file.

