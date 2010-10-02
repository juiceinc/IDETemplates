INTELLIJ_FILE_TEMPLATES_DIR=~/Library/Preferences/IntelliJIdea90/fileTemplates
INTELLIJ_LIVE_TEMPLATES_DIR=~/Library/Preferences/IntelliJIdea90/templates
ECLIPSE_TEMPLATES_DIR=.

echo "Copying templates to Intellij and Eclipse"
cp intellijFileTemplates/*.* $INTELLIJ_FILE_TEMPLATES_DIR
cp intellijLiveTemplates/*.* $INTELLIJ_LIVE_TEMPLATES_DIR

