*** settings ***
Documentation    It is the first test suite.
...              We create a test case, and show the test result,
...              including `output.xml` the raw data, the log, and the report.

Library 	 mylib.py 


*** test cases ***
Boot Linux on FPGA 
    Program bitstream
    Run NBD server
    Run tFTP server
    Boot u-boot SPL
    Boot u-boot .itb
    Boot Linux through tFTP
