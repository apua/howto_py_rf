*** settings ***
Resource    pro_fpga_run_linux.robot

# While the operations of tests increase the complexity,
# set shared resouce andj ief


*** test cases ***
Run Test
    [Setup]  Run keywords  Boot Linux  AND  Login Linux
    [Teardown]
    ...  Logout Linux

    Comment    run test on Linux
