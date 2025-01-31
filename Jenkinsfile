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
                    // Verifica si el contenedor específico está en ejecución
                    def containerExists = sh(returnStatus: true, script: "sudo docker ps -q -f name=${name_container}")
                    
                    if (containerExists == 0) {
                        // Si el contenedor existe, detén y elimínalo
                        sh """
                            sudo docker stop ${name_container}
                            sudo docker rm ${name_container}
                        """
                    } else {
                        // Si el contenedor no existe, imprime un mensaje
                        echo "El contenedor ${name_container} no está en ejecución."
                    }

                    // Limpieza del sistema Docker (esto se ejecutará independientemente de si el contenedor existía o no)
                    sh '''
                        sudo docker stop ${name_container}
                        sudo docker system prune -f
                        sudo docker images purge
                    '''
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
