#ifndef QMLHANDLER_H
#define QMLHANDLER_H

#include <QObject>

class QmlHandler : public QObject
{
    Q_OBJECT
public:
    QmlHandler(QObject *parent = 0);

public slots:
    void saveBmpBtnClicked();
    void saveBarchBtnClicked();

    void loadBtnClicked();
};

#endif // QMLHANDLER_H
