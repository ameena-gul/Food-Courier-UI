import QtQuick
import QtQuick.Controls.Basic


ApplicationWindow {
    id: window
    visible: true
    width: 375
    height: 812
    color:"white"
    title: ("Food Courier")

    StackView {
          id: stackView
          anchors.fill: parent
          initialItem: View1{
          }
      }
}