import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 400
    height: 600

    Rectangle {
        id: bottomleft
        y: 500
        width: 120
        height: 120
        color: "#ffffff"
        border.color: "#808080"
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        opacity: 0.7
    }

    Rectangle {
        id: topmiddle
        y: 178
        width: 120
        height: 120
        color: "#ffffff"
        anchors.left: topleft.right
        anchors.leftMargin: 10
        anchors.bottom: middlemiddle.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: topleft
        x: -2
        y: 178
        width: 120
        height: 120
        color: "#ffffff"
        anchors.bottom: middleleft.top
        anchors.bottomMargin: 10
        anchors.leftMargin: 10
        anchors.left: parent.left
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: middleright
        y: 324
        width: 120
        height: 120
        color: "#ffffff"
        anchors.left: middlemiddle.right
        anchors.leftMargin: 10
        anchors.bottom: bottomright.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: middlemiddle
        y: 324
        width: 120
        height: 120
        color: "#ffffff"
        anchors.left: middleleft.right
        anchors.leftMargin: 10
        anchors.bottom: bottommiddle.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: middleleft
        y: 319
        width: 120
        height: 120
        color: "#ffffff"
        anchors.bottom: bottomleft.top
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: bottomright
        y: 460
        width: 120
        height: 120
        color: "#ffffff"
        anchors.left: bottommiddle.right
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: bottommiddle
        y: 460
        width: 120
        height: 120
        color: "#ffffff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: bottomleft.right
        anchors.leftMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: topright
        y: 178
        width: 120
        height: 120
        color: "#ffffff"
        anchors.left: topmiddle.right
        anchors.leftMargin: 10
        anchors.bottom: middleright.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Image {
        id: logo2048
        y: 0
        width: 100
        height: 100
        anchors.bottom: topleft.top
        anchors.bottomMargin: 100
        anchors.left: parent.left
        anchors.leftMargin: 10
        source: "Logo_2048.png"
    }

}
