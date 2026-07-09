import QtQuick
import QtQuick.Controls.Basic
Page{
    property StackView stack
    height: 812
    width: 375
    Image{
        source: "images/Illustration2.png"
        anchors.horizontalCenter: parent.horizontalCenter
        width: 389.96
        height: 383.89
        y:22

    }

// white bottom panel
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        width: 375
        height: 576
        y: 236
        radius: 7
        color: "white"
}
    Button{
    width: 256
    height: 48
    anchors.top: parent.top
    anchors.topMargin: 658
    anchors.left: parent.left
    anchors.leftMargin: 54
    onClicked:{
        console.log("Signup Clicked")
    }

    background: Rectangle{
    radius:7
    color:"#D61355"

}
    contentItem: Text{
        text: "Sign up"
        color: "white"
        font.family:"Roboto"
        font.pixelSize: 14
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    }
    Button{
        width: 256
        height:53
        anchors.top: parent.top
        anchors.topMargin: 737
        anchors.left: parent.left
        anchors.leftMargin: 57
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked:{
            console.log("Google Signup Clicked")
        }


        background:Rectangle{
            radius:7
            color:"#F4F4F4"
        }
        contentItem: Row{
            spacing: 10

            Image {
            source: "images/Google.png"
            width: 20
            height: 20
            fillMode: Image.PreserveAspectFit

        }
            Text{
            text: "Sign up with Google"
            color: "black"
            font.bold:true
            font.family:"Poppins"
            font.pixelSize:14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

        }
    }
        }
}
