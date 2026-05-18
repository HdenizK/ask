SHELL := /bin/bash

all: action.plan.md

#PHASE 1
quality.md: codebase.txt
	cat codebase.txt | ./ask "Analyze the code quality, readability, structure and naming conventions of this codebase. Output exactly 5 to 7 bullet points detailing major issues and potential improvements." > quality.md
	sleep 10

perf.md: codebase.txt
	cat codebase.txt | ./ask "Analyze the performance inefficiencies, resource leaks, memory management, and bottlenecks in this codebase. Output exactly 5 to 7 bullet points detailing findings." > perf.md
	sleep 10

security.md: codebase.txt
	cat codebase.txt | ./ask "Analyze the security vulnerabilities, unsafe function usages, and injection risks in this codebase. Output exactly 5 to 7 bullet points detailing vulnerabilities." > security.md
	sleep 10


#PHASE 2
quality.sum.md: quality.md
	cat quality.md | ./ask "Compress and sumarize these code quality issues into exactly 5 actionable bullet points." > quality.sum.md
	sleep 10

perf.sum.md: perf.md
	cat perf.md | ./ask "Compress and sumarize these performance issues into exactly 5 actionable bullet points." > perf.sum.md
	sleep 10

security.sum.md: security.md
	cat security.md | ./ask "Compress and sumarize these security issues into exactly 5 actionable bullet points." > security.sum.md
	sleep 10

#PHASE 3
concatenated.md: quality.sum.md perf.sum.md security.sum.md
	echo "## Code quality issues" > concatenated.md
	cat quality.sum.md >> concatenated.md
	echo "" >> concatenated.md
	echo "## Performance issues" >> concatenated.md
	cat perf.sum.md >> concatenated.md
	echo "" >> concatenated.md
	echo "## Security vulnerabilities" >> concatenated.md
	cat security.sum.md >> concatenated.md
	sleep 10

#PHASE 4
refined.md: concatenated.md
	cat concatenated.md | ./ask "Review this combined report. Remove any duplicate or highly overlapping issues across categories. Keep only high-signal, distinct problems." >refined.md
	sleep 10

#PHASE 5
action.plan.md: refined.md
	cat refined.md | ./ask "Convert these findings into a professional engineering action plan. For each issue, provide a concise solution, assign a priority (high/medium/low) and an estimated effort (small/medium/large). Format nicely in Markdown." > action.plan.md


clean:
	rm -f *.md

