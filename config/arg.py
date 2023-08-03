import argparse

def parse_args():
    p = argparse.ArgumentParser(
            description='What the program does',
            formatter_class=argparse.RawDescriptionHelpFormatter
    )

    return p.parse_args()


def main():
    args = parse_args()

if __name__ == "__main__":
    main()

