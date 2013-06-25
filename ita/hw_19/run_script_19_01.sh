#!/bin/bash

# Commands to execute script script_19_01.rb

ruby ./lib/verification/robots.rb --domain www.shopping.com > ./reports/shopping_com.txt
ruby ./lib/verification/robots.rb --domain www.alegro.com > ./reports/alegro_com.txt
ruby ./lib/verification/robots.rb --domain www.epinions.com > ./reports/epinions_com.txt
