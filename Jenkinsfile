pipeline
{
agent any
stages
  {
    stage ('scm checkout')
    {steps {  }}

    stage ('build docker image')
    { steps { sh 'docker build -t pkw0301/dec-2020:v1 .' } }

    stage ('uppload docker image to dockerhub')
    { steps {} }

    stage ('connect to k8s and run k8s manifest file')
    { steps {} }


}

}
