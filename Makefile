.PHONY : all clean

all : reports/reports.html results/plot2.png 

clean : 
	rm results/*.png data/*.csv reports/reports.html

results/plot.png : data/data.csv scripts/02_plot_data.py
	python scripts/02_plot_data.py

data/data.csv : scripts/01_generate_data.py
	python scripts/01_generate_data.py

results/plot2.png : data/data2.csv scripts/03_plot_diff_data.py
	python scripts/03_plot_diff_data.py

reports/reports.html : reports/reports.qmd results/plot.png
	quarto render reports/reports.qmd

