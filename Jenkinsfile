pipeline {
    agent any
    parameters {
        string(name: 'NAME', defaultValue: 'default_value', description: 'Description of the permater')
        choice(name: 'CHOICE_NAME', choices: ['option 1' 'option 2' ], description: 'choose an option']
               }
    stages {
        stage('User Request') {
            steps {
                script {
                    // Simulate user requests for Snowflake warehouse creation through UI
                    // You can replace this with actual code to trigger the user request
                }
            }
        }

        stage('Send Approval Email') {
            steps {
                script {

                    // Send email to the approver for approval
                    def approvalResponse = input(
                        id: 'approval_response',
                        message: 'Please approve or reject the Snowflake warehouse creation.',
                        parameters: [choice(choices: 'Approve|Reject', description: 'Choose Approve or Reject', name: 'Approval')]
                    )
                    emailext(
                        subject: 'Approval Needed: Snowflake Warehouse Creation',
                        body: 'A user has requested the creation of a Snowflake warehouse. Please review and approve.',
                        from: 
                        to: approverEmail
                        mimeType: 'text/html'
                    )
                }
            }
        }
        if (approvalResponse == 'Reject') {
                        error('Warehouse creation rejected by the approver')
                    }

        stage ('Check out from SCM') {
            steps {
                // Clone the GitHub repository
                git credentialsId: '' 
                url:'https://github.com/your-terraform-repo.git'
                branch: '${BRANCH_NAME}'
            }
            
        }
    
        stage('Running terrafrom scripts')

                // Run Terraform scripts
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
            }
        }

        stage('Resource Monitoring') {
            steps {
                // Implement resource monitoring logic
            }
        }

        stage('Warehouse Monitoring') {
            steps {
                // Execute SQL script for warehouse monitoring
                // Send alerts to application team email
            }
        }

        stage('Snowflake User Onboarding') {
            steps {
                // Implement Snowflake user onboarding logic
            }
        }

        stage('Deployment through CI/CD') {
            steps {
                // Implement logic for pushing code from GitHub to Snowflake 
            }
        }

        stage('Monitoring Alerts') {
            steps {
                // Implement monitoring alerts for long-running queries
            }
        }

        stage('Cost Monitoring Dashboard') {
            steps {
                // Implement cost monitoring dashboard logic
            }
        }

        stage('Monthly Status Reports') {
            steps {
                // Implement logic for generating and sending monthly status reports
            }
        }

        stage('Snowflake Operational Report') {
            steps {
                // Implement logic for generating and sending Snowflake operational reports
            }
        }
    }

    post {
        always {
            // Clean up or final steps
        }
    }
}
