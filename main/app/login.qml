import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 480
    height: 320
    title: qsTr("欢迎使用AGV停车库")
    flags: Qt.Window | Qt.FramelessWindowHint

    LoginForm {
        width: parent.width
        height: parent.height
    }
}
