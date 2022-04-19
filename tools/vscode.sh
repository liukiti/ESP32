#!/usr/bin/env bash

################################################################################
#  Copyright © 2019 - 2020, Houz Automacao. All rights reserved.
#
# No part of this software may be reproduced, distributed, or transmitted in 
# any form or by any means without the prior written permission of the Houz
# Automação company.
# 
# For permission requests, contact the company through the e-mail address
# contato@houz.com.br with subject "Software Licence Request".
################################################################################

source "./environment.sh"
cd "../myCodes/"
#https://stackoverflow.com/questions/4000613/perform-an-action-in-every-sub-directory-using-bash
#https://unix.stackexchange.com/questions/187167/traverse-all-subdirectories-in-and-do-something-in-unix-shell-script
code 

for d in */; do
  if [ -d "$d" ]; then
    echo "$d"
    cd $d
    code -a .
    pwd
    cd ".."
  fi
done
