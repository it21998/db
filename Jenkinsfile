pipeline {
    agent any


    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/it21998/db.git'

                
            }
        }
        

        stage('install ansible prerequisites') {
            steps {
                sh '''
                    ansible-galaxy install geerlingguy.postgresql
                '''

                sh '''
                    mkdir -p ~/workspace/ansible-project/ansible-example-jenkins/files/certs
                    cd ~/workspace/ansible-project/ansible-example-jenkins/files/certs
                    openssl req -x509 -newkey rsa:4096 -keyout server.key -out server.crt -days 365 --nodes -subj '/C=GR/O=myorganization/OU=it/CN=myorg.com'
                '''
            }
        }
        stage('Prepare DB') {            
            steps {
                sshagent (credentials: ['ssh-deploy']) {
                    sh '''
                        pwd
                        echo $WORKSPACE

                        ansible-playbook -i ~/workspace/ansible-project/ansible-example-jenkins/hosts.yml -l deploymentjenkins ~/workspace/ansible-project/ansible-example-jenkins/playbooks/postgres.yml
                        '''
            }
            
        }
     

        }
    }
}
