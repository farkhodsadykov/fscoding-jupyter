import os

import argparse

def main():
    parser = argparse.ArgumentParser(description='Jupyter notebook runner')

    parser.add_argument('-u', '--username', help='Username for jupyter notebook')

    parser.add_argument('-p', '--password',  help='Password for jupyter notebook')

    args = parser.parse_args()
    print('This arg has been given :' + args.username + ' ' + args.password)



if __name__ == '__main__':
    main()
