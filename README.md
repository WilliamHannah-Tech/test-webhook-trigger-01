                                     🚀 Add a GitHub Webhook Trigger to Jenkins
                                 
               A polished quick-start guide for connecting GitHub pushes to an automated Jenkins pipeline

 
✨ Purpose  This setup lets GitHub notify Jenkins automatically whenever code is pushed, so your pipeline can start without clicking Build Now.


✅ Prerequisites 

• 🖥️ Jenkins running on EC2

• 🌐 Jenkins reachable from the internet, for example: http://<EC2-PUBLIC-IP>:8080

• 📁 A GitHub repository that contains a Jenkinsfile and your Terraform or project files

• 🔌 Jenkins plugins installed for Git and GitHub


⚙️ Jenkins Configuration

1️⃣ Create a pipeline job

• Open the Jenkins Dashboard.

• Click New Item, enter a name, select Pipeline, and click OK.

2️⃣ Enable the GitHub trigger

• In the job configuration, go to Build Triggers.

• Check GitHub hook trigger for GITScm polling.

3️⃣ Configure the pipeline source

• Definition: Pipeline script from SCM

• SCM: Git

• Repository URL: add your HTTP GitHub repository URL

• Branch Specifier: */main

• Script Path: Jenkinsfile

• Save the pipeline job.

🔗 Add the GitHub Webhook

In your GitHub repository, go to Settings → Webhooks → Add webhook

Payload URL	http://<YOUR-JENKINS-URL>/github-webhook/

Content type	application/json

Events	Just the push event

Action	Save the webhook

                                                     🧪 Test the Webhook
                                                     
Option A: Push a test commit

git commit --allow-empty -m "test webhook"

git push origin main

Option B: Redeliver the webhook from GitHub

• Go to GitHub → Webhooks.

• Open the webhook entry.

• Click Recent Deliveries and choose Redeliver.

                                           🛠️ Expected Result and Troubleshooting

✅ Expected Result

• A push event occurs in the repository.

• GitHub sends the webhook request.

• Jenkins receives the request.

• The Jenkins job starts automatically.	

⚠️ Common Issues

Jenkins not reachable

Make sure the EC2 instance has a public IP or DNS name and that port 8080 is open in the security group.

Incorrect webhook URL

The webhook URL must end with /github-webhook/.

No build triggered

Verify the GitHub trigger is enabled in Jenkins and check the GitHub delivery status for a 200 OK response.

🧠 What a Webhook Is and How It Works

A webhook is an HTTP callback. One system sends an HTTP request to another system when an event happens. No polling is required, 

so the flow is event-driven.

                                   In this setup: GitHub = sender 📤   |   Jenkins = receiver 📥
                                   
Step-by-step flow

1. You push code to GitHub.
   
2. GitHub detects a push event.
   
3. GitHub sends an HTTP POST request to http://<jenkins-url>/github-webhook/.
   
4. Jenkins receives the request.
 
5. Jenkins matches the event to the configured job.
    
6. Jenkins triggers the pipeline.
    
7. Jenkins reads the Jenkinsfile from the repository.
    
8. The pipeline runs automatically.
    
                                              📦 Example Payload Sent by GitHub
    
GitHub sends a JSON payload that commonly includes the repository name, branch, commit ID, commit message, and author.


{

  "ref": "refs/heads/main",
  
  "repository": {
  
  "full_name": "WilliamHannah-Tech/test-webhook-trigger-01"
  },
  
  "head_commit": {
  
   "id": "abc123",
    
   "message": "update"
   
  }
}


🎯 Final Summary  By connecting GitHub to Jenkins with a webhook, every push to your repository can automatically trigger the pipeline. This makes the workflow faster, cleaner, and more CI/CD friendly.

