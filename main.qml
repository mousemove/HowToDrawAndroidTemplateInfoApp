import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: infoApplication
    visible: true
    width: 480
    height: 960
    title: qsTr("How to draw animals?")
    Background{}

    StackView {
        id: stack
        initialItem: "Select.qml"
        anchors.fill: parent
        function toHome()
        {
            stack.pop(StackView.Immediate); stack.push("Select.qml" ,StackView.PushTransition);

        }
        function toViewer(path)
        {
            stack.pop(StackView.Immediate); stack.push("ItemViewer.qml",{pathModel:path},StackView.PushTransition);
        console.log("path::"+path)
        }
    }
}
