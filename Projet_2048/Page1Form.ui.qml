import QtQuick 2.9
import QtQuick.Controls 2.2

Rectangle {
    id: page
    width: 530
    height: 700

    /*Keys.onPressed: {
        switch (event.key) {
        case Qt.Key_Up:

            grille.MouvementHaut()
            break
        case Qt.Key_Down:
            grille.MouvementBas()
            break
        case Qt.Key_Right:
            grille.MouvementDroite()
            break
        case Qt.Key_Left:
            grille.MouvementGauche()
            break
        }
    }*/
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

        Text {
            id: textEdit13
            x: 0
            y: -260
            color: "#fe0101"
            font.weight: Font.Black
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
            focus: true
            Keys.onPressed: {
                switch (event.key) {
                case Qt.Key_Up:
                    Case13.changement(MaGrille,1)

                    break
                case Qt.Key_Down:

                    Case13.changement(MaGrille,2)
                    break
                case Qt.Key_Right:

                    Case13.changement(MaGrille,3)
                    break
                case Qt.Key_Left:

                    Case13.changement(MaGrille,4)
                    break
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

        Text {
            id: textEdit6
            x: -130
            y: 0
            color: "#fe0101"

            font.weight: Font.Black

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
            focus: true
            Keys.onPressed: {
                switch (event.key) {
                case Qt.Key_Up:

                    Case6.changement()
                    break
                case Qt.Key_Down:

                    Case6.changement()
                    break
                case Qt.Key_Right:

                    Case6.changement()
                    break
                case Qt.Key_Left:

                    Case6.changement()
                    break
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

        Text {
            id: textEdit5
            x: 0
            color: "#fe0101"

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
            focus: true
            Keys.onPressed: {
                switch (event.key) {
                case Qt.Key_Up:

                    Case5.changement()
                    break
                case Qt.Key_Down:

                    Case5.changement()
                    break
                case Qt.Key_Right:

                    Case5.changement()
                    break
                case Qt.Key_Left:

                    Case5.changement()
                    break
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

        Text {
            id: textEdit11
            x: -260
            y: -130
            color: "#fe0101"

            font.weight: Font.Black

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

                    Case11.changement()
                    break
                case Qt.Key_Down:

                    Case11.changement()
                    break
                case Qt.Key_Right:

                    Case11.changement()
                    break
                case Qt.Key_Left:

                    Case11.changement()
                    break
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

        Text {
            id: textEdit10
            x: -130
            y: -130
            color: "#fe0101"

            font.weight: Font.Black

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

                    Case10.changement()
                    break
                case Qt.Key_Down:

                    Case10.changement()
                    break
                case Qt.Key_Right:

                    Case10.changement()
                    break
                case Qt.Key_Left:

                    Case10.changement()
                    break
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

        Text {
            id: textEdit9
            x: 0
            y: -130
            color: "#fe0101"

            font.weight: Font.Black

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

                    Case9.changement()
                    break
                case Qt.Key_Down:

                    Case9.changement()
                    break
                case Qt.Key_Right:

                    Case9.changement()
                    break
                case Qt.Key_Left:

                    Case9.changement()
                    break
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

        Text {
            id: textEdit15
            x: -260
            y: -260
            color: "#fe0101"

            font.weight: Font.Black

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

                    Case15.changement()
                    break
                case Qt.Key_Down:

                    Case15.changement()
                    break
                case Qt.Key_Right:

                    Case15.changement()
                    break
                case Qt.Key_Left:

                    Case15.changement()
                    break
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

        Text {
            id: textEdit14
            x: -130
            y: -260
            color: "#fe0101"

            font.weight: Font.Black

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

                    Case14.changement()
                    break
                case Qt.Key_Down:

                    Case14.changement()
                    break
                case Qt.Key_Right:

                    Case14.changement()
                    break
                case Qt.Key_Left:

                    Case14.changement()
                    break
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

        Text {
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

            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            textFormat: Text.AutoText
            anchors.topMargin: 0
            anchors.fill: parent
            text: Case1.CaseQML
            Keys.onPressed: {
                switch (event.key) {
                case Qt.Key_Up:

                    Case1.changement()
                    break
                case Qt.Key_Down:

                    Case1.changement()
                    break
                case Qt.Key_Right:

                    Case1.changement()
                    break
                case Qt.Key_Left:

                    Case1.changement()
                    break
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

        Text {
            id: textEdit8
            x: -390
            y: 0
            color: "#fe0101"

            font.weight: Font.Black

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

                    Case8.changement()
                    break
                case Qt.Key_Down:

                    Case8.changement()
                    break
                case Qt.Key_Right:

                    Case8.changement()
                    break
                case Qt.Key_Left:

                    Case8.changement()
                    break
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

        Text {
            id: textEdit12
            x: -390
            y: -130
            color: "#fe0101"

            font.weight: Font.Black

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

                    Case12.changement()
                    break
                case Qt.Key_Down:

                    Case12.changement()
                    break
                case Qt.Key_Right:

                    Case12.changement()
                    break
                case Qt.Key_Left:

                    Case12.changement()
                    break
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

        Text {
            id: textEdit16
            x: -390
            y: -260
            color: "#fe0101"

            font.weight: Font.Black

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

                    Case16.changement()
                    break
                case Qt.Key_Down:

                    Case16.changement()
                    break
                case Qt.Key_Right:

                    Case16.changement()
                    break
                case Qt.Key_Left:

                    Case16.changement()
                    break
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

        Text {
            id: textEdit7
            x: -260
            y: 0
            color: "#fe0101"

            font.weight: Font.Black

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

                    Case7.changement()
                    break
                case Qt.Key_Down:

                    Case7.changement()
                    break
                case Qt.Key_Right:

                    Case7.changement()
                    break
                case Qt.Key_Left:

                    Case7.changement()
                    break
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

        Text {
            id: textEdit2
            x: -130
            y: 0
            color: "#fe0101"

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

                    Case2.changement()
                    break
                case Qt.Key_Down:

                    Case2.changement()
                    break
                case Qt.Key_Right:

                    Case2.changement()
                    break
                case Qt.Key_Left:

                    Case2.changement()
                    break
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

        Text {
            id: textEdit3
            x: -260
            y: 0
            color: "#fe0101"

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

                    Case3.changement()
                    break
                case Qt.Key_Down:

                    Case3.changement()
                    break
                case Qt.Key_Right:

                    Case3.changement()
                    break
                case Qt.Key_Left:

                    Case3.changement()
                    break
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

        Text {
            id: textEdit4
            x: -390
            y: 0
            color: "#fe0101"

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

                    Case4.changement()
                    break
                case Qt.Key_Down:

                    Case4.changement()
                    break
                case Qt.Key_Right:

                    Case4.changement()
                    break
                case Qt.Key_Left:

                    Case4.changement()
                    break
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

        Text {
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

        Text {
            id: textEdit
            x: 40
            y: 40
            color: "#0a00c9"
            width: 100
            height: 50
            //horizontalAlignment: Text.AlignHCenter
            //font.weight: Font.ExtraBold
            anchors.fill: parent
            font.pixelSize: 24
            text: Score.ScoreQML
            focus: true
            Keys.onPressed: {
                switch (event.key) {
                case (Qt.Key_Up):
                    Score.ajout()
                    break
                }
            }
        }
    }
}
