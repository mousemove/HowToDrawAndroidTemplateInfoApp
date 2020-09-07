import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import "ViewerModels"

Item {
    property  ListModel model : null
    property string pathModel : ""
    property int number : 1


    Component.onCompleted:
    {
        var component = Qt.createComponent(pathModel);
        if (component.status === Component.Ready)
            model =    component.createObject();

    }


    Item
    {

        z: -1
        id: currentPicture

        width: parent.width; height: parent.height - parent.height/12
        Image {

            anchors.fill: parent
            anchors.margins: 30
            fillMode: Image.PreserveAspectFit
            source:model.get(number-1).picture
            width: parent.width
            height: parent.height
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }
    }
    Item
    {

        z: -1
        id: manageArea
        anchors.top: currentPicture.bottom

        width: parent.width; height:  parent.height/12

        Item {
            id: manageRow
            anchors.fill: parent
            //spacing: 10

            Image {
                id:backbutton
                fillMode: Image.PreserveAspectFit
                source: "qrc:/manage/pictures/managearea/camera-back.png"
                width: manageArea.width/10
                height: manageArea.height - 10
                anchors.top: parent.top
                anchors.topMargin: 5
                anchors.left: parent.left
                anchors.leftMargin:  10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(number !== 1)
                            number--
                        else
                            number =  model.count
                    }
                }
            }
            Image {
                id:homebutton
                fillMode: Image.PreserveAspectFit
                source: "qrc:/manage/pictures/managearea/house.png"
                width: manageArea.width/10
                height: manageArea.height - 10
                anchors.top: parent.top
                anchors.topMargin: 5
                anchors.left: backbutton.right
                anchors.leftMargin:  10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        stack.toHome();
                    }
                }
            }
            Text {
                id:currentPosition
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: manageArea.height/4
                text: number+"/"+model.count
                font.pixelSize: (manageArea.height)/2
            }
            Image {
                id:nextbutton
                fillMode: Image.PreserveAspectFit
                source: "qrc:/manage/pictures/managearea/camera-forward.png"
                width: manageArea.width/10
                height: manageArea.height - 10
                anchors.top: parent.top
                anchors.topMargin: 5
                anchors.right: parent.right
                anchors.rightMargin:  10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(number !== model.count)
                            number++
                        else
                            number =  1
                    }
                }
            }
            Image {
                id:sharebutton
                fillMode: Image.PreserveAspectFit
                source: "qrc:/manage/pictures/managearea/share.png"
                width: manageArea.width/10
                height: manageArea.height - 10
                anchors.top: parent.top
                anchors.topMargin: 5
                anchors.right: nextbutton.left
                anchors.rightMargin:  10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
//                        var component = Qt.createComponent("ViewerModels/ViewerModel1.qml");
//                        if (component.status === Component.Ready)
//                            model =    component.createObject();


//                        console.log(model)
                    }
                }
            }



            //            Rectangle {
            //                color: 'teal'
            //               // Layout.fillWidth: true

            //                Text {
            //                    anchors.centerIn: parent
            //                    text: parent.width + 'x' + parent.height
            //                }
            //            }

        }

    }


}
