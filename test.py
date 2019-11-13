#!/usr/bin/env python3

from os import listdir
from os.path import isfile, join
import subprocess
import os
import sys
from argparse import ArgumentParser

class Colors:
    YELLOW = '\033[33m'
    BLUE = '\033[96m'
    GREEN = '\033[92m'
    RED = '\033[91m'

class Grader:
    def __init__(self, parser, hw, output_dir):
        self.parser = parser
        self.hw = hw
        self.output_dir = output_dir
        if not os.path.exists(self.output_dir):
            os.makedirs(self.output_dir)

    def get_case_id_list(self, case_id):
        onlyfiles = [f for f in listdir("{0}/input".format(self.hw)) if isfile(join("{0}/input/".format(self.hw), f))]
        self.test_cases = {}
        for i in range(len(onlyfiles)):
            self.test_cases[i + 1] = onlyfiles[i]

        if case_id == 0:
            self.case_id_list = self.test_cases.keys()
        else:
            if not case_id in self.test_cases:
                print(Colors.RED + "ERROR: Invalid basic case ID %d" % case_id)
                exit(1)
            self.case_id_list = [case_id]

    def gen_output(self, case_id):
        test_case = "%s/%s" % (self.hw + "/input", self.test_cases[case_id])
        output_file = "%s/%s" % (self.output_dir, self.test_cases[case_id])
      
        clist = [self.parser, test_case]
        cmd = " ".join(clist)
        try:
            proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
        except Exception as e:
            print(Colors.RED + "Call of '%s' failed: %s" % (" ".join(clist), e))
            exit(1)

        stdout = str(proc.stdout.read(), "utf-8")
        stderr = str(proc.stderr.read(), "utf-8")
        retcode = proc.wait()
        with open(output_file, "w") as out:
            out.write(stdout)
            out.write(stderr)

    def compare_file_content(self, case_id):
        output_file = "%s/%s" % (self.output_dir, self.test_cases[case_id])
        solution = "%s/%s" % (self.hw + "/answer", self.test_cases[case_id])

        ok = True
        sample_content = []
        output_content = []
        line_num = 0
        diff_output = []

        with open(solution, 'r') as f:
            for line in f:
                sample_content.append(line)
        with open(output_file, 'r') as f:
            for line in f:
                output_content.append(line)

        for line1, line2 in zip(sample_content, output_content):
            line_num += 1
            if line1.rstrip() !=  line2.rstrip():
                ok = False
                diff_output.append(["Difference found in line %d" % line_num, 
                                    "sample: " + line1.rstrip('\n'),
                                    "yours:  " + line2.rstrip('\n')])

        if len(sample_content) > line_num:
            ok = False
            for idx in range(line_num, len(sample_content)):
                diff_output.append(["Difference found in line %d" % (idx+1), 
                                    "sample: " + sample_content[idx].rstrip('\n'),
                                    "yours:"])
        if len(output_content) > line_num:
            ok = False
            for idx in range(line_num, len(output_content)):
                diff_output.append(["Difference found in line %d" % (idx+1), 
                                    "sample:",
                                    "yours:  " + output_content[idx].rstrip('\n')])

        return ok, diff_output
    
    def test_sample_case(self, case_id):
        self.gen_output(case_id)

        return self.compare_file_content(case_id)

    def run(self):
        for b_id in self.case_id_list:
            c_name = self.test_cases[b_id]
            ok, diff_output = self.test_sample_case(b_id)
            if ok:
                print(Colors.YELLOW + "Running test case: " + Colors.BLUE + c_name + "  ==>  " + Colors.GREEN + "Pass!")
            else:
                print(Colors.YELLOW + "Running test case: " + Colors.BLUE + c_name + "  ==>  " + Colors.RED + "Fail!")
                for output in diff_output:
                    print(Colors.RED + output[0])
                    print(Colors.BLUE + output[1])
                    print(Colors.GREEN + output[2])
                

def main():
    parser = ArgumentParser()
    parser.add_argument("--script", help="Your parser to test.", required=True)
    parser.add_argument("--hw", help="Directory of testcase.", required=True)
    args = parser.parse_args()

    g = Grader(parser = "./" + args.script, hw = args.hw, output_dir = args.hw + "/outputs")
    g.get_case_id_list(0)
    g.run()

if __name__ == "__main__":
    main()
