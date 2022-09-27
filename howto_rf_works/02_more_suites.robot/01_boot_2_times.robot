*** settings ***
Documentation    Boot N times

# When we have more test cases, we need to organize them.
# Consider:
#
# 1. folder/file structure for test suites and test cases
# 2. tags

Library   ../mylib.py
Default Tags    board:vcu118


*** test cases ***
Boot 2 Times
    Boot Linux on FPGA 
    Boot Linux on FPGA 


Boot 3 Times
    [tags]  board:haps  # overwrite `board:vcu118`
    Repeat Keyword  3 times  Boot Linux on FPGA

Boot N Times
    [Template]  Boot Linux ${N} Times
    6
    10
    30

Boot ${x} Times
    [tags]  require variable
    log to console  ${x}


*** keywords ***
Boot Linux on FPGA 
    Comment  boot

Boot Linux ${N} Times
    Repeat Keyword  ${N} times  Boot Linux on FPGA
