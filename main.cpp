#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "qml_handler.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/GrayScaleCompressor/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    QmlHandler qmlHandler;
    engine.rootContext()->setContextProperty("_qmlHandler", &qmlHandler);

    return app.exec();
}
