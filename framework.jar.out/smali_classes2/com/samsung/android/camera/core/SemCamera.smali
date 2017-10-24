.class public Lcom/samsung/android/camera/core/SemCamera;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core/SemCamera$Area;,
        Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;,
        Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;,
        Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;,
        Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;,
        Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;,
        Lcom/samsung/android/camera/core/SemCamera$CameraBusyRuntimeException;,
        Lcom/samsung/android/camera/core/SemCamera$CameraInfo;,
        Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException;,
        Lcom/samsung/android/camera/core/SemCamera$CameraNoResourceException;,
        Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;,
        Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;,
        Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$DualEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;,
        Lcom/samsung/android/camera/core/SemCamera$EventHandler;,
        Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;,
        Lcom/samsung/android/camera/core/SemCamera$Face;,
        Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;,
        Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;,
        Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;,
        Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;,
        Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;,
        Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;,
        Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;,
        Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;,
        Lcom/samsung/android/camera/core/SemCamera$PafResult;,
        Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$Parameters;,
        Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;,
        Lcom/samsung/android/camera/core/SemCamera$PictureCallback;,
        Lcom/samsung/android/camera/core/SemCamera$PostEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;,
        Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;,
        Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;,
        Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;,
        Lcom/samsung/android/camera/core/SemCamera$Size;,
        Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;,
        Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;,
        Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;,
        Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;,
        Lcom/samsung/android/camera/core/SemCamera$TransformData;,
        Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;,
        Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final AE_RESULT:I = 0xf351

.field private static final AUTO_LOW_LIGHT_DETECTION_CHANGED:I = 0xf231

.field private static final BATTERY_OVER_HEAT:I = 0x571

.field private static final BEAUTY_EYE_ENLARGE_LEVEL:I = 0x4a0

.field private static final BEAUTY_FACE_DISTORTION_COMPENSATION:I = 0x4a2

.field private static final BEAUTY_FACE_ENABLE_RELIGHT:I = 0x4a3

.field private static final BEAUTY_FACE_RELIGHT_DIRECTION:I = 0x4a5

.field private static final BEAUTY_FACE_RELIGHT_LEVEL:I = 0x4a4

.field private static final BEAUTY_FACE_RETOUCH_LEVEL:I = 0x49d

.field private static final BEAUTY_SHOT_CAMERA_MSG_PREVIEW_METADATA_FROM_HAL:I = 0xf152

.field private static final BEAUTY_SHOT_PROGRESS_RENDERING:I = 0xf151

.field private static final BEAUTY_SHOT_RELIGHT_TRANSFORM_DATA:I = 0xf153

.field private static final BEAUTY_SKIN_COLOR_LEVEL:I = 0x4a1

.field private static final BEAUTY_SLIM_FACE_LEVEL:I = 0x49f

.field private static final BRIGHTNESS_VALUE:I = 0xf352

.field private static final BURST_SHOT_CAPTURE:I = 0x48a

.field private static final BURST_SHOT_CAPTURING_PROGRESSED:I = 0xf091

.field private static final BURST_SHOT_CAPTURING_STOPPED:I = 0xf092

.field private static final BURST_SHOT_FILE_STRING:I = 0xf094

.field private static final BURST_SHOT_POSTVIEW_DATA:I = 0xf095

.field private static final BURST_SHOT_REQUEST_IMAGE:I = 0x489

.field private static final BURST_SHOT_SAVING_COMPLETED:I = 0xf093

.field private static final BURST_SHOT_SETUP:I = 0x48c

.field private static final BURST_SHOT_TERMINATE:I = 0x48b

.field private static final CAMERA_CMD_RESET_WB_CUSTOM_VALUE:I = 0x56f

.field private static final CAMERA_CMD_START_MOTION_PHOTO:I = 0x597

.field private static final CAMERA_CMD_START_QRCODE_DETECTION:I = 0x5c9

.field private static final CAMERA_CMD_STOP_MOTION_PHOTO:I = 0x598

.field private static final CAMERA_CMD_STOP_QRCODE_DETECTION:I = 0x5ca

.field public static final CAMERA_ERROR_EVICTED:I = 0x2

.field public static final CAMERA_ERROR_PREVIEWFRAME_TIMEOUT:I = 0x3e9

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_EXTRA_INFO_NOTIFY:I = 0xf401

.field private static final CAMERA_FACE_DETECTION_DMC_SW:I = 0x5

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_FACE_DETECTION_SW_ONE_EYE:I = 0x2

.field private static final CAMERA_FACE_DETECTION_SW_TWO_EYE:I = 0x3

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_ALL_MSGS:I = -0x1

.field private static final CAMERA_MSG_AUTO_PARAMETERS_NOTIFY:I = 0x20000

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_DEPTH_MAP_DATA:I = 0xf422

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FIRMWARE_NOTIFY:I = 0x80000

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_IRIS_DATA:I = 0x10000

.field private static final CAMERA_MSG_IRIS_PREVIEW_DATA:I = 0x8000

.field private static final CAMERA_MSG_MANUAL_FOCUS_NOTIFY:I = 0x100000

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHOT_END:I = 0x40000

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final CHANGE_MAIN_LCD:I = 0x570

.field private static final CHECK_MARKER_OF_SAMSUNG_DEFINED_CALLBACK_MSGS:I = 0xf000

.field private static final COMMON_CANCEL_TAKE_PICTURE:I = 0x5c0

.field private static final COMMON_SHOT_CANCEL_PICTURE_COMPLETED:I = 0xf411

.field private static final COMMON_SHOT_PREVIEW_STARTED:I = 0xf412

.field private static final COMMON_STOP_TAKE_PICTURE:I = 0x5bf

.field private static final DEVICE_ORIENTATION:I = 0x5f1

.field private static final DISTORTION_EFFECTS_SHOT_CAPTURE:I = 0x5ba

.field private static final DISTORTION_EFFECTS_SHOT_INFO:I = 0x5b8

.field private static final DISTORTION_EFFECTS_SHOT_SET_MODE:I = 0x5b9

.field private static final DRAMA_SHOT_CANCEL:I = 0x535

.field private static final DRAMA_SHOT_CAPTURING_PROGRESS:I = 0xf221

.field private static final DRAMA_SHOT_ERROR:I = 0xf223

.field private static final DRAMA_SHOT_INPUT_YUV_STRING:I = 0xf224

.field private static final DRAMA_SHOT_MODE:I = 0x536

.field private static final DRAMA_SHOT_PROGRESS_POSTPROCESSING:I = 0xf222

.field private static final DRAMA_SHOT_RESULT_YUV_STRING:I = 0xf225

.field private static final DRAMA_SHOT_START:I = 0x533

.field private static final DRAMA_SHOT_STOP:I = 0x534

.field private static final DRAMA_SHOT_STORAGE:I = 0x537

.field private static final DUAL_CAMERA_CAPTURE_STATUS_CHANGED:I = 0xf251

.field private static final DUAL_CAMERA_TRACKING_STATUS_CHANGED:I = 0xf253

.field private static final DUAL_MODE_SHOT_ASYNC_CAPTURE:I = 0x55e

.field private static final EFFECT_REAR_BOTTOM_FRONT_TOP:I = 0x0

.field private static final EFFECT_REAR_TOP_FRONT_BOTTOM:I = 0x1

.field private static final ERROR_ALREADY_EXISTS:I = 0x2

.field private static final ERROR_CAMERA_IN_USE:I = 0x7

.field private static final ERROR_DEPRECATED_HAL:I = 0x9

.field private static final ERROR_DISABLED:I = 0x6

.field private static final ERROR_DISCONNECTED:I = 0x4

.field private static final ERROR_ILLEGAL_ARGUMENT:I = 0x3

.field private static final ERROR_INVALID_OPERATION:I = 0xa

.field private static final ERROR_MAX_CAMERAS_IN_USE:I = 0x8

.field private static final ERROR_NO_RESOURCE:I = 0x63

.field private static final ERROR_PERMISSION_DENIED:I = 0x1

.field private static final ERROR_TIMED_OUT:I = 0x5

.field public static final EXTRA_INFO_TYPE_FLASH:I = 0x1

.field public static final EXTRA_INFO_TYPE_HDR:I = 0x2

.field public static final EXTRA_INFO_VALUE_DISABLE:I = 0x0

.field public static final EXTRA_INFO_VALUE_ENABLE:I = 0x1

.field public static final FOCUS_MODE_ALL_IN_FOCUS:I = 0x4

.field public static final FOCUS_MODE_OUT_FOCUS:I = 0x1

.field public static final FOCUS_MODE_OUT_FOCUS_FAST:I = 0x2

.field public static final FOCUS_MODE_REFOCUS:I = 0x3

.field private static final FOOD_SHOT_RESULT:I = 0xf041

.field private static final GESTURE_CONTROL_MODE:I = 0x541

.field private static final GOLF_SHOT_CAPTURED:I = 0xf195

.field private static final GOLF_SHOT_CREATING_RESULT_COMPLETED:I = 0xf193

.field private static final GOLF_SHOT_CREATING_RESULT_PROGRESS:I = 0xf192

.field private static final GOLF_SHOT_CREATING_RESULT_STARTED:I = 0xf191

.field private static final GOLF_SHOT_ERROR:I = 0xf196

.field private static final GOLF_SHOT_SAVE:I = 0x521

.field private static final GOLF_SHOT_SAVE_RESULT_PROGRESS:I = 0xf194

.field private static final GOLF_SHOT_START:I = 0x51f

.field private static final GOLF_SHOT_STOP:I = 0x520

.field private static final HAL_AE_AWB_LOCK_UNLOCK:I = 0x5dd

.field private static final HAL_AE_CONTROL:I = 0x661

.field private static final HAL_AE_POSITION:I = 0x65f

.field private static final HAL_AE_SIZE:I = 0x660

.field private static final HAL_BURST_SHOT_FPS_VALUE:I = 0x627

.field private static final HAL_CANCEL_AF_FOCUS_AREA:I = 0x611

.field private static final HAL_CAPTURE_END:I = 0x612

.field private static final HAL_DELETE_BURST_TAKE:I = 0x625

.field private static final HAL_DONE_CHK_DATALINE:I = 0xf002

.field private static final HAL_ENABLE_BRIGHTNESS_VALUE_CALLBACK:I = 0x70e

.field private static final HAL_ENABLE_BURSTSHOT_FPS_CALLBACK:I = 0x70f

.field private static final HAL_ENABLE_CURRENT_SET:I = 0x66b

.field private static final HAL_ENABLE_FLASH_AUTO_CALLBACK:I = 0x70a

.field private static final HAL_ENABLE_HDR_AUTO_CALLBACK:I = 0x70b

.field private static final HAL_ENABLE_IRIS_IR_DATA_CALLBACK:I = 0x727

.field private static final HAL_ENABLE_IRIS_PREVIEW_DATA_CALLBACK:I = 0x728

.field private static final HAL_ENABLE_LIGHT_CONDITION:I = 0x709

.field private static final HAL_ENABLE_MULTI_AF:I = 0x66d

.field private static final HAL_ENABLE_PAF_RESULT:I = 0x66c

.field private static final HAL_ENABLE_SCREEN_FLASH:I = 0x70d

.field private static final HAL_FACE_DETECT_LOCK_UNLOCK:I = 0x5de

.field private static final HAL_MULTI_INSTANCE_PREPARE_PREVIEW:I = 0x713

.field private static final HAL_MULTI_INSTANCE_STANDBY_PREVIEW:I = 0x714

.field private static final HAL_OBJECT_POSITION:I = 0x5df

.field private static final HAL_OBJECT_TRACKING_STARTSTOP:I = 0x5e0

.field private static final HAL_ON_AE_AWB:I = 0x6a4

.field private static final HAL_QUICK_VIEW_CANCEL:I = 0x632

.field private static final HAL_RECORDING_PAUSE:I = 0x6ba

.field private static final HAL_RECORDING_RESUME:I = 0x6b9

.field private static final HAL_SEND_FACE_ORIENTATION:I = 0x5fa

.field private static final HAL_SET_CAMERA_USAGE:I = 0x71d

.field private static final HAL_SET_DEFAULT_IMEI:I = 0x5e3

.field private static final HAL_SET_FOCUS_PEAKING:I = 0x731

.field private static final HAL_SET_FRONT_SENSOR_MIRROR:I = 0x5e6

.field private static final HAL_SET_LVB_RECORDING_MODE:I = 0x6c2

.field private static final HAL_SET_SAMSUNG_CAMERA:I = 0x5e4

.field private static final HAL_START_ANIMATED_PHOTO:I = 0x657

.field private static final HAL_START_BURST_TAKE:I = 0x623

.field private static final HAL_START_CONTINUOUS_AF:I = 0x60f

.field private static final HAL_START_FACEZOOM:I = 0x5fb

.field private static final HAL_START_PAF_CALLBACK:I = 0x672

.field private static final HAL_START_ZOOM:I = 0x67d

.field private static final HAL_STOP_ANIMATED_PHOTO:I = 0x658

.field private static final HAL_STOP_BURST_TAKE:I = 0x624

.field private static final HAL_STOP_CHK_DATALINE:I = 0x5e2

.field private static final HAL_STOP_CONTINUOUS_AF:I = 0x610

.field private static final HAL_STOP_FACEZOOM:I = 0x5fc

.field private static final HAL_STOP_PAF_CALLBACK:I = 0x673

.field private static final HAL_STOP_ZOOM:I = 0x67e

.field private static final HAL_TOUCH_AF_STARTSTOP:I = 0x5e1

.field private static final HAZE_REMOVAL_SHOT_PROGRESS_POSTPROCESSING:I = 0xf281

.field private static final HAZE_STRENGTH:I = 0x528

.field private static final HDR_PICTURE_MODE_CHANGE:I = 0x4f8

.field private static final HDR_SHOT_ALL_PROGRESS_COMPLETED:I = 0xf084

.field private static final HDR_SHOT_MODE_CHANGE:I = 0x4f7

.field private static final HDR_SHOT_RESULT_COMPLETED:I = 0xf083

.field private static final HDR_SHOT_RESULT_PROGRESS:I = 0xf082

.field private static final HDR_SHOT_RESULT_STARTED:I = 0xf081

.field private static final HISTOGRAM_DATA:I = 0xf261

.field private static final HISTOGRAM_SET_INCREMENT:I = 0x553

.field private static final HISTOGRAM_SET_SKIP_RATE:I = 0x554

.field private static final HISTOGRAM_START:I = 0x551

.field private static final HISTOGRAM_STOP:I = 0x552

.field private static final INTERACTIVE_SHOT_CAPTURE_PROGRESS:I = 0xf363

.field private static final INTERACTIVE_SHOT_DIRECTION_CHANGED:I = 0xf361

.field private static final INTERACTIVE_SHOT_DIRECTION_WARNING:I = 0xf362

.field private static final INTERACTIVE_SHOT_PROCESS_COMPLETE:I = 0xf365

.field private static final INTERACTIVE_SHOT_PROCESS_PROGRESS:I = 0xf364

.field private static final LIGHT_CONDITION_CHANGED:I = 0xf232

.field private static final LIGHT_CONDITION_ENABLE:I = 0x547

.field private static final LOW_LIGHT_SHOT_SET:I = 0x4f0

.field private static final MAGIC_SHOT_APPLICABLE_MODES:I = 0xf334

.field private static final MAGIC_SHOT_CANCEL:I = 0x58f

.field private static final MAGIC_SHOT_CAPTURE_PROGRESS:I = 0xf331

.field private static final MAGIC_SHOT_CAPTURING_STOPPED:I = 0xf335

.field private static final MAGIC_SHOT_PROCESS_COMPLETE:I = 0xf333

.field private static final MAGIC_SHOT_PROCESS_PROGRESS:I = 0xf332

.field private static final MAGIC_SHOT_START:I = 0x58d

.field private static final MAGIC_SHOT_STATE_BESTPHOTO:I = 0x1

.field private static final MAGIC_SHOT_STATE_PICACTION:I = 0x8

.field private static final MAGIC_SHOT_STATE_PICBEST:I = 0x2

.field private static final MAGIC_SHOT_STATE_PICLEAR:I = 0x4

.field private static final MAGIC_SHOT_STATE_PICMOTION:I = 0x10

.field private static final MAGIC_SHOT_STOP:I = 0x58e

.field private static final MAX_IRIS_FD_QUEUE_SIZE:I = 0x3

.field private static final METADATA_BURSTSHOT_FPS_VALUE:I = 0xf345

.field private static final METADATA_CURRENT_SET_DATA:I = 0xf342

.field private static final METADATA_MULTI_AF:I = 0xf344

.field private static final METADATA_OBJECT_TRACKING_AF:I = 0xf343

.field private static final METADATA_SINGLEPAF:I = 0xf341

.field public static final MOTION_PANORAMA_DIRECTION_DOWN:I = 0x8

.field public static final MOTION_PANORAMA_DIRECTION_LEFT:I = 0x2

.field public static final MOTION_PANORAMA_DIRECTION_RIGHT:I = 0x1

.field public static final MOTION_PANORAMA_DIRECTION_UP:I = 0x4

.field public static final MOTION_PANORAMA_ERROR_NO_DIRECTION:I = 0x1

.field public static final MOTION_PANORAMA_ERROR_REACHED_MAX_FRAME_COUNT:I = 0x3

.field public static final MOTION_PANORAMA_ERROR_STITCHING:I = 0x0

.field public static final MOTION_PANORAMA_ERROR_TRACING:I = 0x2

.field public static final MOTION_PANORAMA_ERROR_UNKNOWN:I = 0x4

.field private static final MOTION_PANORAMA_SHOT_CANCEL:I = 0x5d5

.field private static final MOTION_PANORAMA_SHOT_CAPTURED:I = 0xf384

.field private static final MOTION_PANORAMA_SHOT_CAPTURED_MAX_FRAMES:I = 0xf38a

.field private static final MOTION_PANORAMA_SHOT_CAPTURE_RESULT:I = 0xf385

.field private static final MOTION_PANORAMA_SHOT_DIR:I = 0xf386

.field private static final MOTION_PANORAMA_SHOT_ENABLE_MOTION:I = 0x5d6

.field private static final MOTION_PANORAMA_SHOT_ERR:I = 0xf381

.field private static final MOTION_PANORAMA_SHOT_LIVE_PREVIEW_DATA:I = 0xf388

.field private static final MOTION_PANORAMA_SHOT_PROGRESS_STITCHING:I = 0xf383

.field private static final MOTION_PANORAMA_SHOT_RECT_CENTER_POINT:I = 0xf382

.field private static final MOTION_PANORAMA_SHOT_SLOW_MOVE:I = 0xf38b

.field private static final MOTION_PANORAMA_SHOT_START:I = 0x5d3

.field private static final MOTION_PANORAMA_SHOT_STOP:I = 0x5d4

.field private static final MOTION_PANORAMA_SHOT_THUMBNAIL_DATA:I = 0xf387

.field private static final MOTION_PANORAMA_SHOT_UIIMAGE_DATA:I = 0xf389

.field private static final MULTI_FRAME_SHOT_CAPTURING_STOPPED:I = 0xf122

.field private static final MULTI_FRAME_SHOT_PROGRESS_POSTPROCESSING:I = 0xf123

.field private static final MULTI_FRAME_SHOT_TERMINATE:I = 0x4ef

.field private static final NO_ERROR:I = 0x0

.field public static final OUTFOCUS_ERR_AF:I = -0x1

.field public static final OUTFOCUS_ERR_INF:I = -0x2

.field public static final OUTFOCUS_ERR_NONE:I = 0x0

.field public static final OUTFOCUS_ERR_SAVE_DATA:I = -0x4

.field public static final OUTFOCUS_ERR_SEGMENTATION:I = -0x3

.field private static final OUTFOCUS_SHOT_CAPTURE_PROGRESS:I = 0xf322

.field private static final OUTFOCUS_SHOT_PROCESS_COMPLETE:I = 0xf323

.field private static final OUTFOCUS_SHOT_PROCESS_PROGRESS:I = 0xf321

.field public static final PANORAMA_DIRECTION_DOWN:I = 0x8

.field public static final PANORAMA_DIRECTION_DOWN_LEFT:I = 0xa

.field public static final PANORAMA_DIRECTION_DOWN_RIGHT:I = 0x9

.field public static final PANORAMA_DIRECTION_LEFT:I = 0x2

.field public static final PANORAMA_DIRECTION_RIGHT:I = 0x1

.field public static final PANORAMA_DIRECTION_UP:I = 0x4

.field public static final PANORAMA_DIRECTION_UP_LEFT:I = 0x6

.field public static final PANORAMA_DIRECTION_UP_RIGHT:I = 0x5

.field private static final PANORAMA_SHOT_CANCEL:I = 0x45a

.field private static final PANORAMA_SHOT_CAPTURED:I = 0xf025

.field private static final PANORAMA_SHOT_CAPTURED_MAX_FRAMES:I = 0xf029

.field private static final PANORAMA_SHOT_CAPTURED_NEW:I = 0xf023

.field private static final PANORAMA_SHOT_DIR:I = 0xf026

.field private static final PANORAMA_SHOT_ERR:I = 0xf021

.field private static final PANORAMA_SHOT_FINALIZE:I = 0x459

.field private static final PANORAMA_SHOT_LIVE_PREVIEW_DATA:I = 0xf028

.field private static final PANORAMA_SHOT_LOW_RESOLUTION_DATA:I = 0xf027

.field private static final PANORAMA_SHOT_PROGRESS_STITCHING:I = 0xf024

.field private static final PANORAMA_SHOT_RECT_CENTER_POINT:I = 0xf022

.field private static final PANORAMA_SHOT_SLOW_MOVE:I = 0xf02a

.field private static final PANORAMA_SHOT_START:I = 0x457

.field private static final PANORAMA_SHOT_STOP:I = 0x458

.field private static final PREVIEW_CALLBACK_FOR_GL_EFFECT:I = 0xf203

.field private static final PRO_SUGGEST_SEND_LAST_PREVIEW_FRAME:I = 0xf161

.field public static final RECORDING_MODE_PAUSE:I = 0x3

.field public static final RECORDING_MODE_RESUME:I = 0x2

.field public static final RECORDING_MODE_START:I = 0x0

.field public static final RECORDING_MODE_STOP:I = 0x1

.field private static final REQUEST_NOTIFY_PREVIEW_STARTED:I = 0x5c1

.field private static final SAMSUNG_BURST_PANORAMA_SHOT_COMPRESSED_IMAGE:I = 0xf291

.field private static final SAMSUNG_SHOT_COMPRESSED_IMAGE:I = 0xf201

.field private static final SAMSUNG_SHOT_POSTVIEW_FRAME:I = 0xf202

.field private static final SAMSUNG_WIDE_SELFIE_SHOT_COMPRESSED_IMAGE:I = 0xf312

.field private static final SCREEN_FLASH_TAKEPICTURE_COMPLETED:I = 0xf421

.field private static final SECIMAGING_CALLBACK_STRING:I = 0xf252

.field private static final SEC_IMAGE_EFFECT_SHOT_CREATING_RESULT_COMPLETED:I = 0xf243

.field private static final SEC_IMAGE_EFFECT_SHOT_CREATING_RESULT_PROGRESS:I = 0xf242

.field private static final SEC_IMAGE_EFFECT_SHOT_CREATING_RESULT_STARTED:I = 0xf241

.field public static final SEMCAMERA_VERSION:I = 0x961

.field private static final SET_DISPLAY_ORIENTATION_MIRROR:I = 0x5e7

.field private static final SET_DUAL_MODE_SYNC:I = 0x55d

.field private static final SET_DUAL_TRACKING_COORDINATE:I = 0x55f

.field private static final SET_DUAL_TRACKING_MODE:I = 0x560

.field private static final SET_EFFECT_COORDINATE:I = 0x50d

.field private static final SET_EFFECT_EXTERNAL_MODE:I = 0x511

.field private static final SET_EFFECT_FILTER:I = 0x50b

.field private static final SET_EFFECT_LAYER_ORDER:I = 0x50e

.field private static final SET_EFFECT_MODE:I = 0x607

.field private static final SET_EFFECT_OPTION:I = 0x50c

.field private static final SET_EFFECT_ORIENTATION:I = 0x510

.field private static final SET_EFFECT_SAVE_AS_FLIPPED:I = 0x512

.field private static final SET_EFFECT_VISIBLE:I = 0x50f

.field private static final SET_EFFECT_VISIBLE_FOR_RECORDING:I = 0x548

.field private static final SET_ENABLE_SHUTTER_SOUND:I = 0x605

.field private static final SET_MULTI_TRACK_MODE:I = 0x572

.field private static final SET_PREVIEW_CALLBACK_FOR_GL_EFFECT:I = 0x51a

.field private static final SET_SECIMAGING_RECORDING_MODE:I = 0x573

.field private static final SET_SEED_POINT_TO_DETECT_FOOD_REGION:I = 0x579

.field private static final SET_STICKER_ENABLED:I = 0x5ab

.field private static final SET_WATERMARK_ENABLED:I = 0x5a1

.field private static final SET_WATERMARK_POSITION:I = 0x5a2

.field private static final SHOT_3DPANORAMA:I = 0x40d

.field private static final SHOT_3DTOUR:I = 0x418

.field private static final SHOT_ANIMATED_SCENE:I = 0x40e

.field private static final SHOT_AQUA_SCENE:I = 0x412

.field private static final SHOT_AUTO:I = 0x406

.field private static final SHOT_AUTO_NIGHT:I = 0x3fe

.field private static final SHOT_BEAUTY:I = 0x3ef

.field private static final SHOT_BESTFACE:I = 0x401

.field private static final SHOT_BESTPHOTO:I = 0x400

.field private static final SHOT_BUDDY_PHOTOSHARING:I = 0x3fa

.field private static final SHOT_BURST:I = 0x3f9

.field private static final SHOT_CARTOON:I = 0x3f5

.field private static final SHOT_CHILDREN:I = 0x431

.field private static final SHOT_CLIP_MOVIE:I = 0x42d

.field private static final SHOT_CONTINUOUS:I = 0x3e9

.field private static final SHOT_COUPLE:I = 0x40c

.field private static final SHOT_DISTORTION_EFFECTS:I = 0x421

.field private static final SHOT_DRAMA:I = 0x407

.field private static final SHOT_DUAL:I = 0x417

.field private static final SHOT_DUAL_PORTRAIT:I = 0x438

.field private static final SHOT_FACESHOT:I = 0x3f8

.field private static final SHOT_FASTMOTION:I = 0x428

.field private static final SHOT_FOOD:I = 0x42c

.field private static final SHOT_GIFMAKER:I = 0x422

.field private static final SHOT_GOLF:I = 0x404

.field private static final SHOT_HAZE:I = 0x419

.field private static final SHOT_HDR:I = 0x3f6

.field private static final SHOT_HYPER_MOTION:I = 0x432

.field private static final SHOT_INTERACTIVE:I = 0x426

.field private static final SHOT_INTERVAL:I = 0x424

.field private static final SHOT_MAGIC:I = 0x416

.field private static final SHOT_MODELING3D:I = 0x42a

.field private static final SHOT_MOTION_PANORAMA:I = 0x430

.field private static final SHOT_NIGHT:I = 0x3ff

.field private static final SHOT_NIGHT_SCENE:I = 0x40f

.field private static final SHOT_OUTFOCUS:I = 0x415

.field private static final SHOT_PANORAMA:I = 0x3ea

.field private static final SHOT_PRO:I = 0x423

.field private static final SHOT_PRODUCT_SEARCH:I = 0x437

.field private static final SHOT_PROGRAM:I = 0x409

.field private static final SHOT_PRO_LITE:I = 0x433

.field private static final SHOT_SECFACE_INTERFACE:I = 0x411

.field private static final SHOT_SELFIE:I = 0x41f

.field private static final SHOT_SELFIE_ALARM:I = 0x420

.field private static final SHOT_SHARESHOT:I = 0x3f7

.field private static final SHOT_SINGLE:I = 0x3e8

.field private static final SHOT_SINGLE_EFFECT:I = 0x42f

.field private static final SHOT_SLOWMOTION:I = 0x427

.field private static final SHOT_SMILE:I = 0x3eb

.field private static final SHOT_SNAPMOVIE:I = 0x425

.field private static final SHOT_SPORTS_SCENE:I = 0x410

.field private static final SHOT_STORY:I = 0x40b

.field private static final SHOT_SUPER_RESOLUTION:I = 0x429

.field private static final SHOT_TAG:I = 0x42b

.field private static final SHOT_THEME:I = 0x408

.field private static final SHOT_WIDE_MOTION_SELFIE:I = 0x436

.field private static final SHOT_WIDE_SELFIE:I = 0x41c

.field private static final SHOT_WIDE_SELFIE_LITE:I = 0x435

.field public static final SHUTTER_SOUND_AT_SHUTTER_CALLBACK:I = 0x2

.field public static final SHUTTER_SOUND_AT_TAKE_PICTURE:I = 0x1

.field public static final SHUTTER_SOUND_DISABLE:I = 0x0

.field private static final SINGLE_SHOT_BRACKET_NEXT_SHOT_READY:I = 0xf273

.field private static final SINGLE_SHOT_ERROR:I = 0xf272

.field private static final SINGLE_SHOT_QRCODE_DETECT:I = 0xf274

.field private static final SINGLE_SHOT_QRCODE_DETECT_ERR:I = 0xf275

.field private static final SINGLE_SHOT_RAW_IMAGE_STRING:I = 0xf271

.field private static final SLOW_MOTION_EVENT_RESULT:I = 0xf051

.field private static final SMART_FILTER_PARAMETERS_CHANGED:I = 0xf431

.field private static final SMILE_SHOT_DETECTION_REINIT:I = 0x44f

.field private static final SMILE_SHOT_DETECTION_START:I = 0x44d

.field private static final SMILE_SHOT_DETECTION_STOP:I = 0x44e

.field private static final START_SMART_FILTER:I = 0x529

.field private static final STICKER_FACE_ALIGNMENT_DATA:I = 0xf141

.field private static final STOP_SMART_FILTER:I = 0x52a

.field private static final TAG:Ljava/lang/String; = "SemCamera-JNI-Java"

.field private static final TAKEPICTURE_FLIP_PHOTO:I = 0x574

.field private static final THEME_SHOT_CAPTURE:I = 0x53f

.field private static final THEME_SHOT_INFO:I = 0x53e

.field private static final THEME_SHOT_MASK_SET:I = 0x53d

.field public static final USAGE_NATIVE_CAMERA_APP:I = 0x0

.field private static final WIDE_MOTION_SELFIE_SHOT_BEAUTY_LEVEL:I = 0x5da

.field private static final WIDE_MOTION_SELFIE_SHOT_CANCEL:I = 0x5d9

.field private static final WIDE_MOTION_SELFIE_SHOT_CAPTURED:I = 0xf395

.field private static final WIDE_MOTION_SELFIE_SHOT_CAPTURED_MAX_FRAMES:I = 0xf399

.field private static final WIDE_MOTION_SELFIE_SHOT_CAPTURED_NEW:I = 0xf393

.field private static final WIDE_MOTION_SELFIE_SHOT_DIR:I = 0xf396

.field private static final WIDE_MOTION_SELFIE_SHOT_ERR:I = 0xf391

.field private static final WIDE_MOTION_SELFIE_SHOT_LIVE_PREVIEW_DATA:I = 0xf398

.field private static final WIDE_MOTION_SELFIE_SHOT_LOW_RESOLUTION_DATA:I = 0xf397

.field private static final WIDE_MOTION_SELFIE_SHOT_MOTION_ENABLED:I = 0x5db

.field private static final WIDE_MOTION_SELFIE_SHOT_MOVE_SLOWLY:I = 0xf39a

.field private static final WIDE_MOTION_SELFIE_SHOT_NEXT_CAPTURE_POSITION:I = 0xf39b

.field private static final WIDE_MOTION_SELFIE_SHOT_PROCESS_COMPLETE:I = 0xf39d

.field private static final WIDE_MOTION_SELFIE_SHOT_PROGRESS_STITCHING:I = 0xf394

.field private static final WIDE_MOTION_SELFIE_SHOT_RECT_CENTER_POINT:I = 0xf392

.field private static final WIDE_MOTION_SELFIE_SHOT_SINGLE_CAPTURE_DONE:I = 0xf39c

.field private static final WIDE_MOTION_SELFIE_SHOT_START:I = 0x5d7

.field private static final WIDE_MOTION_SELFIE_SHOT_STOP:I = 0x5d8

.field private static final WIDE_SELFIE_SHOT_BEAUTY_LEVEL:I = 0x5bc

.field private static final WIDE_SELFIE_SHOT_CANCEL:I = 0x5b7

.field private static final WIDE_SELFIE_SHOT_CAPTURED:I = 0xf305

.field private static final WIDE_SELFIE_SHOT_CAPTURED_MAX_FRAMES:I = 0xf309

.field private static final WIDE_SELFIE_SHOT_CAPTURED_NEW:I = 0xf303

.field private static final WIDE_SELFIE_SHOT_DIR:I = 0xf306

.field private static final WIDE_SELFIE_SHOT_ERR:I = 0xf301

.field private static final WIDE_SELFIE_SHOT_LIVE_PREVIEW_DATA:I = 0xf308

.field private static final WIDE_SELFIE_SHOT_LOW_RESOLUTION_DATA:I = 0xf307

.field private static final WIDE_SELFIE_SHOT_NEXT_CAPTURE_POSITION:I = 0xf310

.field private static final WIDE_SELFIE_SHOT_PROGRESS_STITCHING:I = 0xf304

.field private static final WIDE_SELFIE_SHOT_RECT_CENTER_POINT:I = 0xf302

.field private static final WIDE_SELFIE_SHOT_SINGLE_CAPTURE_DONE:I = 0xf311

.field private static final WIDE_SELFIE_SHOT_SLOW_MOVE:I = 0xf30a

.field private static final WIDE_SELFIE_SHOT_START:I = 0x5b5

.field private static final WIDE_SELFIE_SHOT_STOP:I = 0x5b6


# instance fields
.field private final irisIrLock:Ljava/util/concurrent/locks/Lock;

.field private final irisPreviewLock:Ljava/util/concurrent/locks/Lock;

.field private mAutoExposureCallback:Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

.field private mAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

.field private mBeautyEventListener:Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

.field private mBrightnessValueCallback:Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

.field private mBurstEventListener:Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

.field private mBurstShotFpsCallback:Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

.field private mCameraSensorDataListener:Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

.field private mCommonEventListener:Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

.field private mDepthMapEventListener:Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

.field private mDualEventListener:Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

.field private mErrorCallback:Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

.field private mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

.field private mExtraInfoListener:Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

.field private mFoodShotEventListener:Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

.field private mHardwareFaceDetectionListener:Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

.field private mHazeRemovalShotEventListener:Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

.field private mHdrEventListener:Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

.field private mImageEffectEventListener:Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

.field private mInteractiveShotEventListener:Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

.field private mIrisDataCallback:Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

.field private mIrisIrCallbackEnabled:Z

.field mIrisIrQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mIrisPreviewCallbackEnabled:Z

.field mIrisPreviewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mJpegCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

.field private mLightConditionChangedListener:Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

.field private mMotionPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

.field private mMultiAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

.field private mMultiFrameEventListener:Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

.field private mNativeContext:J

.field private mObjectTrackingAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

.field private mOneShot:Z

.field private mPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

.field private mPhaseAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

.field private mPostEventListener:Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

.field private mPostviewCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

.field private mPreviewCallback:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

.field private mPreviewCallbackForGLEffect:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

.field private mPreviewCallbackTimeStamp:Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

.field private mQrCodeDetectionEventListener:Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

.field private mRawImageCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

.field private mRelightEventListener:Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

.field private mScreenFlashEventListener:Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

.field private mSelectiveFocusEventListener:Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

.field private mShotAndMoreEventListener:Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

.field private mShutterCallback:Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

.field private mSlowMotionEventListener:Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

.field private mSmartFilterListener:Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

.field private mStickerEventListener:Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

.field private mUsingPreviewAllocation:Z

.field private mWideMotionSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

.field private mWideSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

.field private mWithBuffer:Z

.field private mZoomListener:Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mCameraSensorDataListener:Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mCommonEventListener:Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mDepthMapEventListener:Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mDualEventListener:Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mErrorCallback:Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mExtraInfoListener:Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/camera/core/SemCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceListener:Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mFoodShotEventListener:Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mHardwareFaceDetectionListener:Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoExposureCallback:Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mHazeRemovalShotEventListener:Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mHdrEventListener:Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mImageEffectEventListener:Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mInteractiveShotEventListener:Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisDataCallback:Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/camera/core/SemCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrCallbackEnabled:Z

    return v0
.end method

.method static synthetic -get26(Lcom/samsung/android/camera/core/SemCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewCallbackEnabled:Z

    return v0
.end method

.method static synthetic -get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mJpegCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic -get28(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mLightConditionChangedListener:Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    return-object v0
.end method

.method static synthetic -get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mMotionPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic -get30(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    return-object v0
.end method

.method static synthetic -get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiFrameEventListener:Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    return-object v0
.end method

.method static synthetic -get32(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mObjectTrackingAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    return-object v0
.end method

.method static synthetic -get33(Lcom/samsung/android/camera/core/SemCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mOneShot:Z

    return v0
.end method

.method static synthetic -get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    return-object v0
.end method

.method static synthetic -get35(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mPhaseAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    return-object v0
.end method

.method static synthetic -get36(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostEventListener:Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    return-object v0
.end method

.method static synthetic -get37(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostviewCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic -get38(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallback:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    return-object v0
.end method

.method static synthetic -get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallbackForGLEffect:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get40(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallbackTimeStamp:Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

    return-object v0
.end method

.method static synthetic -get41(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mQrCodeDetectionEventListener:Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    return-object v0
.end method

.method static synthetic -get42(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mRawImageCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic -get43(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mRelightEventListener:Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    return-object v0
.end method

.method static synthetic -get44(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mScreenFlashEventListener:Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    return-object v0
.end method

.method static synthetic -get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mSelectiveFocusEventListener:Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    return-object v0
.end method

.method static synthetic -get46(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mShotAndMoreEventListener:Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    return-object v0
.end method

.method static synthetic -get47(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mShutterCallback:Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    return-object v0
.end method

.method static synthetic -get48(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mSlowMotionEventListener:Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    return-object v0
.end method

.method static synthetic -get49(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mSmartFilterListener:Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusMoveCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic -get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mStickerEventListener:Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    return-object v0
.end method

.method static synthetic -get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideMotionSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    return-object v0
.end method

.method static synthetic -get52(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    return-object v0
.end method

.method static synthetic -get53(Lcom/samsung/android/camera/core/SemCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic -get54(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mZoomListener:Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mBeautyEventListener:Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mBrightnessValueCallback:Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstEventListener:Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstShotFpsCallback:Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallback:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallbackForGLEffect:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/camera/core/SemCamera;ZZZ)V
    .locals 0
    .param p1, "installed"    # Z
    .param p2, "manualBuffer"    # Z
    .param p3, "noDisable"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core/SemCamera;->setHasPreviewCallback(ZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6252
    const-string/jumbo v0, "semcamera_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrCallbackEnabled:Z

    .line 209
    iput-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewCallbackEnabled:Z

    .line 220
    iput-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    .line 241
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    .line 1139
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    .line 1238
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mMotionPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    .line 1321
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    .line 1398
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideMotionSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    .line 1435
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mQrCodeDetectionEventListener:Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    .line 1508
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mCommonEventListener:Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    .line 1533
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostEventListener:Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    .line 1556
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mScreenFlashEventListener:Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    .line 1600
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstEventListener:Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    .line 1645
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mHdrEventListener:Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    .line 1673
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiFrameEventListener:Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    .line 1703
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mHazeRemovalShotEventListener:Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    .line 1828
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mBeautyEventListener:Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    .line 1855
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mRelightEventListener:Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    .line 1883
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mStickerEventListener:Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    .line 1907
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mLightConditionChangedListener:Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    .line 1938
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mDualEventListener:Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    .line 1965
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mImageEffectEventListener:Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    .line 2011
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mSelectiveFocusEventListener:Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    .line 2055
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mShotAndMoreEventListener:Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    .line 2108
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mInteractiveShotEventListener:Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    .line 2137
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mFoodShotEventListener:Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    .line 2168
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mDepthMapEventListener:Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    .line 2207
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mSlowMotionEventListener:Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    .line 2281
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPhaseAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    .line 2317
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    .line 2360
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mObjectTrackingAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    .line 2429
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mCameraSensorDataListener:Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    .line 2452
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoExposureCallback:Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    .line 2474
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mBrightnessValueCallback:Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    .line 2498
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstShotFpsCallback:Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    .line 3074
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    .line 3075
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    .line 6289
    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mSmartFilterListener:Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    .line 2803
    return-void
.end method

.method private constructor <init>(II)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrCallbackEnabled:Z

    .line 209
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewCallbackEnabled:Z

    .line 220
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    .line 221
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 240
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    .line 241
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    .line 1139
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    .line 1238
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mMotionPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    .line 1321
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    .line 1398
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideMotionSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    .line 1435
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mQrCodeDetectionEventListener:Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    .line 1508
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mCommonEventListener:Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    .line 1533
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostEventListener:Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    .line 1556
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mScreenFlashEventListener:Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    .line 1600
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstEventListener:Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    .line 1645
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mHdrEventListener:Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    .line 1673
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiFrameEventListener:Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    .line 1703
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mHazeRemovalShotEventListener:Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    .line 1828
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mBeautyEventListener:Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    .line 1855
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mRelightEventListener:Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    .line 1883
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mStickerEventListener:Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    .line 1907
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mLightConditionChangedListener:Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    .line 1938
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mDualEventListener:Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    .line 1965
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mImageEffectEventListener:Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    .line 2011
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mSelectiveFocusEventListener:Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    .line 2055
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mShotAndMoreEventListener:Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    .line 2108
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mInteractiveShotEventListener:Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    .line 2137
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mFoodShotEventListener:Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    .line 2168
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mDepthMapEventListener:Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    .line 2207
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mSlowMotionEventListener:Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    .line 2281
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mPhaseAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    .line 2317
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    .line 2360
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mObjectTrackingAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    .line 2429
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mCameraSensorDataListener:Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    .line 2452
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoExposureCallback:Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    .line 2474
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mBrightnessValueCallback:Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    .line 2498
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstShotFpsCallback:Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    .line 3074
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    .line 3075
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    .line 6289
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mSmartFilterListener:Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    .line 2655
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->cameraInitVersion(IILandroid/os/Looper;Z)I

    move-result v0

    .line 2656
    .local v0, "err":I
    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2657
    sget v1, Landroid/system/OsConstants;->EACCES:I

    neg-int v1, v1

    if-ne v0, v1, :cond_0

    .line 2658
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2659
    :cond_0
    sget v1, Landroid/system/OsConstants;->ENODEV:I

    neg-int v1, v1

    if-ne v0, v1, :cond_1

    .line 2660
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2661
    :cond_1
    if-ne v0, v3, :cond_2

    .line 2662
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No permission to open camera device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2663
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2664
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the input arguments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2666
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 2667
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera device currently not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2668
    :cond_4
    if-ne v0, v3, :cond_5

    .line 2669
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No permission to open camera"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2670
    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 2671
    new-instance v1, Lcom/samsung/android/camera/core/SemCamera$CameraBusyRuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraBusyRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2673
    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 2674
    new-instance v1, Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2676
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 2677
    new-instance v1, Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2679
    :cond_8
    const/16 v1, 0x63

    if-ne v0, v1, :cond_9

    .line 2680
    new-instance v1, Lcom/samsung/android/camera/core/SemCamera$CameraNoResourceException;

    const-string/jumbo v2, "Camera initialization failed because the camera resource was already used"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraNoResourceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2684
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2654
    :cond_a
    return-void
.end method

.method constructor <init>(ILandroid/os/Looper;Z)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "_looper"    # Landroid/os/Looper;
    .param p3, "halsetting"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrCallbackEnabled:Z

    .line 209
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewCallbackEnabled:Z

    .line 220
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    .line 221
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 240
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    .line 241
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    .line 1139
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    .line 1238
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mMotionPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    .line 1321
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    .line 1398
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideMotionSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    .line 1435
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mQrCodeDetectionEventListener:Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    .line 1508
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mCommonEventListener:Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    .line 1533
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostEventListener:Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    .line 1556
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mScreenFlashEventListener:Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    .line 1600
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstEventListener:Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    .line 1645
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mHdrEventListener:Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    .line 1673
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiFrameEventListener:Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    .line 1703
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mHazeRemovalShotEventListener:Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    .line 1828
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mBeautyEventListener:Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    .line 1855
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mRelightEventListener:Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    .line 1883
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mStickerEventListener:Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    .line 1907
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mLightConditionChangedListener:Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    .line 1938
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mDualEventListener:Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    .line 1965
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mImageEffectEventListener:Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    .line 2011
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mSelectiveFocusEventListener:Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    .line 2055
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mShotAndMoreEventListener:Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    .line 2108
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mInteractiveShotEventListener:Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    .line 2137
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mFoodShotEventListener:Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    .line 2168
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mDepthMapEventListener:Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    .line 2207
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mSlowMotionEventListener:Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    .line 2281
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mPhaseAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    .line 2317
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    .line 2360
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mObjectTrackingAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    .line 2429
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mCameraSensorDataListener:Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    .line 2452
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoExposureCallback:Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    .line 2474
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mBrightnessValueCallback:Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    .line 2498
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstShotFpsCallback:Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    .line 3074
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    .line 3075
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    .line 6289
    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mSmartFilterListener:Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    .line 2751
    const-string/jumbo v1, "SemCamera-JNI-Java"

    const-string/jumbo v2, "Semcamera Version is 2401"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core/SemCamera;->cameraInitNormal(ILandroid/os/Looper;Z)I

    move-result v0

    .line 2753
    .local v0, "err":I
    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2754
    sget v1, Landroid/system/OsConstants;->EACCES:I

    neg-int v1, v1

    if-ne v0, v1, :cond_0

    .line 2755
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2756
    :cond_0
    sget v1, Landroid/system/OsConstants;->ENODEV:I

    neg-int v1, v1

    if-ne v0, v1, :cond_1

    .line 2757
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2758
    :cond_1
    if-ne v0, v3, :cond_2

    .line 2759
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No permission to open camera device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2760
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2761
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the input arguments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2763
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 2764
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera device currently not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2765
    :cond_4
    if-ne v0, v3, :cond_5

    .line 2766
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No permission to open camera"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2767
    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 2768
    new-instance v1, Lcom/samsung/android/camera/core/SemCamera$CameraBusyRuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraBusyRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2770
    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 2771
    new-instance v1, Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2773
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 2774
    new-instance v1, Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2776
    :cond_8
    const/16 v1, 0x63

    if-ne v0, v1, :cond_9

    .line 2777
    new-instance v1, Lcom/samsung/android/camera/core/SemCamera$CameraNoResourceException;

    const-string/jumbo v2, "Camera initialization failed because the camera resource was already used"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraNoResourceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2781
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2750
    :cond_a
    return-void
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILcom/samsung/android/camera/core/SemCamera$CameraInfo;)V
.end method

.method private native _setOutputFile(Ljava/io/FileDescriptor;)V
.end method

.method private native _setOutputFileArray([Ljava/io/FileDescriptor;I)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .prologue
    .line 3435
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    .line 3436
    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 3437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3437
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3441
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->_addCallbackBuffer([BI)V

    .line 3432
    return-void
.end method

.method private cameraInitNormal(ILandroid/os/Looper;Z)I
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "_looper"    # Landroid/os/Looper;
    .param p3, "halsetting"    # Z

    .prologue
    .line 2724
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/camera/core/SemCamera;->cameraInitVersion(IILandroid/os/Looper;Z)I

    move-result v0

    return v0
.end method

.method private cameraInitVersion(IILandroid/os/Looper;Z)I
    .locals 6
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I
    .param p3, "_looper"    # Landroid/os/Looper;
    .param p4, "halsetting"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2690
    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mShutterCallback:Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    .line 2691
    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mRawImageCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .line 2692
    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mJpegCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .line 2693
    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallback:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .line 2694
    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallbackForGLEffect:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .line 2695
    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallbackTimeStamp:Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

    .line 2696
    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostviewCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .line 2697
    iput-boolean v5, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    .line 2698
    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mZoomListener:Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    .line 2701
    if-eqz p3, :cond_2

    .line 2703
    new-instance v3, Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    invoke-direct {v3, p0, p0, p3}, Lcom/samsung/android/camera/core/SemCamera$EventHandler;-><init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    .line 2712
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2713
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_0

    const-string/jumbo v1, "android"

    .line 2715
    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3, p1, p2, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    move-result v2

    .line 2716
    .local v2, "res":I
    if-nez v2, :cond_1

    .line 2717
    if-eqz p4, :cond_1

    const/16 v3, 0x5e4

    invoke-virtual {p0, v3, v5, v5}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 2719
    :cond_1
    return v2

    .line 2704
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "res":I
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_3

    .line 2705
    new-instance v3, Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    invoke-direct {v3, p0, p0, v0}, Lcom/samsung/android/camera/core/SemCamera$EventHandler;-><init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    goto :goto_0

    .line 2706
    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2707
    new-instance v3, Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    invoke-direct {v3, p0, p0, v0}, Lcom/samsung/android/camera/core/SemCamera$EventHandler;-><init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    goto :goto_0

    .line 2709
    :cond_4
    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    goto :goto_0
.end method

.method public static checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    .prologue
    const/4 v0, 0x0

    .line 2790
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraInfo(ILcom/samsung/android/camera/core/SemCamera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    .prologue
    .line 318
    invoke-static {p0, p1}, Lcom/samsung/android/camera/core/SemCamera;->_getCameraInfo(ILcom/samsung/android/camera/core/SemCamera$CameraInfo;)V

    .line 319
    const-string/jumbo v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 320
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 322
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v2

    .line 331
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native getNumberOfCameras()I
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Lcom/samsung/android/camera/core/SemCamera;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2590
    invoke-static {}, Lcom/samsung/android/camera/core/SemCamera;->getNumberOfCameras()I

    move-result v2

    .line 2591
    .local v2, "numberOfCameras":I
    new-instance v0, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;-><init>()V

    .line 2592
    .local v0, "cameraInfo":Lcom/samsung/android/camera/core/SemCamera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2593
    invoke-static {v1, v0}, Lcom/samsung/android/camera/core/SemCamera;->getCameraInfo(ILcom/samsung/android/camera/core/SemCamera$CameraInfo;)V

    .line 2594
    iget v3, v0, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 2595
    new-instance v3, Lcom/samsung/android/camera/core/SemCamera;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v5, v4}, Lcom/samsung/android/camera/core/SemCamera;-><init>(ILandroid/os/Looper;Z)V

    return-object v3

    .line 2592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2598
    :cond_1
    return-object v5
.end method

.method public static open(I)Lcom/samsung/android/camera/core/SemCamera;
    .locals 3
    .param p0, "cameraId"    # I

    .prologue
    .line 2542
    const-string/jumbo v0, "SemCamera-JNI-Java"

    const-string/jumbo v1, "SemCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    new-instance v0, Lcom/samsung/android/camera/core/SemCamera;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/camera/core/SemCamera;-><init>(ILandroid/os/Looper;Z)V

    return-object v0
.end method

.method public static open(ILandroid/os/Looper;)Lcom/samsung/android/camera/core/SemCamera;
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2555
    const-string/jumbo v0, "SemCamera-JNI-Java"

    const-string/jumbo v1, "SemCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    new-instance v0, Lcom/samsung/android/camera/core/SemCamera;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;-><init>(ILandroid/os/Looper;Z)V

    return-object v0
.end method

.method public static open(ILandroid/os/Looper;Z)Lcom/samsung/android/camera/core/SemCamera;
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "halsetting"    # Z

    .prologue
    .line 2571
    const-string/jumbo v0, "SemCamera-JNI-Java"

    const-string/jumbo v1, "SemCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    new-instance v0, Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;-><init>(ILandroid/os/Looper;Z)V

    return-object v0
.end method

.method public static openLegacy(II)Lcom/samsung/android/camera/core/SemCamera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .prologue
    .line 2640
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 2641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2644
    :cond_0
    new-instance v0, Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core/SemCamera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Lcom/samsung/android/camera/core/SemCamera;
    .locals 1

    .prologue
    .line 2797
    new-instance v0, Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {v0}, Lcom/samsung/android/camera/core/SemCamera;-><init>()V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 16
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4434
    const/16 v12, 0x10

    move/from16 v0, p1

    if-ge v0, v12, :cond_0

    const-string/jumbo v12, "SemCamera-JNI-Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "postEventFromNative: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4435
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "postEventFromNative("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x400

    invoke-static {v14, v15, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4438
    :try_start_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core/SemCamera;

    .line 4439
    .local v4, "c":Lcom/samsung/android/camera/core/SemCamera;
    if-nez v4, :cond_1

    .line 4440
    const-string/jumbo v12, "SemCamera-JNI-Java"

    const-string/jumbo v13, "postEventFromNative : SemCamera is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4521
    const-wide/16 v12, 0x400

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 4441
    return-void

    .line 4444
    :cond_1
    :try_start_1
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    if-eqz v12, :cond_c

    .line 4445
    const/high16 v12, 0x10000

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 4446
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4449
    :try_start_2
    iget-boolean v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrCallbackEnabled:Z

    if-eqz v12, :cond_3

    .line 4450
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v12}, Ljava/util/Queue;->size()I

    move-result v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_2

    .line 4451
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v12}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 4452
    .local v6, "irisIrFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_2

    .line 4453
    const-string/jumbo v12, "SemCamera-JNI-Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remove old queued ir fd("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4458
    .end local v6    # "irisIrFd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    check-cast p4, Ljava/io/FileDescriptor;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-static/range {p4 .. p4}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 4459
    .local v9, "newIrisIrFd":Landroid/os/ParcelFileDescriptor;
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v12, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v11

    .line 4460
    .local v11, "ret":Z
    if-eqz v11, :cond_4

    .line 4461
    const-string/jumbo v12, "SemCamera-JNI-Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "add new ir fd("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "), queue size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v14}, Ljava/util/Queue;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4470
    .end local v9    # "newIrisIrFd":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "ret":Z
    :cond_3
    :try_start_3
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4473
    :goto_0
    iget-boolean v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrCallbackEnabled:Z

    if-eqz v12, :cond_5

    .line 4474
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    const/4 v13, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4475
    .local v8, "m":Landroid/os/Message;
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4521
    .end local v8    # "m":Landroid/os/Message;
    :goto_1
    const-wide/16 v12, 0x400

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 4432
    return-void

    .line 4463
    .restart local v9    # "newIrisIrFd":Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "ret":Z
    :cond_4
    :try_start_4
    const-string/jumbo v12, "SemCamera-JNI-Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fail to add new ir fd("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4470
    :try_start_5
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4521
    const-wide/16 v12, 0x400

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 4464
    return-void

    .line 4467
    .end local v9    # "newIrisIrFd":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "ret":Z
    :catch_0
    move-exception v5

    .line 4468
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v12, "SemCamera-JNI-Java"

    const-string/jumbo v13, "ParcelFileDescriptor dup exception, so return"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4470
    :try_start_7
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 4520
    .end local v4    # "c":Lcom/samsung/android/camera/core/SemCamera;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 4521
    const-wide/16 v14, 0x400

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 4520
    throw v12

    .line 4469
    .restart local v4    # "c":Lcom/samsung/android/camera/core/SemCamera;
    :catchall_1
    move-exception v12

    .line 4470
    :try_start_8
    iget-object v13, v4, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4469
    throw v12

    .line 4477
    :cond_5
    const-string/jumbo v12, "SemCamera-JNI-Java"

    const-string/jumbo v13, "ERROR : check IrisCallback Message"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4479
    .restart local p4    # "obj":Ljava/lang/Object;
    :cond_6
    const v12, 0x8000

    move/from16 v0, p1

    if-ne v0, v12, :cond_b

    .line 4480
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4483
    :try_start_9
    iget-boolean v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewCallbackEnabled:Z

    if-eqz v12, :cond_8

    .line 4484
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v12}, Ljava/util/Queue;->size()I

    move-result v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_7

    .line 4485
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v12}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 4486
    .local v7, "irisPreviewFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_7

    .line 4487
    const-string/jumbo v12, "SemCamera-JNI-Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remove old queued preview fd("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4492
    .end local v7    # "irisPreviewFd":Landroid/os/ParcelFileDescriptor;
    :cond_7
    check-cast p4, Ljava/io/FileDescriptor;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-static/range {p4 .. p4}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 4493
    .local v10, "newIrisPreviewFd":Landroid/os/ParcelFileDescriptor;
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v12, v10}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v11

    .line 4494
    .restart local v11    # "ret":Z
    if-eqz v11, :cond_9

    .line 4495
    const-string/jumbo v12, "SemCamera-JNI-Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "add new preview fd("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "), queue size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v14}, Ljava/util/Queue;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 4504
    .end local v10    # "newIrisPreviewFd":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "ret":Z
    :cond_8
    :try_start_a
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4507
    :goto_2
    iget-boolean v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewCallbackEnabled:Z

    if-eqz v12, :cond_a

    .line 4508
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    const/4 v13, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4509
    .restart local v8    # "m":Landroid/os/Message;
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 4497
    .end local v8    # "m":Landroid/os/Message;
    .restart local v10    # "newIrisPreviewFd":Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "ret":Z
    :cond_9
    :try_start_b
    const-string/jumbo v12, "SemCamera-JNI-Java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fail to add new preview fd("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 4504
    :try_start_c
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 4521
    const-wide/16 v12, 0x400

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 4498
    return-void

    .line 4501
    .end local v10    # "newIrisPreviewFd":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "ret":Z
    :catch_1
    move-exception v5

    .line 4502
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string/jumbo v12, "SemCamera-JNI-Java"

    const-string/jumbo v13, "ParcelFileDescriptor dup exception, so return"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 4504
    :try_start_e
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    .line 4503
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v12

    .line 4504
    iget-object v13, v4, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4503
    throw v12

    .line 4511
    :cond_a
    const-string/jumbo v12, "SemCamera-JNI-Java"

    const-string/jumbo v13, "ERROR : check IrisPreviewCallback Enabled"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4514
    .restart local p4    # "obj":Ljava/lang/Object;
    :cond_b
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4515
    .restart local v8    # "m":Landroid/os/Message;
    iget-object v12, v4, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 4518
    .end local v8    # "m":Landroid/os/Message;
    :cond_c
    const-string/jumbo v12, "SemCamera-JNI-Java"

    const-string/jumbo v13, "mEventHandler is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1
.end method

.method private final native setHasPreviewCallback(ZZZ)V
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 3387
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core/SemCamera;->_addCallbackBuffer([BI)V

    .line 3385
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 3429
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core/SemCamera;->addCallbackBuffer([BI)V

    .line 3427
    return-void
.end method

.method public final autoFocus(Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4610
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4612
    invoke-direct {p0}, Lcom/samsung/android/camera/core/SemCamera;->native_autoFocus()V

    .line 4607
    return-void

    .line 4609
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public cameraInitUnspecified(I)I
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 2742
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->cameraInitVersion(IILandroid/os/Looper;Z)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 4628
    invoke-direct {p0}, Lcom/samsung/android/camera/core/SemCamera;->native_cancelAutoFocus()V

    .line 4644
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4624
    return-void
.end method

.method public cancelMagicShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5873
    const/16 v0, 0x58f

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5871
    return-void
.end method

.method public cancelMotionPanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5435
    const/16 v0, 0x5d5

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5434
    return-void
.end method

.method public cancelTakePicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6184
    const/16 v0, 0x5c0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6182
    return-void
.end method

.method public cancelWideMotionSelfie()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5944
    const/16 v0, 0x5d9

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5943
    return-void
.end method

.method public cancelWideSelfie()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5909
    const/16 v0, 0x5b7

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5908
    return-void
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3474
    invoke-virtual {p0}, Lcom/samsung/android/camera/core/SemCamera;->getParameters()Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v1

    .line 3475
    .local v1, "p":Lcom/samsung/android/camera/core/SemCamera$Parameters;
    invoke-virtual {v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v2

    .line 3476
    .local v2, "previewSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    .line 3478
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    .line 3479
    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 3477
    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    .line 3476
    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 3482
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 3483
    if-eqz v2, :cond_0

    .line 3484
    iget v4, v2, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 3485
    iget v4, v2, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 3488
    :cond_0
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    .line 3489
    or-int/lit8 v5, p2, 0x20

    .line 3488
    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 3491
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final disableMotionPhoto()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1478
    const/16 v0, 0x598

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 1477
    return-void
.end method

.method public final disableShutterSound()Z
    .locals 1

    .prologue
    .line 4938
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core/SemCamera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final enableMotionPhoto(I)V
    .locals 2
    .param p1, "token"    # I

    .prologue
    .line 1470
    const/16 v0, 0x597

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 1469
    return-void
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 4907
    if-nez p1, :cond_0

    .line 4908
    const-string/jumbo v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 4909
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 4911
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 4912
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    .line 4914
    :catch_0
    move-exception v2

    .line 4915
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core/SemCamera;->_enableShutterSound(Z)Z

    move-result v3

    return v3
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2812
    invoke-virtual {p0}, Lcom/samsung/android/camera/core/SemCamera;->release()V

    .line 2811
    return-void
.end method

.method public declared-synchronized flatten(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 6312
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 6313
    :cond_0
    const-string/jumbo v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 6316
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6317
    .local v0, "flattened":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6318
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6319
    const-string/jumbo v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6320
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6321
    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "flattened":Ljava/lang/StringBuilder;
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "k$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6324
    .restart local v0    # "flattened":Ljava/lang/StringBuilder;
    .restart local v2    # "k$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 6325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method

.method public getParameters()Lcom/samsung/android/camera/core/SemCamera$Parameters;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5315
    new-instance v0, Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;-><init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    .line 5316
    .local v0, "p":Lcom/samsung/android/camera/core/SemCamera$Parameters;
    invoke-direct {p0}, Lcom/samsung/android/camera/core/SemCamera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 5317
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 5318
    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 5323
    .end local v0    # "p":Lcom/samsung/android/camera/core/SemCamera$Parameters;
    :goto_0
    return-object v0

    .line 5320
    .restart local v0    # "p":Lcom/samsung/android/camera/core/SemCamera$Parameters;
    :cond_0
    const/4 v0, 0x0

    .line 5321
    .local v0, "p":Lcom/samsung/android/camera/core/SemCamera$Parameters;
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "getParameters string is null, return null parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final native lock()V
.end method

.method public final native native_sendcommand(III)V
.end method

.method public pauseRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2342
    const/16 v0, 0x6ba

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 2341
    return-void
.end method

.method public final preparePreview()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3143
    const/16 v0, 0x713

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 3144
    invoke-virtual {p0}, Lcom/samsung/android/camera/core/SemCamera;->startPreview()V

    .line 3145
    invoke-virtual {p0}, Lcom/samsung/android/camera/core/SemCamera;->stopPreview()V

    .line 3142
    return-void
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native registerRecordingSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2825
    invoke-direct {p0}, Lcom/samsung/android/camera/core/SemCamera;->native_release()V

    .line 2826
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2827
    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    .line 2829
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2830
    iput-boolean v4, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrCallbackEnabled:Z

    .line 2831
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2833
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2834
    iput-boolean v4, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewCallbackEnabled:Z

    .line 2835
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2837
    const-string/jumbo v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "release::mIrisIrQueue FD Size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2839
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 2841
    .local v1, "irisIrFd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2843
    if-eqz v1, :cond_1

    .line 2844
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2849
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 2846
    :catch_0
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "ParcelFileDescriptor irisIrFd close exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2849
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 2848
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 2849
    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2848
    throw v3

    .line 2852
    .end local v1    # "irisIrFd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2853
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 2854
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisIrLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2856
    const-string/jumbo v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "release::mIrisPreviewQueue FD Size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 2858
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 2860
    .local v2, "irisPreviewFd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2862
    if-eqz v2, :cond_3

    .line 2863
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2868
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 2865
    :catch_1
    move-exception v0

    .line 2866
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "ParcelFileDescriptor irisPreviewFd close exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2868
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 2867
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    .line 2868
    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2867
    throw v3

    .line 2873
    .end local v2    # "irisPreviewFd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2874
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 2875
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera;->irisPreviewLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2824
    return-void
.end method

.method public requestBurstShotImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5483
    const/16 v0, 0x489

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5482
    return-void
.end method

.method public resumeRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2334
    const/16 v0, 0x6b9

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 2333
    return-void
.end method

.method public sendCommand(III)V
    .locals 0
    .param p1, "codeA"    # I
    .param p2, "codeB"    # I
    .param p3, "codeC"    # I

    .prologue
    .line 6243
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6242
    return-void
.end method

.method public sendOrientationInfoToHal(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 5845
    const/16 v0, 0x5f1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5843
    return-void
.end method

.method public setAntiFogLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 6125
    const/16 v0, 0x528

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6123
    return-void
.end method

.method public setAutoExposureCallback(Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    .prologue
    .line 2459
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoExposureCallback:Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    .line 2458
    return-void
.end method

.method public final setAutoFocusCb(Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;

    .prologue
    .line 4687
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4688
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4685
    return-void

    .line 4687
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setAutoFocusMoveCallback(Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    .prologue
    .line 4673
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusMoveCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    .line 4674
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mAutoFocusMoveCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core/SemCamera;->enableFocusMoveCallback(I)V

    .line 4672
    return-void

    .line 4674
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBeautyEventListener(Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mBeautyEventListener:Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    .line 1835
    return-void
.end method

.method public setBeautyLevel(ZI)V
    .locals 3
    .param p1, "liveBeauty"    # Z
    .param p2, "retouchLevel"    # I

    .prologue
    .line 5501
    const-string/jumbo v0, "SemCamera-JNI-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBeautyLevel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5502
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x49d

    invoke-virtual {p0, v1, v0, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5500
    return-void

    .line 5502
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBrightnessValueCallback(Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    .prologue
    .line 2482
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mBrightnessValueCallback:Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    .line 2481
    return-void
.end method

.method public setBrightnessValueCallbackEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x70e

    const/4 v1, 0x0

    .line 6086
    if-eqz p1, :cond_0

    .line 6087
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6084
    :goto_0
    return-void

    .line 6089
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setBurstEventListener(Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstEventListener:Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    .line 1608
    return-void
.end method

.method public setBurstShotFpsCallback(Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    .prologue
    .line 2506
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mBurstShotFpsCallback:Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    .line 2505
    return-void
.end method

.method public setBurstShotFpsCallbackEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x70f

    const/4 v1, 0x0

    .line 6099
    if-eqz p1, :cond_0

    .line 6100
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6097
    :goto_0
    return-void

    .line 6102
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setBurstShotFpsValue(I)V
    .locals 2
    .param p1, "burstFps"    # I

    .prologue
    .line 5590
    const/16 v0, 0x627

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5589
    return-void
.end method

.method public setBurstShotSetup(II)V
    .locals 1
    .param p1, "storage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 5464
    const/16 v0, 0x48c

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5463
    return-void
.end method

.method public setCameraSensorDataListener(Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    .prologue
    .line 2436
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mCameraSensorDataListener:Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    .line 2435
    return-void
.end method

.method public setCameraSensorDataListenerEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x66b

    const/4 v1, 0x0

    .line 6047
    if-eqz p1, :cond_0

    .line 6048
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6045
    :goto_0
    return-void

    .line 6050
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setCameraUsage(I)V
    .locals 2
    .param p1, "usage"    # I

    .prologue
    .line 6201
    const/16 v0, 0x71d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6200
    return-void
.end method

.method public setCaptureFlipPhotoMode()V
    .locals 3

    .prologue
    .line 5662
    const-string/jumbo v0, "SemCamera-JNI-Java"

    const-string/jumbo v1, "setCaptureFlipPhotoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5663
    const/16 v0, 0x574

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5661
    return-void
.end method

.method public setCommonEventListener(Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mCommonEventListener:Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    .line 1516
    return-void
.end method

.method public setDepthMapEventListener(Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    .prologue
    .line 2177
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mDepthMapEventListener:Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    .line 2176
    return-void
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public setDistortionEffectsInfo(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 5965
    const/16 v0, 0x5b8

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5964
    return-void
.end method

.method public setDistortionEffectsMode(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 5974
    const/16 v0, 0x5b9

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5973
    return-void
.end method

.method public setDualEffectCoordinate(II)V
    .locals 1
    .param p1, "topLeftXY"    # I
    .param p2, "bottomRightXY"    # I

    .prologue
    .line 5764
    const/16 v0, 0x50d

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5763
    return-void
.end method

.method public setDualEffectLayerOrder(Z)V
    .locals 3
    .param p1, "isRearGoesBottom"    # Z

    .prologue
    const/16 v2, 0x50e

    const/4 v1, 0x0

    .line 5774
    if-eqz p1, :cond_0

    .line 5775
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5773
    :goto_0
    return-void

    .line 5777
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setDualEventListener(Lcom/samsung/android/camera/core/SemCamera$DualEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    .prologue
    .line 1947
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mDualEventListener:Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    .line 1946
    return-void
.end method

.method public setEffectMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 5835
    const/16 v0, 0x607

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5832
    return-void
.end method

.method public setEffectOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 5819
    const/16 v0, 0x510

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5818
    return-void
.end method

.method public setEffectSaveAsFlipped(I)V
    .locals 2
    .param p1, "isSaveAsFlipped"    # I

    .prologue
    .line 5724
    const/16 v0, 0x512

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5723
    return-void
.end method

.method public final setErrorCallback(Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

    .prologue
    .line 5243
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mErrorCallback:Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

    .line 5241
    return-void
.end method

.method public final setExtraInfoListener(Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

    .prologue
    .line 5270
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mExtraInfoListener:Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

    .line 5268
    return-void
.end method

.method public setEyeEnlargeLevel(I)V
    .locals 2
    .param p1, "eyeEnlargeLevel"    # I

    .prologue
    .line 5529
    const/16 v0, 0x4a0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5528
    return-void
.end method

.method public final setFaceDetectionListener(Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

    .prologue
    .line 4999
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceListener:Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

    .line 4997
    return-void
.end method

.method public setFaceDistortionCompensationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x4a2

    const/4 v1, 0x0

    .line 5538
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5537
    :goto_0
    return-void

    .line 5539
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setFaceRelightDirection(II)V
    .locals 1
    .param p1, "xPos"    # I
    .param p2, "yPos"    # I

    .prologue
    .line 5567
    const/16 v0, 0x4a5

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5566
    return-void
.end method

.method public setFaceRelightEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5548
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x4a3

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5547
    return-void

    :cond_0
    move v0, v1

    .line 5548
    goto :goto_0
.end method

.method public setFaceRelightLevel(I)V
    .locals 2
    .param p1, "relightLevel"    # I

    .prologue
    .line 5557
    const/16 v0, 0x4a4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5556
    return-void
.end method

.method public setFlashAutoCallbackEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x70a

    const/4 v1, 0x0

    .line 6060
    if-eqz p1, :cond_0

    .line 6061
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6058
    :goto_0
    return-void

    .line 6063
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setFocusPeakingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1487
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x731

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 1486
    return-void

    :cond_0
    move v0, v1

    .line 1487
    goto :goto_0
.end method

.method public setFoodShotEventListener(Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mFoodShotEventListener:Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    .line 2146
    return-void
.end method

.method public setGenericParameters(Ljava/lang/String;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 5280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Generic-Param=1;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5281
    .local v0, "mParams":Ljava/lang/String;
    const-string/jumbo v1, "SemCamera-JNI-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGenericParameters : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core/SemCamera;->native_setParameters(Ljava/lang/String;)V

    .line 5279
    return-void
.end method

.method public setGestureControlMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 5754
    const/16 v0, 0x541

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5753
    return-void
.end method

.method public final setHardwareFaceDetectionListener(Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

    .prologue
    .line 5029
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mHardwareFaceDetectionListener:Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

    .line 5027
    return-void
.end method

.method public setHazeRemovalShotEventListener(Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    .prologue
    .line 1712
    const-string/jumbo v0, "SemCamera-JNI-Java"

    const-string/jumbo v1, "setHazeRemovalShotEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mHazeRemovalShotEventListener:Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    .line 1711
    return-void
.end method

.method public setHdrAutoCallbackEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x70b

    const/4 v1, 0x0

    .line 6073
    if-eqz p1, :cond_0

    .line 6074
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6071
    :goto_0
    return-void

    .line 6076
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setHdrEventListener(Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mHdrEventListener:Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    .line 1653
    return-void
.end method

.method public setHdrSavingMode(I)V
    .locals 2
    .param p1, "pictureMode"    # I

    .prologue
    .line 5581
    const/16 v0, 0x4f8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5580
    return-void
.end method

.method public setImageEffect(I)V
    .locals 2
    .param p1, "filterId"    # I

    .prologue
    .line 5645
    const/16 v0, 0x50b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5644
    return-void
.end method

.method public setImageEffect(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 5654
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core/SemCamera;->setGenericParameters(Ljava/lang/String;)V

    .line 5653
    return-void
.end method

.method public setImageEffectEventListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mImageEffectEventListener:Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    .line 1973
    return-void
.end method

.method public setImageEffectVisibleForRecording(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v2, 0x548

    const/4 v1, 0x0

    .line 5809
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5808
    :goto_0
    return-void

    .line 5810
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setInteractiveEventListener(Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mInteractiveShotEventListener:Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    .line 2116
    return-void
.end method

.method public final setIrisDataCallback(Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    .prologue
    .line 3321
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisDataCallback:Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    .line 3320
    return-void
.end method

.method public final setIrisIrDataCallbackEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x727

    const/4 v1, 0x0

    .line 3330
    if-eqz p1, :cond_0

    .line 3331
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 3335
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrCallbackEnabled:Z

    .line 3329
    return-void

    .line 3333
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public final setIrisPreviewDataCallbackEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x728

    const/4 v1, 0x0

    .line 3344
    if-eqz p1, :cond_0

    .line 3345
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 3349
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewCallbackEnabled:Z

    .line 3343
    return-void

    .line 3347
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setLightConditionChangedListener(Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mLightConditionChangedListener:Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    .line 1914
    return-void
.end method

.method public setLightConditionDetectEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x547

    const/4 v1, 0x0

    .line 6163
    if-eqz p1, :cond_0

    .line 6164
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6162
    :goto_0
    return-void

    .line 6166
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setLiveVideoBroadcastRecordingModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x6c2

    const/4 v1, 0x0

    .line 6134
    if-eqz p1, :cond_0

    .line 6135
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6132
    :goto_0
    return-void

    .line 6137
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setLowLightShotEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5492
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x4f0

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5491
    return-void

    :cond_0
    move v0, v1

    .line 5492
    goto :goto_0
.end method

.method public setMotionPanoramaEventListener(Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mMotionPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    .line 1246
    return-void
.end method

.method public setMotionPanoramaModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x5d6

    const/4 v1, 0x0

    .line 5445
    if-eqz p1, :cond_0

    .line 5446
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5444
    :goto_0
    return-void

    .line 5448
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setMultiAutoFocusCallback(Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    .line 2325
    return-void
.end method

.method public setMultiAutoFocusEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x66d

    const/4 v1, 0x0

    .line 6035
    if-eqz p1, :cond_0

    .line 6036
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6033
    :goto_0
    return-void

    .line 6038
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setMultiFrameEventListener(Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    .prologue
    .line 1682
    const-string/jumbo v0, "SemCamera-JNI-Java"

    const-string/jumbo v1, "setMultiFrameShotEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mMultiFrameEventListener:Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    .line 1681
    return-void
.end method

.method public setMultiTrackModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5800
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x572

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5799
    return-void

    :cond_0
    move v0, v1

    .line 5800
    goto :goto_0
.end method

.method public setObjectTrackingAutoFocusCallback(Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    .prologue
    .line 2369
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mObjectTrackingAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    .line 2368
    return-void
.end method

.method public final setOneShotPreviewCallback(Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3213
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallback:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .line 3214
    iput-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mOneShot:Z

    .line 3215
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWithBuffer:Z

    .line 3216
    if-eqz p1, :cond_0

    .line 3217
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    .line 3219
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->setHasPreviewCallback(ZZZ)V

    .line 3212
    return-void

    :cond_1
    move v0, v1

    .line 3219
    goto :goto_0
.end method

.method public final setOneShotPreviewCallback(Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;Z)V
    .locals 2
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;
    .param p2, "isGLEffect"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3238
    if-eqz p2, :cond_0

    .line 3239
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallbackForGLEffect:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .line 3240
    const/16 v0, 0x51a

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 3237
    :goto_0
    return-void

    .line 3242
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallback:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .line 3243
    iput-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mOneShot:Z

    .line 3244
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWithBuffer:Z

    .line 3245
    if-eqz p1, :cond_1

    .line 3246
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    .line 3248
    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->setHasPreviewCallback(ZZZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5986
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5988
    .local v0, "fos":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core/SemCamera;->_setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5990
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 5984
    return-void

    .line 5989
    :catchall_0
    move-exception v1

    .line 5990
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 5989
    throw v1
.end method

.method public setOutputFileArray([Ljava/lang/String;)V
    .locals 9
    .param p1, "filepathArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6003
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6004
    .local v3, "fosArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/RandomAccessFile;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6006
    .local v2, "fdArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    array-length v5, p1

    .line 6009
    .local v5, "sizeOfArray":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 6010
    new-instance v6, Ljava/io/RandomAccessFile;

    aget-object v7, p1, v4

    const-string/jumbo v8, "rw"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6012
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6009
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6013
    :catch_0
    move-exception v0

    .line 6014
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SemCamera-JNI-Java"

    const-string/jumbo v7, "setOutputFileArray :"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6015
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .line 6019
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [Ljava/io/FileDescriptor;

    .line 6020
    .local v1, "fdArray":[Ljava/io/FileDescriptor;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fdArray":[Ljava/io/FileDescriptor;
    check-cast v1, [Ljava/io/FileDescriptor;

    .line 6021
    .restart local v1    # "fdArray":[Ljava/io/FileDescriptor;
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/camera/core/SemCamera;->_setOutputFileArray([Ljava/io/FileDescriptor;I)V

    .line 6023
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_1

    .line 6024
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 6023
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6001
    :cond_1
    return-void
.end method

.method public setPanoramaEventListener(Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPanoramaEventListener:Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    .line 1147
    return-void
.end method

.method public declared-synchronized setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 4
    .param p1, "params"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    monitor-enter p0

    .line 5294
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    if-eqz v2, :cond_1

    .line 5295
    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v1

    .line 5296
    .local v1, "newPreviewSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    invoke-virtual {p0}, Lcom/samsung/android/camera/core/SemCamera;->getParameters()Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v0

    .line 5297
    .local v0, "currentPreviewSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v2, v1, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    iget v3, v0, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    if-ne v2, v3, :cond_0

    .line 5298
    iget v2, v1, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    iget v3, v0, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    if-eq v2, v3, :cond_1

    .line 5299
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "currentPreviewSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    .end local v1    # "newPreviewSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 5304
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/core/SemCamera;->native_setParameters(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 5292
    return-void
.end method

.method public setPhaseAutoFocusCallback(Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x66c

    const/4 v1, 0x0

    .line 2289
    if-eqz p1, :cond_0

    .line 2290
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPhaseAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    .line 2291
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 2288
    :goto_0
    return-void

    .line 2293
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mPhaseAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    .line 2294
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setPostEventListener(Lcom/samsung/android/camera/core/SemCamera$PostEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostEventListener:Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    .line 1541
    return-void
.end method

.method public final setPreviewCallback(Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .prologue
    const/4 v1, 0x0

    .line 3173
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallback:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .line 3174
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mOneShot:Z

    .line 3175
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWithBuffer:Z

    .line 3176
    if-eqz p1, :cond_0

    .line 3177
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    .line 3181
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->setHasPreviewCallback(ZZZ)V

    .line 3172
    return-void

    :cond_1
    move v0, v1

    .line 3181
    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3542
    const/4 v2, 0x0

    .line 3543
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    .line 3544
    invoke-virtual {p0}, Lcom/samsung/android/camera/core/SemCamera;->getParameters()Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v0

    .line 3545
    .local v0, "p":Lcom/samsung/android/camera/core/SemCamera$Parameters;
    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v1

    .line 3546
    .local v1, "previewSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget v3, v1, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3547
    iget v3, v1, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 3548
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 3549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3551
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    .line 3549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3552
    const-string/jumbo v5, ", "

    .line 3549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3553
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    .line 3549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3554
    const-string/jumbo v5, ". Preview is "

    .line 3549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3554
    iget v5, v1, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    .line 3549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3554
    const-string/jumbo v5, ", "

    .line 3549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3555
    iget v5, v1, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    .line 3549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3548
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3557
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    .line 3559
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 3560
    const-string/jumbo v4, "Allocation usage does not include USAGE_IO_INPUT"

    .line 3559
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3562
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    .line 3563
    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 3562
    if-eq v3, v4, :cond_3

    .line 3564
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 3565
    const-string/jumbo v4, "Allocation is not of a YUV type"

    .line 3564
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3567
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 3568
    .local v2, "previewSurface":Landroid/view/Surface;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    .line 3572
    .end local v0    # "p":Lcom/samsung/android/camera/core/SemCamera$Parameters;
    .end local v1    # "previewSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    .end local v2    # "previewSurface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/camera/core/SemCamera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 3541
    return-void

    .line 3570
    .local v2, "previewSurface":Landroid/view/Surface;
    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    goto :goto_0
.end method

.method public final setPreviewCallbackTimeStamp(Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;)V
    .locals 2
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

    .prologue
    const/4 v1, 0x0

    .line 3187
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallbackTimeStamp:Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

    .line 3188
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mOneShot:Z

    .line 3189
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWithBuffer:Z

    .line 3190
    if-eqz p1, :cond_0

    .line 3191
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    .line 3195
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->setHasPreviewCallback(ZZZ)V

    .line 3186
    return-void

    :cond_1
    move v0, v1

    .line 3195
    goto :goto_0
.end method

.method public final setPreviewCallbackTimeStampWithBuffer(Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;)V
    .locals 3
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3295
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallbackTimeStamp:Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

    .line 3296
    iput-boolean v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mOneShot:Z

    .line 3297
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWithBuffer:Z

    .line 3298
    if-eqz p1, :cond_0

    .line 3299
    iput-boolean v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    .line 3301
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->setHasPreviewCallback(ZZZ)V

    .line 3294
    return-void

    :cond_1
    move v0, v2

    .line 3301
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3282
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallback:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .line 3283
    iput-boolean v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mOneShot:Z

    .line 3284
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWithBuffer:Z

    .line 3285
    if-eqz p1, :cond_0

    .line 3286
    iput-boolean v2, p0, Lcom/samsung/android/camera/core/SemCamera;->mUsingPreviewAllocation:Z

    .line 3288
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->setHasPreviewCallback(ZZZ)V

    .line 3281
    return-void

    :cond_1
    move v0, v2

    .line 3288
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBufferNoDisable(Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3309
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPreviewCallback:Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    .line 3310
    iput-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mOneShot:Z

    .line 3311
    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWithBuffer:Z

    .line 3312
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->setHasPreviewCallback(ZZZ)V

    .line 3308
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2959
    if-eqz p1, :cond_0

    .line 2960
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core/SemCamera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 2958
    :goto_0
    return-void

    .line 2962
    :cond_0
    nop

    nop

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core/SemCamera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setPreviewStartedCallbackEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6193
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x5c1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6191
    return-void

    :cond_0
    move v0, v1

    .line 6193
    goto :goto_0
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setQrCodeDetectionEventListener(Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mQrCodeDetectionEventListener:Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    .line 1443
    return-void
.end method

.method public setRecordingLocation(FF)V
    .locals 2
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .prologue
    .line 5707
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5708
    .local v0, "flattened":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "loc=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5709
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5710
    const-string/jumbo v1, "latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5711
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5712
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5713
    const-string/jumbo v1, "longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5714
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core/SemCamera;->setGenericParameters(Ljava/lang/String;)V

    .line 5706
    return-void
.end method

.method public setRecordingMaxFileSize(J)V
    .locals 9
    .param p1, "max_filesize_bytes"    # J

    .prologue
    const-wide/32 v6, 0xf4240

    .line 5685
    div-long v4, p1, v6

    long-to-int v1, v4

    .line 5686
    .local v1, "maxfilesizeH":I
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 5687
    .local v2, "maxfilesizeL":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5688
    .local v0, "flattened":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "maxfilesize=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5689
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5690
    const-string/jumbo v3, "maxfilesizeh="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5691
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5692
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5693
    const-string/jumbo v3, "maxfilesizel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5694
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core/SemCamera;->setGenericParameters(Ljava/lang/String;)V

    .line 5684
    return-void
.end method

.method public setRecordingMode(I)V
    .locals 2
    .param p1, "recordingMode"    # I

    .prologue
    .line 5791
    const/16 v0, 0x573

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5790
    return-void
.end method

.method public setRelightEventListener(Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mRelightEventListener:Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    .line 1863
    return-void
.end method

.method public setSKinColorLevel(I)V
    .locals 2
    .param p1, "skinColorLevel"    # I

    .prologue
    .line 5511
    const/16 v0, 0x4a1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5510
    return-void
.end method

.method public setSaveAsFlipped(ZI)V
    .locals 4
    .param p1, "mirror"    # Z
    .param p2, "orientation"    # I

    .prologue
    const/16 v3, 0x5e7

    const/16 v2, 0x5e6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5613
    if-eqz p1, :cond_0

    .line 5614
    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5615
    invoke-virtual {p0, v3, p2, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5612
    :goto_0
    return-void

    .line 5617
    :cond_0
    invoke-virtual {p0, v2, v0, v0}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5618
    invoke-virtual {p0, v3, p2, v0}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setScreenFlashEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x70d

    const/4 v1, 0x0

    .line 6112
    if-eqz p1, :cond_0

    .line 6113
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6110
    :goto_0
    return-void

    .line 6115
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setScreenFlashEventListener(Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mScreenFlashEventListener:Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    .line 1564
    return-void
.end method

.method public setSeedPointToDetectFoodRegion(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2188
    const/16 v0, 0x579

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 2186
    return-void
.end method

.method public setSelectiveFocusEventListener(Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    .prologue
    .line 2020
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mSelectiveFocusEventListener:Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    .line 2019
    return-void
.end method

.method public setShootingMode(I)V
    .locals 1
    .param p1, "shootingMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 5333
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/camera/core/SemCamera;->setShootingMode(III)V

    .line 5332
    return-void
.end method

.method public setShootingMode(III)V
    .locals 1
    .param p1, "shootingMode"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 5347
    add-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5346
    return-void
.end method

.method public setShootingModeCallbacks(Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;
    .param p2, "raw"    # Lcom/samsung/android/camera/core/SemCamera$PictureCallback;
    .param p3, "jpeg"    # Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .prologue
    .line 5391
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mShutterCallback:Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    .line 5392
    iput-object p2, p0, Lcom/samsung/android/camera/core/SemCamera;->mRawImageCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .line 5393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostviewCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .line 5394
    iput-object p3, p0, Lcom/samsung/android/camera/core/SemCamera;->mJpegCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .line 5390
    return-void
.end method

.method public setShotAndMoreEventListener(Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mShotAndMoreEventListener:Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    .line 2063
    return-void
.end method

.method public setShutterSoundMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 5360
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 5361
    const/16 v0, 0x605

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5359
    :goto_0
    return-void

    .line 5363
    :cond_0
    const-string/jumbo v0, "SemCamera-JNI-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShutterSoundEnabled : not supported value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSlimFaceLevel(I)V
    .locals 2
    .param p1, "slimFaceLevel"    # I

    .prologue
    .line 5520
    const/16 v0, 0x49f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5519
    return-void
.end method

.method public setSlowMotionEventListener(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    .prologue
    .line 2216
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mSlowMotionEventListener:Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    .line 2215
    return-void
.end method

.method public final setSmartFilterListener(Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    .prologue
    .line 6299
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mSmartFilterListener:Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    .line 6297
    return-void
.end method

.method public setStickerEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6229
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x5ab

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6228
    return-void

    :cond_0
    move v0, v1

    .line 6229
    goto :goto_0
.end method

.method public setStickerEventListener(Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    .prologue
    .line 1892
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mStickerEventListener:Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    .line 1891
    return-void
.end method

.method public setThemeMask(I)V
    .locals 2
    .param p1, "mask"    # I

    .prologue
    .line 5732
    const/16 v0, 0x53d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5731
    return-void
.end method

.method public setThemeOrientationInfo(II)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "cameraId"    # I

    .prologue
    .line 5741
    const/16 v0, 0x53e

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5740
    return-void
.end method

.method public setWaterMarkEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6210
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x5a1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6209
    return-void

    :cond_0
    move v0, v1

    .line 6210
    goto :goto_0
.end method

.method public setWaterMarkPosition(II)V
    .locals 1
    .param p1, "xPos"    # I
    .param p2, "yPos"    # I

    .prologue
    .line 6220
    const/16 v0, 0x5a2

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6219
    return-void
.end method

.method public setWideMotionSelfieBeautyLevel(I)V
    .locals 2
    .param p1, "beautyLevel"    # I

    .prologue
    .line 5936
    const/16 v0, 0x5da

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5935
    return-void
.end method

.method public setWideMotionSelfieEventListener(Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideMotionSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    .line 1405
    return-void
.end method

.method public setWideMotionSelfieMotionEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x5db

    const/4 v1, 0x0

    .line 5953
    if-eqz p1, :cond_0

    .line 5954
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5952
    :goto_0
    return-void

    .line 5956
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setWideSelfieBeautyLevel(I)V
    .locals 2
    .param p1, "beautyLevel"    # I

    .prologue
    .line 5901
    const/16 v0, 0x5bc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5900
    return-void
.end method

.method public setWideSelfieEventListener(Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mWideSelfieEventListener:Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    .line 1328
    return-void
.end method

.method public final setZoomChangeListener(Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    .prologue
    .line 4972
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mZoomListener:Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    .line 4970
    return-void
.end method

.method public final standbyPreview()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3153
    const/16 v0, 0x714

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 3154
    invoke-virtual {p0}, Lcom/samsung/android/camera/core/SemCamera;->stopPreview()V

    .line 3152
    return-void
.end method

.method public startContinuousAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5627
    const/16 v0, 0x60f

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5626
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 5065
    iget-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 5066
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5068
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core/SemCamera;->_startFaceDetection(I)V

    .line 5069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    .line 5064
    return-void
.end method

.method public startMagicShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5855
    const/16 v0, 0x58d

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5853
    return-void
.end method

.method public startMotionPanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5419
    const/16 v0, 0x5d3

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5418
    return-void
.end method

.method public final startObjectTrackingAutoFocus()V
    .locals 3

    .prologue
    .line 2377
    const/16 v0, 0x5e0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 2376
    return-void
.end method

.method public startPanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5402
    const/16 v0, 0x457

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5401
    return-void
.end method

.method public final native startPreview()V
.end method

.method public final startQrCodeDetection(I)V
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 1453
    const/16 v0, 0x5c9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 1452
    return-void
.end method

.method public startSmartFilter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6261
    const/16 v0, 0x529

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6260
    return-void
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public startTouchAutoFocus()V
    .locals 3

    .prologue
    .line 5597
    const/16 v0, 0x5e1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5596
    return-void
.end method

.method public startWideMotionSelfie(II)V
    .locals 1
    .param p1, "flip"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 5919
    const/16 v0, 0x5d7

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5918
    return-void
.end method

.method public startWideSelfie(II)V
    .locals 1
    .param p1, "flip"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 5883
    const/16 v0, 0x5b5

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5882
    return-void
.end method

.method public startZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6146
    const/16 v0, 0x67d

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6145
    return-void
.end method

.method public stopContinuousAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5635
    const/16 v0, 0x610

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5634
    return-void
.end method

.method public final stopFaceDetection()V
    .locals 2

    .prologue
    .line 5078
    invoke-direct {p0}, Lcom/samsung/android/camera/core/SemCamera;->_stopFaceDetection()V

    .line 5079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    .line 5080
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    if-eqz v0, :cond_0

    .line 5082
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mEventHandler:Lcom/samsung/android/camera/core/SemCamera$EventHandler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5077
    :cond_0
    return-void
.end method

.method public stopMagicShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5864
    const/16 v0, 0x58e

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5862
    return-void
.end method

.method public stopMotionPanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5427
    const/16 v0, 0x5d4

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5426
    return-void
.end method

.method public final stopObjectTrackingAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2385
    const/16 v0, 0x5e0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 2384
    return-void
.end method

.method public stopPanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5410
    const/16 v0, 0x458

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5409
    return-void
.end method

.method public final stopPreview()V
    .locals 2

    .prologue
    .line 3112
    invoke-direct {p0}, Lcom/samsung/android/camera/core/SemCamera;->_stopPreview()V

    .line 3113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    .line 3115
    const-string/jumbo v0, "SemCamera-JNI-Java"

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    return-void
.end method

.method public final stopQrCodeDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1461
    const/16 v0, 0x5ca

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 1460
    return-void
.end method

.method public stopSmartFilter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6269
    const/16 v0, 0x52a

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6268
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public stopTakePicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6175
    const/16 v0, 0x5bf

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6173
    return-void
.end method

.method public stopTouchAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5604
    const/16 v0, 0x5e1

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5603
    return-void
.end method

.method public stopWideMotionSelfie()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5927
    const/16 v0, 0x5d8

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5926
    return-void
.end method

.method public stopWideSelfie()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5891
    const/16 v0, 0x5b6

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5890
    return-void
.end method

.method public stopZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6154
    const/16 v0, 0x67e

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 6153
    return-void
.end method

.method public final takePicture(Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;
    .param p2, "raw"    # Lcom/samsung/android/camera/core/SemCamera$PictureCallback;
    .param p3, "jpeg"    # Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .prologue
    .line 4733
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/camera/core/SemCamera;->takePicture(Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;)V

    .line 4732
    return-void
.end method

.method public final takePicture(Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;)V
    .locals 2
    .param p1, "shutter"    # Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;
    .param p2, "raw"    # Lcom/samsung/android/camera/core/SemCamera$PictureCallback;
    .param p3, "postview"    # Lcom/samsung/android/camera/core/SemCamera$PictureCallback;
    .param p4, "jpeg"    # Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .prologue
    .line 4768
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera;->mShutterCallback:Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    .line 4769
    iput-object p2, p0, Lcom/samsung/android/camera/core/SemCamera;->mRawImageCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .line 4770
    iput-object p3, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostviewCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .line 4771
    iput-object p4, p0, Lcom/samsung/android/camera/core/SemCamera;->mJpegCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    .line 4774
    const/4 v0, 0x0

    .line 4775
    .local v0, "msgType":I
    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mShutterCallback:Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 4776
    const/4 v0, 0x2

    .line 4778
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mRawImageCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    if-eqz v1, :cond_1

    .line 4779
    or-int/lit16 v0, v0, 0x80

    .line 4781
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mPostviewCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    if-eqz v1, :cond_2

    .line 4782
    or-int/lit8 v0, v0, 0x40

    .line 4784
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mJpegCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    if-eqz v1, :cond_3

    .line 4785
    or-int/lit16 v0, v0, 0x100

    .line 4788
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core/SemCamera;->native_takePicture(I)V

    .line 4789
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/camera/core/SemCamera;->mFaceDetectionRunning:Z

    .line 4767
    return-void
.end method

.method public terminateBurstShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5474
    const/16 v0, 0x48b

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core/SemCamera;->native_sendcommand(III)V

    .line 5473
    return-void
.end method

.method public declared-synchronized unflatten(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p1, "flattened"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 6336
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6338
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3b

    invoke-direct {v5, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 6339
    .local v5, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v5, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 6340
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "kv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6341
    .local v1, "kv":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 6342
    .local v4, "pos":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 6345
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6346
    .local v0, "k":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 6347
    .local v6, "v":Ljava/lang/String;
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "kv":Ljava/lang/String;
    .end local v2    # "kv$iterator":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "pos":I
    .end local v5    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v6    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v2    # "kv$iterator":Ljava/util/Iterator;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    monitor-exit p0

    .line 6349
    return-object v3
.end method

.method public final native unlock()V
.end method

.method public final native unregisterRecordingSurface()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
