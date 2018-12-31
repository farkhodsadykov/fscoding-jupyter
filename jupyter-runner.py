import json, yaml
import os


import argparse

def main():
    parser = argparse.ArgumentParser(description='Jupyter notebook runner')

    parser.add_argument('-u', '--username',  help='Username for jupyter notebook')
    parser.add_argument('-p', '--password',  help='Password for jupyter notebook')

    args = parser.parse_args()

    data = {'NotebookApp': {'password': str(args.password) }}
    # For mac if you
    with open('/root/.jupyter/jupyter_notebook_config.json', 'w') as file:
        json.dump(data, file, indent=2)

    os.system(f"mkdir /{args.username.lower()}")
    os.system(f"cd /{args.username}")
    os.system('jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root')
    
if __name__ == '__main__':
    main()
