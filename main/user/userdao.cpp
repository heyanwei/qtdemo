#include "userdao.h"

UserDao::UserDao(QSqlDatabase database)
{
    _db=database;

    qDebug()<<"User init database: "<<database.databaseName();
}
