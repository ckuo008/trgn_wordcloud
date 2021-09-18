# About
This app crawl some internet new websites day by day and generate wordcloud iamge automatically.

# Installation & Usage
* Manual run: `bash generate_wordcloud_from_file.sh`
* via crontab: `crontab -e` to setup with command `* * * * * cd /home/chiayunk/assignment_3A && ./generate_wordcloud_from_file.sh`

# Dependencies
## [wget](https://www.gnu.org/software/wget/)
install via `brew install wget`
## [html2text](https://pypi.org/project/html2text/)
install via
``` bash
git clone https://github.com/aaronsw/html2text
cd html2text
mv html2text.py ~/bin/.
```
## [wordcloud](https://github.com/amueller/word_cloud)
install via `python -m pip install --user wordcloud`

# Contact
* chiayunk@usc.edu
