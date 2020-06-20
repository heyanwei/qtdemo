import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 480
    height: 320
    title: qsTr("Welcome to AGV Garage")
    flags: Qt.Window | Qt.FramelessWindowHint

    LoginForm {
        width: parent.width
        height: parent.height
        btnExit.onClicked: {
             Qt.quit();
        }
        btnLogin.onClicked: {
            Qt.quit();
        }
    }

}
