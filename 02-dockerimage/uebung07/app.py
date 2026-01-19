import os

def list_folders_in_root():
    entries = os.listdir('/')
    folders = [
        entry for entry in entries
        if os.path.isdir(os.path.join('/', entry))
    ]
    return folders

if __name__ == "__main__":
    folders = list_folders_in_root()
    print("Folders in the root directory:")
    for folder in folders:
        print(folder)
