pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', credentialsId: 'GithubAccount', url: 'https://github.com/addiittyya/JavaUpgrade.git'
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
                ansiblePlaybook become: true, credentialsId: 'SSHLogin', installation: 'Ansible', inventory: 'Inventory.txt', playbook: 'Playbook.yml', sudo: true
            }
        }
    }
}
