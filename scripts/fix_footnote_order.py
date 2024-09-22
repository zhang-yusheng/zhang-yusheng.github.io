import re
import sys


def sort_footnotes(markdown_text):
    # 正则表达式匹配脚注引用和定义
    footnote_num_pattern = re.compile(r"\[\^(\d+)\]")
    footnote_content_pattern = re.compile(r"\[\^(\d+)\]:\s*(.*)\n")

    # 找到所有的脚注引用和定义
    footnote_nums = footnote_num_pattern.findall(markdown_text)
    footnote_defs = {
        num: content for num, content in footnote_content_pattern.findall(markdown_text)
    }

    num_to_mid_num = {}  # {"[^3]": "[^_1]"}
    mid_num_to_new_num = {}  # {"[^_1]": "[^1]"}
    i = 1
    for num in footnote_nums:
        if f"[^{num}]" in num_to_mid_num:
            pass
        else:
            num_to_mid_num[f"[^{num}]"] = f"[^_{i}]"
            mid_num_to_new_num[f"[^_{i}]"] = f"[^{i}]"
            i += 1

    # 根据引用的顺序对脚注定义进行排序
    sorted_footnotes = {
        num: footnote_defs[num]
        for num in sorted(footnote_defs, key=footnote_nums.index)
    }

    # 移除原始的脚注定义
    markdown_text = re.sub(footnote_content_pattern, "", markdown_text)

    # 将排序后的脚注定义添加回文本
    for num in sorted_footnotes:
        markdown_text += "[^" + num + "]: " + sorted_footnotes[num] + "\n"

    for old, new in num_to_mid_num.items():
        markdown_text = markdown_text.replace(old, new)

    for old, new in mid_num_to_new_num.items():
        markdown_text = markdown_text.replace(old, new)
    return markdown_text


def main(source_file, dest_file):
    try:
        with open(source_file, "r", encoding="utf-8") as f:
            markdown_text = f.read()

        sorted_markdown = sort_footnotes(markdown_text)

        with open(dest_file, "w", encoding="utf-8") as f:
            f.write(sorted_markdown)

        print(f"Footnotes sorted and saved to {dest_file}")
    except Exception as e:
        print(f"An error occurred: {e}")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print(
            "Usage: python sort_footnotes.py <source_markdown_file> <dest_markdown_file>"
        )
    else:
        source_file = sys.argv[1]
        dest_file = sys.argv[2]
        main(source_file, dest_file)
