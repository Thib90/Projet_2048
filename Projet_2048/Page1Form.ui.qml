import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 530
    height: 700

    Rectangle {
        id: treize
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
        id: six
        y: 178
        width: 120
        height: 120
        color: "#ffffff"
        anchors.left: cinq.right
        anchors.leftMargin: 10
        anchors.bottom: dix.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: cinq
        x: -2
        y: 178
        width: 120
        height: 120
        color: "#ffffff"
        anchors.bottom: neuf.top
        anchors.bottomMargin: 10
        anchors.leftMargin: 10
        anchors.left: parent.left
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: onze
        y: 324
        width: 120
        height: 120
        color: "#ffffff"
        anchors.left: dix.right
        anchors.leftMargin: 10
        anchors.bottom: quinze.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: dix
        y: 324
        width: 120
        height: 120
        color: "#ffffff"
        anchors.left: neuf.right
        anchors.leftMargin: 10
        anchors.bottom: quatorze.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: neuf
        y: 319
        width: 120
        height: 120
        color: "#ffffff"
        anchors.bottom: treize.top
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: quinze
        y: 460
        width: 120
        height: 120
        color: "#ffffff"
        anchors.left: quatorze.right
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: quatorze
        y: 460
        width: 120
        height: 120
        color: "#ffffff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: treize.right
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
        anchors.left: six.right
        anchors.leftMargin: 10
        anchors.bottom: onze.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Image {
        id: logo2048
        y: 0
        width: 100
        height: 100
        anchors.bottom: cinq.top
        anchors.bottomMargin: 200
        anchors.left: parent.left
        anchors.leftMargin: 10
        source: "Logo_2048.png"
    }

    Rectangle {
        id: un
        x: 5
        y: 277
        width: 120
        height: 120
        color: "#ffffff"
        anchors.leftMargin: 10
        anchors.bottom: cinq.top
        anchors.left: parent.left
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: huit
        x: -7
        y: 414
        width: 120
        height: 120
        color: "#ffffff"
        anchors.leftMargin: 10
        anchors.bottom: douze.top
        anchors.left: sept.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: douze
        x: -2
        y: 540
        width: 120
        height: 120
        color: "#ffffff"
        anchors.leftMargin: 10
        anchors.bottom: seize.top
        anchors.left: onze.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: seize
        x: 6
        y: 670
        width: 120
        height: 120
        color: "#ffffff"
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.left: quinze.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: sept
        x: 1
        y: 271
        width: 120
        height: 120
        color: "#ffffff"
        anchors.leftMargin: 10
        anchors.bottom: onze.top
        anchors.left: six.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: deux
        x: -2
        y: 280
        width: 120
        height: 120
        color: "#ffffff"
        anchors.leftMargin: 10
        anchors.bottom: six.top
        anchors.left: un.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: trois
        x: 3
        y: 277
        width: 120
        height: 120
        color: "#ffffff"
        anchors.leftMargin: 10
        anchors.bottom: sept.top
        anchors.left: deux.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

    Rectangle {
        id: quatre
        x: 3
        y: 277
        width: 120
        height: 120
        color: "#ffffff"
        anchors.leftMargin: 10
        anchors.bottom: huit.top
        anchors.left: trois.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7
    }

}
