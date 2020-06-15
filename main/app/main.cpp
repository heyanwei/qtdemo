#include "mainwindow.h"
#include <QApplication>

#include "voice.h"
#include "user.h"

int main(int argc, char *argv[])
{
    Voice::Speech("hello, john. my name is heyanwei");

    User user;
    user.Login("john", "123456");

    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
