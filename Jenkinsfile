pipeline {
    agent {
     node {
         label "laravel"
     }
 }


    stages {
        stage('checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/rajivsiddiqui/devops-project-3-laravel.git'
            }
        }
        //Build stage
        stage('Build') {
            steps {
                sh 'composer install'
                sh 'npm install'
                sh 'npm run build'
                // if we need any other commands to compile
            }
        }
        //Test stage
        stage('Test') {
            steps {
                sh 'php artisan test'
            }
        }
        // deploy to staging 
        stage('Deploy to staging') {

            steps {
                sh 'ssh ubuntu@18.212.99.35 -o StrictHostKeyChecking=no "bash /var/www/larademo/scripts/deploy.sh" '
            }
        }

        //deploy to productoin 
        stage('Deploy to prodcution') {
            input {
                message "Want to deploy to production?"
                ok "Yes"
            }

            steps {
                sh 'ssh ubuntu@54.174.100.26 -o StrictHostKeyChecking=no "bash /var/www/larademo/scripts/deploy.sh" '
            }
        }

        // stage('Deploy to production') {

        //     input {
        //         message "Do you want to deploy to production?"
        //         ok "Yes"
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
    //          charset: 'UTF-8', from: 'rajivsiddiqui21@gmail.com', mimeType: 'text/html', replyTo: 'rajivsiddiqui21@gmail.com', \
    //          subject: "ERROR CI: Project name -> ${env.JOB_NAME}", \
    //          to: "rajivsiddiqui21@gmail.com";  \
    //     }
    //     // send email notification the specicied addresses if the build fails
    //     success {  
    //          mail bcc: '', body: "<b>Success Jenkins Build</b><br>Project: ${env.JOB_NAME} \
    //          <br>Build Number: ${env.BUILD_NUMBER} <br> URL of the build: ${env.BUILD_URL}", cc: '', \
    //          charset: 'UTF-8', from: 'rajivsiddiqui21@gmail.com', mimeType: 'text/html', replyTo: 'rajivsiddiqui21@gmail.com', \
    //          subject: "SUCCESS CI: Project name -> ${env.JOB_NAME}", \
    //          to: "rajivsiddiqui21@gmail.com";  \
    //      } 
 
    // }

}