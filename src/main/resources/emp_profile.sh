#!/bin/bash
folder_name='emp-profile'
mkdir -p $folder_name
cd $folder_name
git clone https://github.com/MdShyfuzzaman/employee-profile-management.git
git clone https://github.com/MdShyfuzzaman/login.git
cd employee-profile-management
mvn spring-boot:run --Dspring.profiles.active=local
cd ..
cd login
mvn spring-boot:run
