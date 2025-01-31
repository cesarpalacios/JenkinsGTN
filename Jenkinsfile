pipeline{
    agent {
            label 'App'
    }
    parameters{
        string(name: 'name_container', defaultValue: 'sitio_web', description: 'Nombre del container')
        string(name: 'name_imagen', defaultValue: 'php', description: 'Nombre de la imagen')
        string(name: 'tag_imagen', defaultValue: '7.4-apache', description: 'etiqueta y/o version de la imagen')
        string(name: 'puerto_imagen', defaultValue: '80', description: 'puerto de la imagen')
    }


   stages {

        stage('detener/limpiar'){
            steps{
                script{
                def docker_running = sh(returnStatus: true, script: 'sudo docker ps -q -f name=${name_container}')
                if (docker_running) {
            			sh '''
                        sudo docker stop ${name_container}
                        sudo docker rm ${name_container}
                        sudo docker system prune -f
                        sudo docker images purge
                        '''
        		    } else {
            			sh '''
                        sudo docker system prune -f
                        sudo docker images purge
                        echo 'no esta'
                        '''
        		    }
                }
                
            }
        }

        stage('run/build') {
            steps {
                sh'''
                sudo docker compose up -d --build 
                '''
            }
        }

        stage('verification') {
            steps {
                sh'''
                sudo docker ps -a
                '''
            }
        }
    }
}
