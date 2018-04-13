import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 530
    height: 700
    Keys.onPressed: {
        switch (event.key) {
          case Qt.Key_Up:
            grille.MouvementHaut();
            break;
          case Qt.Key_Down:
            grille.MouvementBas();
            break;
          case Qt.Key_Right:
            grille.MouvementDroite();
            break;
          case Qt.Key_Left:
            grille.MouvementGauche();
            break;
    }
    }

    Rectangle {
        id: treize
        y: 500
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        border.color: "#808080"
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        opacity: 0.7

        TextEdit {
            id: textEdit13
            x: 0
            y: -260
            color: "#fe0101"
            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case13.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case13.Read();
                  break;
                case Qt.Key_Down:
                  Case13.Read();
                  break;
                case Qt.Key_Right:
                  Case13.Read();
                  break;
                case Qt.Key_Left:
                  Case13.Read();
                  break;
              }
            }
        }

    }

    Rectangle {
        id: six
        y: 178
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.left: cinq.right
        anchors.leftMargin: 10
        anchors.bottom: dix.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit6
            x: -130
            y: 0
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case6.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case6.Read();
                  break;
                case Qt.Key_Down:
                  Case6.Read();
                  break;
                case Qt.Key_Right:
                  Case6.Read();
                  break;
                case Qt.Key_Left:
                  Case6.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: cinq
        x: -2
        y: 178
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.bottom: neuf.top
        anchors.bottomMargin: 10
        anchors.leftMargin: 10
        anchors.left: parent.left
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit5
            x: 0
            color: "#fe0101"

            selectionColor: "#000000"
            font.weight: Font.Black
            anchors.fill: parent
            anchors.topMargin: 0
            renderType: Text.QtRendering
            font.capitalization: Font.Capitalize
            leftPadding: 0
            font.family: "Arial"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case5.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case5.Read();
                  break;
                case Qt.Key_Down:
                  Case5.Read();
                  break;
                case Qt.Key_Right:
                  Case5.Read();
                  break;
                case Qt.Key_Left:
                  Case5.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: onze
        y: 324
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.left: dix.right
        anchors.leftMargin: 10
        anchors.bottom: quinze.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit11
            x: -260
            y: -130
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case11.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case11.Read();
                  break;
                case Qt.Key_Down:
                  Case11.Read();
                  break;
                case Qt.Key_Right:
                  Case11.Read();
                  break;
                case Qt.Key_Left:
                  Case11.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: dix
        y: 324
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.left: neuf.right
        anchors.leftMargin: 10
        anchors.bottom: quatorze.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit10
            x: -130
            y: -130
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case10.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case10.Read();
                  break;
                case Qt.Key_Down:
                  Case10.Read();
                  break;
                case Qt.Key_Right:
                  Case10.Read();
                  break;
                case Qt.Key_Left:
                  Case10.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: neuf
        y: 319
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.bottom: treize.top
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit9
            x: 0
            y: -130
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case9.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case9.Read();
                  break;
                case Qt.Key_Down:
                  Case9.Read();
                  break;
                case Qt.Key_Right:
                  Case9.Read();
                  break;
                case Qt.Key_Left:
                  Case9.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: quinze
        y: 460
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.left: quatorze.right
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit15
            x: -260
            y: -260
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case15.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case15.Read();
                  break;
                case Qt.Key_Down:
                  Case15.Read();
                  break;
                case Qt.Key_Right:
                  Case15.Read();
                  break;
                case Qt.Key_Left:
                  Case15.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: quatorze
        y: 460
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: treize.right
        anchors.leftMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit14
            x: -130
            y: -260
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case14.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case14.Read();
                  break;
                case Qt.Key_Down:
                  Case14.Read();
                  break;
                case Qt.Key_Right:
                  Case14.Read();
                  break;
                case Qt.Key_Left:
                  Case14.Read();
                  break;
              }
            }
        }
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
        color: "#656565"
        radius: 20
        anchors.leftMargin: 10
        anchors.bottom: cinq.top
        anchors.left: parent.left
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit1
            x: 0
            y: -2
            color: "#fe0101"

            font.pixelSize: 40
            leftPadding: 0
            topPadding: 40
            font.weight: Font.Black
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            selectionColor: "#008033"
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            textFormat: Text.AutoText
            anchors.topMargin: 0
            anchors.fill: parent
            text: Case1.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case1.Read();
                  break;
                case Qt.Key_Down:
                  Case1.Read();
                  break;
                case Qt.Key_Right:
                  Case1.Read();
                  break;
                case Qt.Key_Left:
                  Case1.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: huit
        x: -7
        y: 414
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.leftMargin: 10
        anchors.bottom: douze.top
        anchors.left: sept.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit8
            x: -390
            y: 0
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case8.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case8.Read();
                  break;
                case Qt.Key_Down:
                  Case8.Read();
                  break;
                case Qt.Key_Right:
                  Case8.Read();
                  break;
                case Qt.Key_Left:
                  Case8.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: douze
        x: -2
        y: 540
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.leftMargin: 10
        anchors.bottom: seize.top
        anchors.left: onze.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit12
            x: -390
            y: -130
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case12.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case12.Read();
                  break;
                case Qt.Key_Down:
                  Case12.Read();
                  break;
                case Qt.Key_Right:
                  Case12.Read();
                  break;
                case Qt.Key_Left:
                  Case12.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: seize
        x: 6
        y: 670
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.left: quinze.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit16
            x: -390
            y: -260
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case16.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case16.Read();
                  break;
                case Qt.Key_Down:
                  Case16.Read();
                  break;
                case Qt.Key_Right:
                  Case16.Read();
                  break;
                case Qt.Key_Left:
                  Case16.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: sept
        x: 1
        y: 271
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        border.color: "#00000000"
        anchors.leftMargin: 10
        anchors.bottom: onze.top
        anchors.left: six.right
        anchors.bottomMargin: 10
        opacity: 0.7

        TextEdit {
            id: textEdit7
            x: -260
            y: 0
            color: "#fe0101"

            font.weight: Font.Black
            selectionColor: "#000000"
            anchors.fill: parent
            leftPadding: 0
            font.capitalization: Font.Capitalize
            renderType: Text.QtRendering
            anchors.topMargin: 0
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case7.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case7.Read();
                  break;
                case Qt.Key_Down:
                  Case7.Read();
                  break;
                case Qt.Key_Right:
                  Case7.Read();
                  break;
                case Qt.Key_Left:
                  Case7.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: deux
        x: -2
        y: 280
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.leftMargin: 10
        anchors.bottom: six.top
        anchors.left: un.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit2
            x: -130
            y: 0
            color: "#fe0101"

            selectionColor: "#008033"
            font.weight: Font.Black
            anchors.fill: parent
            anchors.topMargin: 0
            renderType: Text.QtRendering
            font.capitalization: Font.Capitalize
            leftPadding: 0
            font.family: "Arial"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case2.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case2.Read();
                  break;
                case Qt.Key_Down:
                  Case2.Read();
                  break;
                case Qt.Key_Right:
                  Case2.Read();
                  break;
                case Qt.Key_Left:
                  Case2.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: trois
        y: 180
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.left: deux.right
        anchors.leftMargin: 10
        anchors.bottom: sept.top
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit3
            x: -260
            y: 0
            color: "#fe0101"

            selectionColor: "#008033"
            font.weight: Font.Black
            anchors.fill: parent
            anchors.topMargin: 0
            renderType: Text.QtRendering
            font.capitalization: Font.Capitalize
            leftPadding: 0
            font.family: "Arial"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case3.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case3.Read();
                  break;
                case Qt.Key_Down:
                  Case3.Read();
                  break;
                case Qt.Key_Right:
                  Case3.Read();
                  break;
                case Qt.Key_Left:
                  Case3.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: quatre
        x: 3
        y: 277
        width: 120
        height: 120
        color: "#656565"
        radius: 20
        anchors.leftMargin: 10
        anchors.bottom: huit.top
        anchors.left: trois.right
        anchors.bottomMargin: 10
        border.color: "#808080"
        opacity: 0.7

        TextEdit {
            id: textEdit4
            x: -390
            y: 0
            color: "#fe0101"

            selectionColor: "#008033"
            font.weight: Font.Black
            anchors.fill: parent
            anchors.topMargin: 0
            renderType: Text.QtRendering
            font.capitalization: Font.Capitalize
            leftPadding: 0
            font.family: "Arial"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 40
            textFormat: Text.AutoText
            topPadding: 40
            text: Case4.CaseQML
            Keys.onPressed: {
              switch (event.key) {
                case Qt.Key_Up:
                  Case4.Read();
                  break;
                case Qt.Key_Down:
                  Case4.Read();
                  break;
                case Qt.Key_Right:
                  Case4.Read();
                  break;
                case Qt.Key_Left:
                  Case4.Read();
                  break;
              }
            }
        }
    }

    Rectangle {
        id: score
        width: 209
        height: 32
        color: "#ffffff"
        anchors.left: logo2048.right
        anchors.leftMargin: 200
        anchors.top: parent.top
        anchors.topMargin: 10
        border.color: "#040404"

        TextEdit {
            id: scoretext
            color: "#0a00c9"
            text: qsTr("Score")
            font.weight: Font.ExtraBold
            anchors.fill: parent
            renderType: Text.QtRendering
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 24
        }
    }

    Rectangle {
        id: scorenumber
        width: 210
        height: 62
        color: "#ffffff"
        anchors.left: logo2048.right
        anchors.leftMargin: 200
        anchors.top: score.bottom
        anchors.topMargin: 10

        TextEdit {
            id: textEdit
            color: "#0a00c9"
            text: qsTr("10000")
            selectionColor: "#00000000"
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.ExtraBold
            anchors.fill: parent
            font.pixelSize: 24
        }
    }



}

