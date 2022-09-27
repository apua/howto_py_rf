# 1. `sting` is not a correct module, though it works now ::
#
#    sting/
#    └── sting_db.py
#
from sting import sting_db

# 2. A valid Python module in folder should be like ::
#
#    sitest/
#    ├── __init__.py
#    └── db.py
#
import sitest.db
from sitest import db

# 3. Specify `PYTHONPATH` to do so ::
#
#    .
#    ├── cmd
#    │   └── common.py
#    └── pro_fpga_run_linux.py
#
#    $ PYTHONPATH=cmd python pro_fpga_run_linux.py
#
#import sys; sys.path.append('./cmd')
import common


class ShellCmdRunner:
    ...


def program_fpga_bit(sh, vivado_lab_path, tcl_script_path, bitstream_path):
    ...


def parse_args():
    """
    Convert shell command arguments into valid values
    """
    import argparse
    parser = argparse.ArgumentParser(...)
    args = parser.parse_args()
    #validate_args(args)
    return args


def main(args):
    """
    The main function for directly call only
    """
    # 4. class name is capital
    sh = ShellCmdRunner()

    # 5. `args` only used in `main` function
    if args.skip_program:
        pass
    else:
        # 6. send essential arguements only, independent with `args`,
        #    in order to reuse the function
        program_fpga_bit(sh, vivado_lab_path, tcl_script_path, bitstream_path)


if __name__ == '__main__':
    args = parse_args()
    main(args)
