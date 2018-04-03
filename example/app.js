var SlackTextView = require('ti.slacktextview');

var win = Ti.UI.createWindow({
  backgroundColor: '#fff'
});

var btn = Ti.UI.createButton({
 title: 'Open Text View Dialog'
});

btn.addEventListener('click', function() {
 SlackTextView.showTextViewDialog();
});

win.add(btn);
win.open();
