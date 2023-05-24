import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Grayscale Compressor")

    FileDialog {
        id: loadFileDialog
        title: "Please choose a file"
        onAccepted: {
            image.source = loadFileDialog.currentFile
        }
    }

    /*FileDialog {
        id: saveFileDialog
        title: "Please choose a file"
        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrls)
            Qt.quit()
        }
    }*/

    Rectangle
    {
        id: mainRect
        anchors.fill: parent

        Image
        {
            id: image

            anchors.left: parent.left
            anchors.right: parent.horizontalCenter
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            anchors.margins: 20
        }

        Rectangle
        {
            id: btnRect

            anchors.left: parent.horizontalCenter
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            anchors.margins: 20

            Button
            {
                id: loadBtn

                text: "Load..."

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top

                anchors.margins: 5

                onClicked: {
                    loadFileDialog.open()
                    _qmlHandler.loadBtnClicked()
                }
            }

            Button
            {
                id: saveBmpBtn

                text: "Save as BMP..."

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: loadBtn.bottom

                anchors.margins: 5

                onClicked: _qmlHandler.saveBmpBtnClicked()
            }

            Button
            {
                id: saveBarchBtn

                text: "Save as BARCH..."

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: saveBmpBtn.bottom

                anchors.margins: 5

                onClicked: _qmlHandler.saveBmpBarchClicked()
            }
        }
    }
}
