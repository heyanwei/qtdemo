import QtQuick 2.6

Rectangle {
    id: rectangle
    property alias btnLogin: btnLogin
    property alias btnExit: btnExit
    property alias inputUser: inputUser
    property alias inputPassword: inputPassword

    Image {
        id: image
        anchors.fill: parent
        source: "file:/D:/TestCode/QT/Client/image/login/background.jpg"

        Text {
            id: textTitle
            x: 202
            y: 59
            width: 375
            height: 36
            color: "#fff7f7"
            text: qsTr("欢迎使用AGV停车库")
            font.bold: true
            font.family: "黑体"
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 26
        }

        Grid {
            id: grid
            x: 0
            y: 124
            width: 400
            height: 107
            spacing: 6
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            transformOrigin: Item.Center
            rows: 3
            columns: 2

            Text {
                id: textUser
                width: parent.width / 3
                height: 42
                color: "#ffffff"
                text: qsTr("用户名   ")
                bottomPadding: 0
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
                rotation: 0
                scale: 1
                font.pixelSize: 16
            }

            ColorEditText {
                id: inputUser
                color: "#ffff00"
                enabled: true
                placeholderText: "请输入用户名"
            }

            Text {
                id: textPassword
                width: parent.width / 3
                height: 42
                color: "#ffffff"
                text: qsTr("密  码   ")
                verticalAlignment: Text.AlignVCenter
                rotation: 0
                horizontalAlignment: Text.AlignRight
                scale: 1
                font.pixelSize: 16
            }

            ColorEditText {
                id: inputPassword
                color: "#ffff00"
                enabled: true
                placeholderText: "请输入密码"
                echoMode: TextInput.Password
            }
        }

        Flow {
            id: flow1
            x: 120
            y: 241
            width: 218
            height: 57
            scale: 1
            anchors.horizontalCenterOffset: 22
            layoutDirection: Qt.LeftToRight
            flow: Flow.LeftToRight
            spacing: 36
            anchors.horizontalCenter: parent.horizontalCenter

            ColorButton {
                id: btnExit
                text: "退出"
            }

            ColorButton {
                id: btnLogin
                text: "登录"
            }
        }
    }
}
