INTELLIJ_FILE_TEMPLATES_DIR=~/Library/Preferences/IntelliJIdea90/fileTemplates
INTELLIJ_LIVE_TEMPLATES_DIR=~/Library/Preferences/IntelliJIdea90/templates

echo "Copying templates to Intellij"
cp intellijFileTemplates/*.* $INTELLIJ_FILE_TEMPLATES_DIR
cp intellijLiveTemplates/*.* $INTELLIJ_LIVE_TEMPLATES_DIR

