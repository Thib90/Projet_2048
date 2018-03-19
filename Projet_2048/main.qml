import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 400
    height: 650
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }


    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex



    }
}
