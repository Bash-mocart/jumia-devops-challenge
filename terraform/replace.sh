#!/bin/bash
sed -i '/spring.datasource.url/c\datasource.url=jdbc:postgresql://$DB_ADDR/$DB_NAME' ./DevOps-Challenge-main/jumia_phone_validator/validator-backend/src/main/resources/application.properties