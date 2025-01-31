# 🚀 Despliegue de Infraestructura con AWS CloudFormation y Jenkins

Este repositorio contiene una plantilla de AWS CloudFormation (`ec2.yml`) para desplegar una infraestructura básica que incluye una instancia EC2 con Jenkins y otra con Apache, utilizando Docker. A continuación, te guiaré paso a paso para desplegar la infraestructura y acceder a la contraseña inicial de Jenkins.

---

## 📋 Requisitos Previos

Antes de comenzar, asegúrate de tener lo siguiente:

1. **AWS CLI instalado y configurado**:
   - Instala AWS CLI siguiendo las [instrucciones oficiales](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).
   - Configura tus credenciales ejecutando:
     
     ```bash
     aws configure
     ```
     Proporciona tu `Access Key`, `Secret Key`, región y formato de salida.

2. **Clave SSH**:
   - Necesitarás una clave SSH (`prueba.pem`) para conectarte a las instancias EC2. Asegúrate de que esté disponible en tu máquina local.

---

## 🛠 Despliegue con AWS CloudFormation

Sigue estos pasos para desplegar la infraestructura:

1. **Clona este repositorio** (si no lo has hecho ya):
   
   ```bash
   git clone <URL-del-repositorio>
   cd <nombre-del-repositorio>
   ```
