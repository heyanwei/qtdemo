import QtQuick 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0

TextField {
    id: root

    property color checkedColor: "#ffffff"

    placeholderText: qsTr("请输入内容")
    font.family: "Arial"
    font.pixelSize: 15
    font.weight: Font.Thin
    antialiasing: true

    background: Rectangle {
        implicitWidth: 213
        implicitHeight: 42
        radius: 8
        color: root.enabled ? "transparent" : "#F4F6F6"
        border.color: root.enabled ? root.checkedColor : "#ffffff"
        border.width: 2
        opacity: root.enabled ? 1 : 0.7

        layer.enabled: root.hovered
        layer.effect: DropShadow {
            id: dropShadow
            transparentBorder: true
            color: root.checkedColor
            samples: 10 /*20*/
        }
    }
}
