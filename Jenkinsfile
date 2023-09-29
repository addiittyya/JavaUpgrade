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
                ansiblePlaybook become: true, credentialsId: '6cfa7562-7560-455f-99a5-db8c0b262053', installation: 'Ansible', inventory: 'Inventory.txt', playbook: 'Playbook.yml'
            }
        }
    }
}
