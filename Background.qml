import QtQuick 2.0
import QtGraphicalEffects 1.0
Rectangle
{
    anchors.fill: parent
    z: -1
    id: background
    //color: "aqua"

    gradient: Gradient
    {
        GradientStop { position: 0.0; color: "aqua" }

               GradientStop { position: 1.0; color: "fuchsia" }
    }

}
