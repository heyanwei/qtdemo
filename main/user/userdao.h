#ifndef USERDAO_H
#define USERDAO_H

#include <QtCore>
#include <QtSql>

class UserDao
{
public:
    UserDao(QSqlDatabase database);

private:
    QSqlDatabase _db;
};

#endif // USERDAO_H
