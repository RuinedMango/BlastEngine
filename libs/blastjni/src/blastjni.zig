pub const jni = @cImport({
    @cInclude("jni.h");
});

pub const boolean = jni.jboolean;
pub const char = jni.jchar;
pub const short = jni.jshort;
pub const float = jni.jfloat;
pub const double = jni.jdouble;
pub const size = jni.jsize;
pub const int = jni.jint;
pub const long = jni.jlong;
pub const byte = jni.jbyte;

pub const _object = jni._jobject;
pub const class = jni.jclass;
pub const throwable = jni.jthrowable;
pub const string = jni.jstring;
pub const array = jni.jarray;
pub const booleanArray = jni.jbooleanArray;
pub const byteArray = jni.jbyteArray;
pub const charArray = jni.jcharArray;
pub const shortArray = jni.jshortArray;
pub const intArray = jni.jintArray;
pub const longArray = jni.jlongArray;
pub const floatArray = jni.jfloatArray;
pub const doubleArray = jni.jdoubleArray;
pub const objectArray = jni.jobjectArray;

pub const weak = jni.jweak;

pub const value = jni.jvalue;

pub const _fieldID = jni._jfieldID;
pub const fieldID = ?*_fieldID;

pub const _methodID = jni._jmethodID;
pub const methodID = ?*_methodID;

pub const _objectType = jni._jobjectType;

pub const NINativeMethod = jni.JNINativeMethod;
pub const NINativeInterface_ = jni.JNINativeInterface_;
pub const NIEnv = *NINativeInterface_;
pub const NIEnv_ = jni.JNIEnv_;

pub const NIInvokeInterface_ = jni.JNIInvokeInterface_;
pub const avaVM = *NIInvokeInterface_;
pub const avaVM_ = jni.JavaVM_;

pub const avaVMOption = jni.JavaVMOption;

pub const avaVMInitArgs = jni.JavaVMInitArgs;
pub const avaVMAttachArgs = jni.JavaVMAttachArgs;

pub const NI_GetDefaultJavaVMInitArgs = jni.JNI_GetDefaultJavaVMInitArgs;
pub const NI_CreateJavaVM = jni.JNI_CreateJavaVM;
pub const NI_GetCreatedJavaVMs = jni.JNI_GetCreatedJavaVMs;
pub const NI_OnLoad = jni.JNI_OnLoad;
pub const NI_OnUnload = jni.JNI_OnUnload;
