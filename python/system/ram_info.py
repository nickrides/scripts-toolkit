import shutil
import os

try:
    import psutil
except ImportError:
    print("psutil is not installed.")
    print("Install it with: pip install psutil")
    raise SystemExit(1)

mem = psutil.virtual_memory()

print("=== RAM INFO ===")
print(f"Total RAM     : {mem.total / (1024**3):.2f} GB")
print(f"Available RAM : {mem.available / (1024**3):.2f} GB")
print(f"Used RAM      : {mem.used / (1024**3):.2f} GB")
print(f"Usage         : {mem.percent}%")
