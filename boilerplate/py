#!/usr/bin/env python3

import sys

# from ansi2html import Ansi2HTMLConverter
# from PyQt5.QtCore import * 
# from PyQt5.QtGui import * 
# from PyQt5.QtWidgets import * 
# import sys
  
# from PyQt5.QtCore import pyqtSignal, pyqtSlot, QProcess, QTextCodec
# from PyQt5.QtGui import QTextCursor
# from PyQt5.QtWidgets import QApplication, QPlainTextEdit


class ProcessOutputReader(QProcess):
    produce_output = pyqtSignal(str)

    def __init__(self, parent=None):
        super().__init__(parent=parent)

        # merge stderr channel into stdout channel
        self.setProcessChannelMode(QProcess.MergedChannels)

        # prepare decoding process' output to Unicode
        codec = QTextCodec.codecForLocale()
        self._decoder_stdout = codec.makeDecoder()
        # only necessary when stderr channel isn't merged into stdout:
        # self._decoder_stderr = codec.makeDecoder()

        self.readyReadStandardOutput.connect(self._ready_read_standard_output)
        # only necessary when stderr channel isn't merged into stdout:
        # self.readyReadStandardError.connect(self._ready_read_standard_error)

    @pyqtSlot()
    def _ready_read_standard_output(self):
        
        raw_bytes = self.readAllStandardOutput()
        text = self._decoder_stdout.toUnicode(raw_bytes)
        
        conv = Ansi2HTMLConverter()
        html = conv.convert(text, ensure_trailing_newline=True)

        self.produce_output.emit(html)

    # only necessary when stderr channel isn't merged into stdout:
    # @pyqtSlot()
    # def _ready_read_standard_error(self):
    #     raw_bytes = self.readAllStandardError()
    #     text = self._decoder_stderr.toUnicode(raw_bytes)
    #     self.produce_output.emit(text)


class MyConsole(QTextEdit):


    def __init__(self, parent=None):
        super().__init__(parent=parent)

        # QFont afont
        # afont.setFamily("sudoers")

        self.setFont(QFont("sudoers", 15))
        self.setFixedHeight(myHeight)
        self.setFixedWidth(myWidth)

        self.setReadOnly(True)
#        self.setMaximumBlockCount(10000)  # limit console to 10000 lines

        self._cursor_output = self.textCursor()

    @pyqtSlot(str)
    def append_output(self, text):
        self._cursor_output.insertText(text)
        self.scroll_to_last_line()

    def scroll_to_last_line(self):
        cursor = self.textCursor()
        cursor.movePosition(QTextCursor.End)
        cursor.movePosition(QTextCursor.Up if cursor.atBlockStart() else
                            QTextCursor.StartOfLine)
        self.setTextCursor(cursor)


# create the application instance
app = QApplication(sys.argv)
screensize = app.primaryScreen().size()
myWidth = (screensize.width()/3)
myHeight = (screensize.height()/2)

# create a process output reader
reader = ProcessOutputReader()

# create a console and connect the process output reader to it
console = MyConsole()
# console.setFont("sudoers", 15)
# QtWidgets.QApplication.setFont(QFont("sudoers", 15), console)

reader.produce_output.connect(console.append_output)

cmdLineArgs = sys.argv
prog_name = cmdLineArgs.pop(0)
prog_args = cmdLineArgs

print(f"{prog_name} attempting to launch with args:")
for i, arg in enumerate(cmdLineArgs):
        print(f"arg {i:>3}: {arg}")
    
shell = "/usr/local/bin/bash"
reader.start(shell, prog_args)  # start the process
console.show()                              # make the console visible
app.exec_()                                 # run the PyQt main loop
