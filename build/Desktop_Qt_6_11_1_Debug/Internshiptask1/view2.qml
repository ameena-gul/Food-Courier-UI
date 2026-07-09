import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
Item {
    height: 812
    width: 375

    Button{
    width: 256
    height: 48
    anchors.top: parent.top
    anchors.topMargin: 658
    anchors.left: parent.left
    anchors.leftMargin: 54
    background: Rectangle{
    radius:7
    color:"#D61355"
}
    contentItem: Text{
        text: "Sign up"
        color: "white"
        font.family:"Roboto"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    }
}