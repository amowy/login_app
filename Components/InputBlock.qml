import QtQuick 2.11

Rectangle {
    id: outerBorder
    width: parent.width
    height: parent.height
    anchors.centerIn: parent
    color: "transparent"
    border.color: "white"  // Outer border color
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
