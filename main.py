import sys
import platform
from PyQt5.QtWidgets import (QApplication, QProgressBar, QGraphicsDropShadowEffect,
                             QMainWindow, QPushButton, QWidget)
from PySide2.QtCore import (QCoreApplication, QPropertyAnimation, QDate, 
                            QDateTime, QMetaObject,  QObject, QPoint)
from PyQt5 import QtCore, QtGui, uic
from PyQt5.QtGui import QColor
from PyQt5.uic import loadUi

from ui_splash_screen import Ui_SplashScreen
from ui_main import Ui_MainWindow
from ui_sign_in import Ui_Sign_In_Window


counter = 0
count_toggle_sign_in = 0

class MainWindow(QMainWindow):
    def __init__(self):
        QMainWindow.__init__(self)
        self.ui = Ui_Sign_In_Window()
        self.ui.setupUi(self)
        # self.ui.frame.hide()


class SplashScreen(QMainWindow):
    def __init__(self):
        QMainWindow.__init__(self)
        self.ui = Ui_SplashScreen()
        self.ui.setupUi(self)

        self.setWindowFlags(QtCore.Qt.FramelessWindowHint)
        self.setAttribute(QtCore.Qt.WA_TranslucentBackground)
        self.shadow = QGraphicsDropShadowEffect(self)
        self.shadow.setBlurRadius(20)
        self.shadow.setXOffset(0)
        self.shadow.setYOffset(0)
        self.shadow.setColor(QColor(0, 0, 0, 60))
        self.ui.dropShadowFrame.setGraphicsEffect(self.shadow)
        self.timer = QtCore.QTimer()
        self.timer.timeout.connect(self.progress)
        self.timer.start(35)

        self.ui.label_description.setText("<strong>Welcome</strong> to  my Application")

        QtCore.QTimer.singleShot(1500, lambda: self.ui.label_description.setText("<strong>Loading</strong> Database"))
        QtCore.QTimer.singleShot(3000, lambda: self.ui.label_description.setText("<strong>Loading</strong> User Interface"))
        QtCore.QTimer.singleShot

        self.show()

    def progress(self):
        global counter

        self.ui.progressBar.setValue(counter)

        if counter > 100:
            self.timer.stop()

            self.main = MainWindow()
            self.main.show()
            self.close()

        counter += 4

if __name__ == "__main__":
    app = QApplication([])
    window = SplashScreen()
    sys.exit(app.exec_())
