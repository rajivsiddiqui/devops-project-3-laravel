pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'composer install'
                sh 'npm install'
                sh 'npm run build'
                // if we need any other commands to compile
            }
        }
        stage('Test') {
            steps {
                sh 'php artisan test'
            }
        }
        
        // stage('Deploy to prodcution') {

        //     steps {
        //         sh 'ssh ubuntu@98.81.181.124 -o StrictHostKeyChecking=no "bash /var/www/devops-project-3-laravel/scripts/deploy.sh" '
        //     }
            
        // }

        // stage('Deploy to production') {

        //     input {
        //         message "Shall we deploy production?"
        //         ok "Please go ahead"
        //     }

        //     steps {
        //         sh 'ssh ubuntu@98.81.181.124 -o StrictHostKeyChecking=no "bash /var/www/devops-project-3-laravel/scripts/deploy.sh" '
        //     }
        // }
    }

    // apply to the whole pipeline

    // post {
    //  // send email notification the specicied addresses if the build fails
    //     failure {  
    //          mail bcc: '', body: "<b>Failed Jenkins Build</b><br>Project: ${env.JOB_NAME} \
    //          <br>Build Number: ${env.BUILD_NUMBER} <br> URL of the build: ${env.BUILD_URL}", cc: '', \
    //          charset: 'UTF-8', from: 'jenkins@jenkins.test', mimeType: 'text/html', replyTo: 'put@youremail.com', \
    //          subject: "ERROR CI: Project name -> ${env.JOB_NAME}", \
    //          to: "failure@jenkinsbuild.com";  \
    //      }
    // }

}