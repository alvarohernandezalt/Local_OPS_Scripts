import os
import shutil

# Define source and target directories
source_dir = '/path/to/source'
target_dir = '/path/to/target'

# Function to sync directories
def sync_dirs(source, target):
    for item in os.listdir(source):
        s = os.path.join(source, item)
        t = os.path.join(target, item)
        if os.path.isdir(s):
            if not os.path.exists(t):
                os.makedirs(t)
            sync_dirs(s, t)
        else:
            if os.path.splitext(s)[1] == ".pdf":
                if os.path.exists(t) and os.stat(s).st_mtime - os.stat(t).st_mtime > 1:
                    # Conflict: file has been modified in both locations
                    # Rename the source file and copy it to the target directory
                    new_name = f"{os.path.splitext(t)[0]}_conflict{os.path.splitext(t)[1]}"
                    shutil.copy2(s, new_name)
                elif not os.path.exists(t):
                    shutil.copy2(s, t)

# Sync source to target and vice versa
sync_dirs(source_dir, target_dir)
sync_dirs(target_dir, source_dir)