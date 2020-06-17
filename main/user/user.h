#ifndef USER_H
#define USER_H

#include "userdao.h"

class User
{

public:
    User(QSqlDatabase database);

    bool Login(QString userName, QString password);

private:
    UserDao *_userDao;


};

#endif // USER_H
