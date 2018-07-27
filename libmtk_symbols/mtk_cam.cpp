#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <malloc.h>
#include <pthread.h>

extern "C" {
	void* _ZN7android9SingletonINS_13SensorManagerEE9sInstanceE = NULL;
	pthread_mutex_t _ZN7android9SingletonINS_13SensorManagerEE5sLockE = PTHREAD_MUTEX_INITIALIZER;

	void _ZN7android13SensorManagerC1Ev(void *sensorMgr) { }

	void _ZN7android13SensorManager16createEventQueueEv(void **retVal, void *sensorMgr) { }
}
