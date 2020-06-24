#ifndef USER_H
#define USER_H

#include <QtCore>
#include <QtNetwork>

class User : public QObject
{
Q_OBJECT
public:
    User();

    Q_INVOKABLE bool Login(QString userName, QString password);

private slots:
    void replyFinished(QNetworkReply *reply);
};

#endif // USER_H
