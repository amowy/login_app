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
        Text {
            id: systemBootingText
            text: "<SYSTEM BOOTING>"
            font.pointSize: 16
            color: root.palette.highlight
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10  // Spacing from the top border
        }



        /* Existing column content (inputContainer) goes here
        Column {
            id: inputContainer
            Layout.fillWidth: true
            anchors.centerIn: parent  // Center the content inside the inner border

            property Control exposeSession: sessionSelect.exposeSession
            property bool failed

            // Existing content continues here...
            // ...
        } */

        Input {
            id: input
            anchors.centerIn: parent
        }
    }
}
