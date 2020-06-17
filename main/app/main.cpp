#include "mainwindow.h"
#include <QApplication>

#include "voice.h"
#include "user.h"

#include <QtSql>

int main(int argc, char *argv[])
{
    QSqlDatabase database = QSqlDatabase::addDatabase("QSQLITE");
    database.setDatabaseName("demo.db");
    if (!database.open())
    {
        qDebug() << "Error: Failed to connect database." << database.lastError();
        return 0;
    }
    else
    {
        qDebug() << "Succeed to connect database." ;
    }

    Voice::Speech("hello, john. my name is heyanwei");

    User user(database);
    user.Login("john", "123456");

    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
