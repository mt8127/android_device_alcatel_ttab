#include <ui/GraphicBufferMapper.h>
#include <ui/PixelFormat.h>
#include <ui/Rect.h>
#include <gui/BufferQueue.h>
#include <stdint.h>

extern "C" {
    void _ZN7android13SensorManager16getDefaultSensorEi() {}
    void _ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(
            void *(pthis), uint32_t inWidth, uint32_t inHeight, int inFormat,
            uint32_t inUsage, std::string requestorName);

    void _ZN7android13GraphicBufferC1Ejjij(void *(pthis), uint32_t inWidth, uint32_t inHeight, int inFormat, uint32_t inUsage) {
        _ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(
            pthis, inWidth, inHeight, inFormat, inUsage, "<Unknown>");
    }

	void _ZN7android11IDumpTunnel11asInterfaceERKNS_2spINS_7IBinderEEE() {}
	
	// android::BufferQueue::createBufferQueue(android::sp<android::IGraphicBufferProducer>*, android::sp<android::IGraphicBufferConsumer>*, android::sp<android::IGraphicBufferAlloc> const&)
	// android::BufferQueue::createBufferQueue(android::sp<android::IGraphicBufferProducer>*, android::sp<android::IGraphicBufferConsumer>*, bool)
	void _ZN7android11BufferQueue17createBufferQueueEPNS_2spINS_22IGraphicBufferProducerEEEPNS1_INS_22IGraphicBufferConsumerEEERKNS1_INS_19IGraphicBufferAllocEEE (android::sp<android::IGraphicBufferProducer>* outProducer,
            android::sp<android::IGraphicBufferConsumer>* outConsumer,
            void** allocator = NULL) {

		android::BufferQueue::createBufferQueue(outProducer, outConsumer, true);
	}
	
	
    void _ZN7android13GraphicBufferC1EjjijjjP13native_handleb(uint32_t, uint32_t, int32_t, uint32_t, uint32_t, uint32_t, native_handle_t*, bool);

    void _ZN7android13GraphicBufferC1EjjijjP13native_handleb(uint32_t inWidth, uint32_t inHeight, int32_t inFormat, uint32_t inUsage, uint32_t inStride, native_handle_t* inHandle, bool keepOwnership) {
        _ZN7android13GraphicBufferC1EjjijjjP13native_handleb(inWidth, inHeight, inFormat, 1, inUsage, inStride, inHandle, keepOwnership);
    }
}
