import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Item {


        GridView {
            id: objectsGrid
            anchors.fill: parent
            model: ObjectsModel {}
            clip: true
            cellWidth: parent.width/2 ; cellHeight:parent.height/3

            delegate:
                PreviewSelect{}

            currentIndex: -1
            focus: true
        }



}
