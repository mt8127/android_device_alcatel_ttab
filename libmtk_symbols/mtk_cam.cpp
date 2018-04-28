#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <malloc.h>
#include <pthread.h>

extern "C" {
    //android::String8::String8(char const*)
    extern void _ZN7android7String8C1EPKc(void **str8P, const char *str);

    //android::String8::~String8()
    extern void _ZN7android7String8D1Ev(void **str8P);

    //android::String16::String16(char const*)
    extern void _ZN7android8String16C1EPKc(void **str16P, const char *str);

    //android::String16::~String16()
    extern void _ZN7android8String16D1Ev(void **str16P);

    //android::SensorManager::SensorManager(android::String16 const&)
    extern void _ZN7android13SensorManagerC1ERKNS_8String16E(void *sensorMgr, void **str16P);

    //android::SensorManager::createEventQueue(android::String8, int)
    extern void _ZN7android13SensorManager16createEventQueueENS_7String8Ei(void **retVal, void *sensorMgr, void **str8P, int mode);
	
	//void _ZN7android9SingletonINS_13SensorManagerEE9sInstanceE() { }
	//void _ZN7android9SingletonINS_13SensorManagerEE5sLockE() { }
	//void _ZN7android13SensorManagerC1Ev() { }
	//void _ZN7android13SensorManager16createEventQueueEv() { }
	void* _ZN7android9SingletonINS_13SensorManagerEE9sInstanceE = NULL;
	pthread_mutex_t _ZN7android9SingletonINS_13SensorManagerEE5sLockE = PTHREAD_MUTEX_INITIALIZER;

	void _ZN7android13SensorManagerC1Ev(void *sensorMgr) {
		void *string;

		_ZN7android8String16C1EPKc(&string, "gpsd");
		_ZN7android13SensorManagerC1ERKNS_8String16E(sensorMgr, &string);
		_ZN7android8String16D1Ev(&string);
	}

	void _ZN7android13SensorManager16createEventQueueEv(void **retVal, void *sensorMgr) {
		void *string;

		_ZN7android7String8C1EPKc(&string, "");
		_ZN7android13SensorManager16createEventQueueENS_7String8Ei(retVal, sensorMgr, &string, 0);
		_ZN7android7String8D1Ev(&string);
	}
}
