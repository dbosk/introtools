import os

def main():
    for filename in os.listdir("."):
        if filename[0] == ".":
            continue
        else:
            print(filename)

if __name__ == "__main__":
    main()
