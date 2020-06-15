#include "voice.h"

#include <QTextToSpeech>

Voice::Voice()
{
}

bool Voice::Speech(QString str)
{
    //QLoggingCategory::setFilterRules(QStringLiteral("qt.speech.tts=true \n qt.speech.tts.*=true"));

    qDebug()<<"speech: "<<str;

    QTextToSpeech m_speech;
    m_speech.setVolume(1);
    m_speech.say(str);

    return true;
}
