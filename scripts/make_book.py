#!/usr/bin/env python3

import os

# List of danifiles, in the desired order
files = [
    "differential-geometry.tex",
    "algebraic-geometry.tex",
    "complex-geometry.tex",
    "physics.tex"
]

def extract_body(filename):
    with open(filename, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    inside = False
    body = []
    for line in lines:
        if '\\begin{document}' in line:
            inside = True
            continue
        if '\\end{document}' in line:
            break
        if inside:
            body.append(line)
    return ''.join(body)

# Write the book.tex file
with open('book.tex', 'w', encoding='utf-8') as out:
    out.write('\\documentclass{book}\n')
    out.write('\\input{preamble}\n\n')
    out.write('\\begin{document}\n\n')
    out.write('\\tableofcontents\n\n')

    for filename in files:
        out.write(f'% --- Begin {filename} ---\n')
        out.write(extract_body(filename))
        out.write(f'% --- End {filename} ---\n\n')

    out.write('\\bibliographystyle{alpha}\n')
    out.write('\\bibliography{my}\n\n')
    out.write('\\end{document}\n')

