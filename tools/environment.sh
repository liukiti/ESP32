#!/bin/bash

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

parent=$(dirname $PWD)
export IDF_PATH=$parent/esp-idf
source "$IDF_PATH/export.sh"
export PATH=$PATH:$IDF_PATH/tools
