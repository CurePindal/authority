#define __tky_debug diag_log format ["***tky debug: %1 @ %2, fps = %3 & minfps =  %4", (__FILE__ select [26]) , __LINE__, diag_fps, diag_fpsmin];
#define __tky_starts diag_log format ["*** %1 starts"];