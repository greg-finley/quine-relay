/* Automatically generated by wasm2c */
#ifndef QR_WAT_WASM_H_GENERATED_
#define QR_WAT_WASM_H_GENERATED_

#include <stdint.h>

#include "wasm-rt.h"

/* TODO(binji): only use stdint.h types in header */
#ifndef WASM_RT_CORE_TYPES_DEFINED
#define WASM_RT_CORE_TYPES_DEFINED
typedef uint8_t u8;
typedef int8_t s8;
typedef uint16_t u16;
typedef int16_t s16;
typedef uint32_t u32;
typedef int32_t s32;
typedef uint64_t u64;
typedef int64_t s64;
typedef float f32;
typedef double f64;
#endif

#ifdef __cplusplus
extern "C" {
#endif


/* import: 'wasi_snapshot_preview1' 'fd_write' */
extern u32 (*Z_wasi_snapshot_preview1Z_fd_write)(u32, u32, u32, u32);
void Z_QRZ2Ewat_init(void);
void Z_QRZ2Ewat_free(void);

/* export: 'memory' */
extern wasm_rt_memory_t (*Z_QRZ2EwatZ_memory);
/* export: '_start' */
extern void (*Z_QRZ2EwatZ__start)(void);

#ifdef __cplusplus
}
#endif

#endif  /* QR_WAT_WASM_H_GENERATED_ */
