#!/usr/bin/env sh

# Configuration
XCODE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/Clean Swift'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy RIBs file templates into the local RIBs template directory
xcodeTemplate () {
  echo "==> Copying up Clean Swift Xcode file templates..."

  if [ -d "$XCODE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/*.xctemplate "$XCODE_TEMPLATE_DIR"
  
  # full version
  echo "==> Copying full version..."
  cp -R $SCRIPT_DIR/Common/Default/* "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/Default/"
  cp -R $SCRIPT_DIR/Common/Icons/* "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/"
  
  mkdir -p "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/withXIB/"
  cp -R $SCRIPT_DIR/Common/withXIB/* "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/withXIB/"
  cp -R "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/Default/"* "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/withXIB/"
  
  mkdir -p "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/withStoryboard/"
  cp -R $SCRIPT_DIR/Common/withStoryboard/* "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/withStoryboard/"
  cp -R "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/Default/"* "$XCODE_TEMPLATE_DIR/Clean Swift.xctemplate/withStoryboard/"
  
  # lite version
  echo "==> Copying lite version..."
  cp -R $SCRIPT_DIR/Common/Default/* "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/Default/"
  cp -R $SCRIPT_DIR/Common/Icons/* "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/"
  
  mkdir -p "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/withXIB/"
  cp -R $SCRIPT_DIR/Common/withXIB/* "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/withXIB/"
  cp -R "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/Default/"* "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/withXIB/"
  
  mkdir -p "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/withStoryboard/"
  cp -R $SCRIPT_DIR/Common/withStoryboard/* "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/withStoryboard/"
  cp -R "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/Default/"* "$XCODE_TEMPLATE_DIR/Clean Swift Lite.xctemplate/withStoryboard/"
}

xcodeTemplate

echo "==> ... success!"
echo "==> Clean Swift have been set up. In Xcode, select 'New File...' to use Clean Swift templates."
