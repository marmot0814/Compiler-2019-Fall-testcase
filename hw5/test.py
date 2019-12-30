from argparse import ArgumentParser
import subprocess
import os

class Runner:
    def __init__(self, config):
        self.compiler = config.compiler
        self.user = config.user
        self.testcases = self.get_testcases()
        self.compile_source_code()
        self.compile_riscv_code()
        self.run_riscv_code()

    def compile_riscv_code(self):
        if not os.path.isdir(os.path.join("execution")):
            subprocess.run(["mkdir", "execution"])
        for testcase in self.testcases:
            subprocess.run(["riscv64-unknown-elf-gcc", "io.c", "-o", os.path.join("execution", testcase), os.path.join("riscv_code", testcase + ".s")])


    def run_riscv_code(self):
        if not os.path.isdir(os.path.join("output", self.user)):
            subprocess.run(["mkdir", os.path.join("output", self.user)])
        for testcase in self.testcases:
            input_file = open(os.path.join("input", testcase, testcase + ".in"), 'r')
            output_file = open(os.path.join("output", self.user, testcase), 'w')
            proc = subprocess.Popen(["spike", "pk", os.path.join("execution", testcase)], stdin=input_file, stdout=output_file)


    def compile_source_code(self):
        if not os.path.isdir("riscv_code"):
            subprocess.run(["mkdir", "riscv_code"])
        for testcase in self.testcases:
            subprocess.run(["./" + self.compiler, os.path.join("input", testcase, testcase + ".p"), "--output_code_dir", "riscv_code"])

    def get_testcases(self):
        return [testcase for testcase in os.listdir("input") if os.path.isdir(os.path.join("input", testcase))]

def main():
    Runner(Parser())
    
def Parser():
    parser = ArgumentParser()
    parser.add_argument("--compiler", help="Your Compiler Address", required=True)
    parser.add_argument("--user", help="Your user name", required=True)
    return parser.parse_args()

main()
