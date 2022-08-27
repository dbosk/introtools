import os
import shutil

def main():
    filenames = list(filter(lambda x: x[0] != ".", os.listdir(".")))
    max_width_filename = max(map(len, filenames))
    screen_width = shutil.get_terminal_size((80, 20)).columns

    files_per_line = screen_width // (max_width_filename + 2)

    filename_ordinal = 0

    for filename in filenames:
        print(f" {filename:{max_width_filename}s} ", end="")

        filename_ordinal += 1

        if filename_ordinal % files_per_line == 0:
            print()

    print()

if __name__ == "__main__":
    main()
