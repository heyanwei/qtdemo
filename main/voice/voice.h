#ifndef VOICE_H
#define VOICE_H

#include <QtCore>

class Voice
{

public:
    Voice();

    static bool Speech(QString str);
};

#endif // VOICE_H
