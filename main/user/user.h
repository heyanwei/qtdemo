#ifndef USER_H
#define USER_H

#include <QtCore>

class User
{

public:
    User();

    bool Login(QString userName, QString password);
};

#endif // USER_H
