node{
    stage("git clone"){
        git branch: 'patch-1', credentialsId: '155cafd3-43d3-401f-8446-591ae10cccca', poll: true, url: 'https://github.com/mugunthanr89/rock-paper-scissors.git'
    }
    
    stage("maven build"){
        
        def mavenHome = tool name: "Maven", type: "maven"
        def mavenCMD = "${mavenHome}/bin/mvn"
        def jdk = tool name: "Java"
        sh "${jdk}/bin/java -version"
        withEnv(["JAVA_HOME=${ tool 'Java' }","PATH+MAVEN=${mavenHome}"]){
        sh "${mavenCMD} clean package"    
        }
    }
    
    stage("Docker image Build"){
        sh "docker build -t mugunthan/mynewpublic:v4 ."
    }
    
    stage("Docker push to mypublicrepo"){
        withCredentials([string(credentialsId: 'mydocker_hub_passwd', variable: 'mydocker_hub_passwd')]) {
        sh "docker login -u mugunthan -p ${mydocker_hub_passwd}"
    } 
        sh "docker push mugunthan/mynewpublic:v4"
    }
        
    }
