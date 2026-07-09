import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

Item {
    property StackView stack
    id: window
    width: 375
    height: 812

    Image {
        id: illustration
        source: "images/Illustration.png"
        anchors.horizontalCenter: parent.horizontalCenter
        y: 57
        width: 408
        height: 434
        fillMode: Image.PreserveAspectFit

    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Select the\nFavorites Menu"
        x: 82
        y: 530
        width: 211
        font.family: "Poppins"
        font.pixelSize: 22
        font.bold: true
        color: "black"
        horizontalAlignment: Text.AlignHCenter
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Now eat well, don't leave the house, You can\nchoose your favorite food only with\none click"
        x: 66
        y: 608
        width: 260
        font.family: "Inter"
        font.pixelSize: 12
        color: "black"
        horizontalAlignment: Text.AlignHCenter
    }

    Button {
        id: nextButton

        width: 157
        height: 57

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 95

        background: Rectangle {
            radius: 8

            gradient: Gradient {
                GradientStop {
                    position: 0.0
                    color: "#D61355"
                }

                GradientStop {
                    position: 1.0
                    color: "#FF0000"
                }
            }
        }

        contentItem: Text {
            text: "Next"
            color: "white"
            font.family: "Poppins"
            font.pixelSize: 18
            font.weight: Font.Bold
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }



            onClicked: {
                stack.push(Qt.resolvedUrl("View2.qml"), {
                    stack: stack
                })
            }

    }

Image {
        id: bottomNavigation

        source: "images/Group3.png"
        width: 323
        height: 24

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 25

        MouseArea {
            anchors.fill: parent

            onClicked: {
                console.log("Arrow Clicked")
            }
        }
    }

}