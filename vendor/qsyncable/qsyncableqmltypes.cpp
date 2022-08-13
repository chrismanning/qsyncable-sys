#include <QtQml>
#include "qsjsonlistmodel.h"
#include "qsuuid.h"
#include "qsyncableqmlwrapper.h"
#include "qsyncableqmltypes.h"

template <typename T>
static QObject *provider(QQmlEngine *engine, QJSEngine *scriptEngine) {
    Q_UNUSED(engine);
    Q_UNUSED(scriptEngine);

    T* object = new T();

    return object;
}

void registerTypes(const char* uri) {
    qmlRegisterType<QSJsonListModel>(uri, 1, 0, "JsonListModel");
    qmlRegisterSingletonType<QSUuid>(uri, 1, 0, "Uuid", provider<QSUuid>);
    qmlRegisterSingletonType<QSyncableQmlWrapper>(uri, 1, 0, "QSyncable", provider<QSyncableQmlWrapper>);
}

//Q_COREAPP_STARTUP_FUNCTION(registerTypes)
