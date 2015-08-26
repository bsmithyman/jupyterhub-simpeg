
c = get_config()

c.InteractiveShellApp.exec_lines = [
"import sys, os; sys.path.append(os.path.join(os.environ.get('HOME'), 'pythonpath'))",
]
