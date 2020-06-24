#include "user.h"

User::User()
{

}

bool User::Login(QString userName, QString password)
{
    qDebug()<<"login 2: "<<userName<<", "<<password;

    QNetworkAccessManager *manager = new QNetworkAccessManager(this);
    connect(manager, SIGNAL(finished(QNetworkReply*)), this,
            SLOT(replyFinished(QNetworkReply*)));

    QNetworkRequest request;
    request.setUrl(QUrl("http://www.baidu.com"));
    QNetworkReply *reply = manager->get(request);
    qDebug()<<"reply: "<<reply->readAll();

    return true;
}

void User::replyFinished(QNetworkReply *reply)
{
    QString all = reply->readAll();
    qDebug()<<all;

    reply->deleteLater();
}

