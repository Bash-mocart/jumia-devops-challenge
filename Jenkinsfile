pipeline {
  agent any
 
  tools {
  maven 'Maven3'
  
  ***REMOVED***
  stages {
    stage ('Build') {
      steps {
      sh 'mvn clean install -f MyWebApp/pom.xml'
      ***REMOVED***
    ***REMOVED***
  
    
    
  
    stage ('Slack Notification') {
      steps {
        echo "deployed to DEV Env successfully"
        slackSend(channel:'your slack channel_name', message: "Job is successful, here is the info - Job '${env.JOB_NAME***REMOVED*** [${env.BUILD_NUMBER***REMOVED***]' (${env.BUILD_URL***REMOVED***)")
      ***REMOVED***
    ***REMOVED***

        stage ('DEV Approve') {
      steps {
      echo "Taking approval from DEV Manager for QA Deployment"
        timeout(time: 7, unit: 'DAYS') {
        input message: 'Do you want to deploy?', submitter: 'admin'
        ***REMOVED***
      ***REMOVED***
    ***REMOVED***
     stage ('QA Deploy') {
      steps {
        echo "deploying to QA Env "
        deploy adapters: 
        ***REMOVED***
    ***REMOVED***
    stage ('QA Approve') {
      steps {
        echo "Taking approval from QA manager"
        timeout(time: 7, unit: 'DAYS') {
        input message: 
        ***REMOVED***
      ***REMOVED***
    ***REMOVED***