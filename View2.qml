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


        TabBar{
            id : bar
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            y:32
            height:31
            background: Rectangle{
                color:"white"
            }
            TabButton{
                text: "Create Account"
                font.family:"Poppins"
                font.pixelSize: 16
                font.bold: true
                background: Rectangle{
                    color:"transparent"

                }
                contentItem: Text{
                    text:parent.text
                    font.bold: true
                    color: bar.currentIndex === 0 ? "#D61355" : "black"


                }
            }
            TabButton{
                text: "Login"
                font.family:"Poppins"
                font.pixelSize: 16
                font.bold: true
                background: Rectangle{
                    color: "transparent"


                }
                contentItem: Text{
                    text: parent.text
                     color: bar.currentIndex === 1 ? "#D61355" : "black"
                    font.bold: true
                }
            }
        }
        SwipeView {
            id: view

            anchors.top: bar.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            currentIndex: bar.currentIndex

            onCurrentIndexChanged: {
                 bar.currentIndex = currentIndex
             }


            // CREATE ACCOUNT PAGE
            Item {

                Text {
                    text: "Full Name"
                    x: 34
                    y: 20
                    font.family: "Poppins"
                    font.pixelSize: 14
                }

                TextField {
                    x: 34
                    y: 50
                    width: 307
                    height: 45

                    background: Rectangle {
                        color: "white"
                        radius: 7

                    }
                }

                Text {
                    text: "Email Address"
                    x: 34
                    y: 110
                    font.family: "Poppins"
                    font.pixelSize: 14
                }

                TextField {
                    x: 34
                    y: 140
                    width: 307
                    height: 45

                    background: Rectangle {
                        color: "white"
                        radius: 7

                    }
                }

                Text {
                    text: "Password"
                    x: 34
                    y: 200
                    font.family: "Poppins"
                    font.pixelSize: 14
                }

                TextField {
                    x: 34
                    y: 230
                    width: 307
                    height: 45
                    echoMode: TextInput.Password

                    background: Rectangle {
                        color: "white"
                        radius: 7
                      }
                }

                Button {
                    x: 54
                    y: 320
                    width: 256
                    height: 48
                    onClicked: {
                        console.log("Sign Up clicked")
                                            }

                    background: Rectangle {
                        radius: 7
                        color: "#D61355"
                    }

                    contentItem: Text {
                        text: "Sign Up"
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: "Roboto"
                        font.pixelSize: 14
                        font.bold: true
                    }
                }

                Button {
                    x: 54
                    y: 390
                    width: 256
                    height: 53
                    onClicked: {
                          console.log(" Google Sign Up clicked")
                                            }

                    background: Rectangle {
                        radius: 7
                        color: "#F4F4F4"
                    }

                    contentItem: Row {

                        anchors.centerIn: parent
                        spacing: 10

                        Image {
                            source: "images/Google.png"
                            width: 20
                            height: 20
                            x: 40
                            anchors.verticalCenter: parent.verticalCenter
                        }

                        Text {
                            text: "Sign up with Google"
                            font.family: "Poppins"
                            font.pixelSize: 14
                            font.bold: true
                            x: 75
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
            }


            // LOGIN PAGE

            Item {

                Text {
                    text: "Email Address"
                    x: 34
                    y: 20
                    font.family: "Poppins"
                    font.pixelSize: 14
                }

                TextField {
                    x: 34
                    y: 50
                    width: 307
                    height: 45

                    background: Rectangle {
                        color: "white"
                        radius: 7

                    }
                }

                Text {
                    text: "Password"
                    x: 34
                    y: 110
                    font.family: "Poppins"
                    font.pixelSize: 14
                }

                TextField {
                    x: 34
                    y: 140
                    width: 307
                    height: 45
                    echoMode: TextInput.Password

                    background: Rectangle {
                        color: "white"
                        radius: 7

                    }
                }
                Button{
                    x: 230
                    y: 195
                    width: 36
                    height:107

                    background: Rectangle {
                        radius: 7
                        color:"white"

                        }

                        contentItem: Text {
                            text: "Forget Password"
                            color: "#D61355"
                            font.family: "Poppins"
                            font.pixelSize: 12

                        }
                        MouseArea {
                        anchors.fill: parent
                        onClicked:{
                            console.log("Forget Password Clicked")
                        }

                    }
}

                Button {
                    x: 54
                    y: 240
                    width: 256
                    height: 48
                    onClicked: {
                            console.log("Login clicked")
                                            }

                    background: Rectangle {
                        radius: 7
                        color: "#D61355"

                    }

                    contentItem: Text {
                        text: "Login"
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: "Roboto"
                        font.pixelSize: 14
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                        x: 40
                    }
                }

                Button {
                    x: 54
                    y: 310
                    width: 256
                    height: 53
                    onClicked: {
                    console.log("Login with Google clicked")
                                            }

                    background: Rectangle {
                        radius: 7
                        color: "#F4F4F4"

                    }

                    contentItem: Row {
                        anchors.centerIn: parent
                        spacing: 10

                        Image {
                            source: "images/Google.png"
                            width: 20
                            height: 20
                            anchors.verticalCenter: parent.verticalCenter
                            x: 75
                        }

                        Text {
                            text: "Login with Google"
                            font.family: "Poppins"
                            font.pixelSize: 14
                            font.bold: true
                            anchors.verticalCenter: parent.verticalCenter
                             x: 75
                        }
                    }
                }
            }
        }
    }
}