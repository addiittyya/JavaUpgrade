pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', credentialsId: 'GitAccount', url: 'https://github.com/addiittyya/JavaUpgrade.git'
            }
        }
        stage('Parameters file') {
            steps {
                sh '''#!/bin/bash
                sh SetParameters.bash'''
            }
        }
        stage('Execute Playbook') {
            steps {
                ansiblePlaybook become: true, credentialsId: 'private-key', installation: 'Ansible', inventory: 'Inventory.txt', playbook: 'Playbook.yml'
            }
        }
    }
}
