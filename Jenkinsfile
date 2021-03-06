pipeline
{
agent any
stages
  {
    stage ('scm checkout')
    {steps {  git branch: 'master', url: 'https://github.com/prakashk0301/dec-k8s-cicd/' }}

    stage ('build docker image')
    { steps { sh 'docker build -t pkw0301/dec-2020:v1 .' } }

    stage ('upload docker image to dockerhub')
    { steps {  withDockerRegistry(credentialsId: 'dockerHubAccount', url: 'https://index.docker.io/v1/') {
      sh 'docker push pkw0301/dec-2020:v1'
} } }

    stage ('connect to k8s and run k8s manifest file')
    { steps { kubernetesDeploy configs: 'k8s-manifest.yml', kubeConfig: [path: ''], kubeconfigId: 'K8S-CICD', secretName: '', ssh: [sshCredentialsId: '*', sshServer: ''], textCredentials: [certificateAuthorityData: '', clientCertificateData: '', clientKeyData: '', serverUrl: 'https://'] } }


}

}
