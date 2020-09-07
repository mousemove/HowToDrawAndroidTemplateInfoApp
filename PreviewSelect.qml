import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
Item {
    //anchors.fill: parent


    Rectangle
    {
        z: -1
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20

        color: "white"
        radius: 10
        width: objectsGrid.cellWidth - 40
        height:objectsGrid.cellHeight - 40

        Image {
            //id: name
            z:0

            width: objectsGrid.cellWidth - 40
            height:objectsGrid.cellHeight - 40
            fillMode: Image.PreserveAspectFit
            source: picture
            MouseArea{
                anchors.fill: parent
                onClicked: {


                    stack.toViewer(path);
                }
            }
        }
    }
}
