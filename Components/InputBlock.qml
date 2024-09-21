import QtQuick 2.11
import QtQuick.Layouts 1.11
import SddmComponents 2.0 as SDDM

Rectangle {
    id: outerBorder
    width: parent.width
    height: root.font.pointSize * 23
    anchors.centerIn: parent
    color: "transparent"
    border.color: "red"  // Outer border color
    border.width: 3  // Outer border width

    Rectangle {
        id: innerBorder
        width: parent.width - 10  // Adjust for outer border spacing
        height: parent.height - 10
        anchors.centerIn: parent
        color: "transparent"
        border.color: "white"  // Inner border color
        border.width: 3  // Inner border width

        // Add SYSTEM BOOTING text at the top of the inner border
        ColumnLayout {
            anchors.fill: parent

            Text {
                id: systemBootingText
                text: "<SYSTEM BOOTING>"
                font.pointSize: 16
                color: outerBorder.palette.highlight
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            }

            Input {
                id: input
                Layout.fillWidth: true  // Works inside ColumnLayout
                Layout.alignment: Qt.AlignVCenter
            }
        }
    }
}
