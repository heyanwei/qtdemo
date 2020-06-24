#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "user.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<User>("User.module", 1, 0, "User");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/login.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
