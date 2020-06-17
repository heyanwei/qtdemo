#include "user.h"

User::User(QSqlDatabase database)
{
    _userDao = new UserDao(database);
}

bool User::Login(QString userName, QString password)
{
    qDebug()<<"login failed...";
    return false;
}
