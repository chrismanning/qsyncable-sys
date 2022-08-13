use std::ffi::CStr;
use cpp::cpp;
use qmetaobject::prelude::*;

cpp! {{
    #include "qsyncable/qsyncableqmltypes.h"
}}

#[derive(Default, QObject)]
struct QSyncableQmlPlugin {
    base: qt_base_class!(trait QQmlExtensionPlugin),
    plugin: qt_plugin!("org.qt-project.Qt.QQmlExtensionInterface/1.0"),
}

impl QQmlExtensionPlugin for QSyncableQmlPlugin {
    fn register_types(&mut self, uri: &CStr) {
        println!("Registering QSyncable QML types");
        unsafe {
            let uri_ptr = uri.as_ptr();
            cpp!([uri_ptr as "const char *"]{ registerTypes(uri_ptr); });
        }
    }
}

pub fn register_qml_types() {
    unsafe {
        cpp!([]{ registerTypes("QSyncable"); });
    }
}
