.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;,
        Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
    }
.end annotation


# static fields
.field public static final AFW_MODE_ON:I = 0x1

.field public static final ANTISHAKE_OFF:I = 0x0

.field public static final ANTISHAKE_ON:I = 0x1

.field public static final ANTI_FOG_LEVEL_0:I = 0x0

.field public static final ANTI_FOG_LEVEL_1:I = 0x1

.field public static final ANTI_FOG_LEVEL_2:I = 0x2

.field public static final ANTI_FOG_LEVEL_3:I = 0x3

.field public static final ANTI_FOG_LEVEL_4:I = 0x4

.field public static final ANTI_FOG_LEVEL_5:I = 0x5

.field public static final ANTI_FOG_LEVEL_6:I = 0x6

.field public static final ANTI_FOG_LEVEL_7:I = 0x7

.field public static final ANTI_FOG_LEVEL_8:I = 0x8

.field public static final ANTI_FOG_LEVEL_9:I = 0x9

.field public static final ATTACHMODE_CAMERA_NORMAL:I = 0x1

.field public static final ATTACHMODE_NONE:I = 0x0

.field public static final ATTACHMODE_VIDEO_NORMAL:I = 0x2

.field public static final AUDIO_RECORDING_OFF:I = 0x0

.field public static final AUDIO_RECORDING_ON:I = 0x1

.field public static final AUTO_NIGHT_DETECTION_OFF:I = 0x0

.field public static final AUTO_NIGHT_DETECTION_ON:I = 0x1

.field public static final BEAUTYFACE_LEVEL_0:I = 0x0

.field public static final BEAUTYFACE_LEVEL_1:I = 0x1

.field public static final BEAUTYFACE_LEVEL_2:I = 0x2

.field public static final BEAUTYFACE_LEVEL_3:I = 0x3

.field public static final BEAUTYFACE_LEVEL_4:I = 0x4

.field public static final BEAUTYFACE_LEVEL_5:I = 0x5

.field public static final BEAUTYFACE_LEVEL_6:I = 0x6

.field public static final BEAUTYFACE_LEVEL_7:I = 0x7

.field public static final BEAUTYFACE_LEVEL_8:I = 0x8

.field public static final BEAUTY_LARGE_EYES:I = 0x1

.field public static final BEAUTY_SHAPE_CORRECTION:I = 0x3

.field public static final BEAUTY_SLIM:I = 0x2

.field public static final BEAUTY_SOFTEN:I = 0x0

.field public static final BEAUTY_SPOT_LIGHT:I = 0x4

.field public static final CALL_STATUS_OFF:I = 0x0

.field public static final CALL_STATUS_ON:I = 0x1

.field public static final CAMERA_FACING_FRONT:I = 0x1

.field public static final CAMERA_FACING_REAR:I = 0x0

.field public static final COLOR_TUNE_BREEZE:I = 0x1

.field public static final COLOR_TUNE_NONE:I = 0x0

.field public static final COLOR_TUNE_NOSTALGIA:I = 0x3

.field public static final COLOR_TUNE_SERENE:I = 0x5

.field public static final COLOR_TUNE_SOFT:I = 0x4

.field public static final COLOR_TUNE_TONE_1:I = 0x6

.field public static final COLOR_TUNE_TONE_2:I = 0x7

.field public static final COLOR_TUNE_VIVID:I = 0x2

.field public static final COVER_CAMERA_NONE:I = 0x0

.field public static final COVER_CAMERA_ON:I = 0x1

.field public static final CSC_KEY_AUTONIGHTDETECTION:Ljava/lang/String; = "csc_pref_camera_autonightdetection_key"

.field public static final CSC_KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "csc_pref_camcorder_resolution_key"

.field public static final CSC_KEY_CAMERA_FLASH:Ljava/lang/String; = "csc_pref_camera_flash_key"

.field public static final CSC_KEY_FORCED_SHUTTERSOUND:Ljava/lang/String; = "csc_pref_camera_forced_shuttersound_key"

.field public static final CSC_KEY_SETUP_STORAGE:Ljava/lang/String; = "csc_pref_setup_storage_key"

.field public static final DEFAULT_ANTI_FOG_LEVEL:I = 0x5

.field public static final DEFAULT_BACK_CAMCORDER_ANTISHAKE:I

.field public static final DEFAULT_BEAUTY_MODE:I = 0x0

.field public static final DEFAULT_CAMCORDER_AUDIORECORDING:I = 0x1

.field public static final DEFAULT_CAMERA_AUTO_NIGHT_DETECTION:I = 0x1

.field public static final DEFAULT_CAMERA_EFFECT:I = 0x0

.field public static final DEFAULT_CAMERA_EXPOSURE_METER:I = 0x0

.field public static final DEFAULT_CAMERA_HDR:I

.field public static final DEFAULT_CAMERA_ID:I = 0x0

.field public static final DEFAULT_CAMERA_ISO:I = 0x0

.field public static final DEFAULT_CAMERA_PICTURE_FORMAT:I = 0x0

.field public static final DEFAULT_CAMERA_QUALITY:I = 0x0

.field public static final DEFAULT_CAMERA_SAVE_RICHTONE:I = 0x0

.field public static final DEFAULT_CAMERA_SHUTTER_SOUND:I = 0x1

.field public static final DEFAULT_CAMERA_SHUTTER_SPEED:I = -0x1

.field public static final DEFAULT_CAMERA_VOICE_COMMAND:I = 0x0

.field public static final DEFAULT_COLOR_TUNE:I = 0x0

.field public static final DEFAULT_DUAL_EFFECT:I

.field public static final DEFAULT_DUAL_MODE:I = 0x0

.field public static final DEFAULT_DUAL_TRACK_RECORDING_MODE:I = 0x0

.field public static final DEFAULT_EFFECT:I = 0x0

.field public static final DEFAULT_EFFECT_LIST_TYPE:I

.field public static final DEFAULT_EFFECT_STRENGTH_LEVEL:I = 0x64

.field public static final DEFAULT_EFFECT_VIGNETTE_LEVEL:I = 0x0

.field public static final DEFAULT_EXPOSUREVALUE:I = 0x0

.field public static final DEFAULT_EYEENLARGE_LEVEL:I = 0x0

.field public static final DEFAULT_FLASH:I = 0x0

.field public static final DEFAULT_FLOATING_CAMERA_BUTTON:I = 0x0

.field public static final DEFAULT_FOCUS_LENGTH:I = -0x1

.field public static final DEFAULT_FOCUS_MODE:I = 0x1

.field public static final DEFAULT_FOOD_BLUR_TYPE:I = 0x1

.field public static final DEFAULT_FOOD_COLOR_TUNE_VALUE:I = 0x4

.field public static final DEFAULT_FRONT_CAMCORDER_ANTISHAKE:I

.field public static final DEFAULT_FRONT_CAMERA_HDR:I

.field public static final DEFAULT_FRONT_FLASH:I = 0x0

.field public static final DEFAULT_FRONT_SHOOTINGMODE:I

.field public static final DEFAULT_GESTURE_CONTROL_MODE:I = 0x1

.field public static final DEFAULT_GPS:I = 0x0

.field public static final DEFAULT_GUIDELINE:I = 0x0

.field public static final DEFAULT_HRM_SHUTTER:I = 0x1

.field public static final DEFAULT_INTERVAL:I = 0x0

.field public static final DEFAULT_INTERVAL_CAPTURE_COUNT:I = 0x3

.field public static final DEFAULT_KELVIN_VALUE:I = 0x37

.field public static final DEFAULT_MIN_ZOOM_RATIO:I = 0x64

.field public static final DEFAULT_MOTION_FPS:I = -0x1

.field public static final DEFAULT_MOTION_PANORAMA_MODE:I = 0x1

.field public static final DEFAULT_MOTION_PHOTO_VALUE:I = 0x0

.field public static final DEFAULT_MOTION_SPEED:I = 0x0

.field public static final DEFAULT_MOTION_WIDESELFIE_MODE:I = 0x1

.field public static final DEFAULT_MULTI_AF_MODE:I

.field public static final DEFAULT_OBJECT_TRACKING_AF:I = 0x0

.field public static final DEFAULT_QRCODE_DETECTION:I = 0x1

.field public static final DEFAULT_QUICK_LAUNCH:I = 0x1

.field public static final DEFAULT_REAR_LENS_DISTORTION_CORRECTION:I = 0x0

.field public static final DEFAULT_REVIEW:I = 0x0

.field public static final DEFAULT_SELF_FLIP:I = 0x0

.field public static final DEFAULT_SHAPE_CORRECTION_MODE:I = 0x1

.field public static final DEFAULT_SHOOTINGMODE:I = 0x0

.field public static final DEFAULT_SHUTTER_SOUND:I = 0x1

.field public static final DEFAULT_SKINCOLOR_LEVEL:I = 0x0

.field public static final DEFAULT_SLIMFACE_LEVEL:I = 0x0

.field public static final DEFAULT_SOUND_AND_SHOT_MODE:I = 0x1

.field public static final DEFAULT_SPOTLIGHT_LEVEL:I = 0x0

.field public static final DEFAULT_SPOTLIGHT_POSITION:I = 0x1

.field public static final DEFAULT_STORAGE:I = 0x0

.field public static final DEFAULT_TAP_TO_TAKE_PICTURES:I = 0x0

.field public static final DEFAULT_TIMER:I = 0x0

.field public static final DEFAULT_VIDEO_COLLAGE_RECORDING_TIME:I = 0x1

.field public static final DEFAULT_VIDEO_COLLAGE_TYPE:I = 0xc

.field public static final DEFAULT_VIEW_MODE:I

.field public static final DEFAULT_VOLUME_KEY_AS:I

.field public static final DEFAULT_WATERMARK_CATEGORY:I = 0x0

.field public static final DEFAULT_WATERMARK_ID:I = 0x238c

.field public static final DEFAULT_WHITE_BALANCE:I = 0x0

.field public static final DEFAULT_ZOOM_VALUE:I = 0x0

.field public static final DUAL_MODE_OFF:I = 0x0

.field public static final DUAL_MODE_ON:I = 0x1

.field public static final DUAL_TRACK_RECORDING_OFF:I = 0x0

.field public static final DUAL_TRACK_RECORDING_ON:I = 0x1

.field public static final EFFECT_BW:I = 0x2

.field public static final EFFECT_DUAL_CIRCLELENS:I = 0x2f

.field public static final EFFECT_DUAL_CUBISM:I = 0x29

.field public static final EFFECT_DUAL_FLIP_PHOTO:I = 0x30

.field public static final EFFECT_DUAL_HEART:I = 0x2c

.field public static final EFFECT_DUAL_NORMAL:I = 0x28

.field public static final EFFECT_DUAL_OVAL_BLUR:I = 0x2b

.field public static final EFFECT_DUAL_POLAROID:I = 0x2e

.field public static final EFFECT_DUAL_POSTCARD:I = 0x2a

.field public static final EFFECT_DUAL_SPLIT_VIEW:I = 0x2d

.field public static final EFFECT_LIST_TYPE_FILTER:I = 0x0

.field public static final EFFECT_LIST_TYPE_WATERMARK:I = 0x1

.field public static final EFFECT_NEGATIVE:I = 0x3

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_POINT_BLUE:I = 0x1c

.field public static final EFFECT_POINT_GREEN:I = 0x1e

.field public static final EFFECT_POINT_RED_YELLOW:I = 0x1d

.field public static final EFFECT_POSTERIZE:I = 0x1b

.field public static final EFFECT_SEPIA:I = 0x1

.field public static final EFFECT_SINGLE_NATIVE_OFFSET:I = 0x190

.field public static final EFFECT_SOLARIZE:I = 0x18

.field public static final EFFECT_VINTAGE_COLD:I = 0x1a

.field public static final EFFECT_VINTAGE_WARM:I = 0x19

.field public static final EFFECT_WASHED:I = 0x1f

.field public static final EV_0:I = 0x0

.field public static final EV_MINUS_0_1:I = -0x1

.field public static final EV_MINUS_0_2:I = -0x2

.field public static final EV_MINUS_0_3:I = -0x3

.field public static final EV_MINUS_0_4:I = -0x4

.field public static final EV_MINUS_0_5:I = -0x5

.field public static final EV_MINUS_0_6:I = -0x6

.field public static final EV_MINUS_0_7:I = -0x7

.field public static final EV_MINUS_0_8:I = -0x8

.field public static final EV_MINUS_0_9:I = -0x9

.field public static final EV_MINUS_1_0:I = -0xa

.field public static final EV_MINUS_1_1:I = -0xb

.field public static final EV_MINUS_1_2:I = -0xc

.field public static final EV_MINUS_1_3:I = -0xd

.field public static final EV_MINUS_1_4:I = -0xe

.field public static final EV_MINUS_1_5:I = -0xf

.field public static final EV_MINUS_1_6:I = -0x10

.field public static final EV_MINUS_1_7:I = -0x11

.field public static final EV_MINUS_1_8:I = -0x12

.field public static final EV_MINUS_1_9:I = -0x13

.field public static final EV_MINUS_2_0:I = -0x14

.field public static final EV_PLUS_0_1:I = 0x1

.field public static final EV_PLUS_0_2:I = 0x2

.field public static final EV_PLUS_0_3:I = 0x3

.field public static final EV_PLUS_0_4:I = 0x4

.field public static final EV_PLUS_0_5:I = 0x5

.field public static final EV_PLUS_0_6:I = 0x6

.field public static final EV_PLUS_0_7:I = 0x7

.field public static final EV_PLUS_0_8:I = 0x8

.field public static final EV_PLUS_0_9:I = 0x9

.field public static final EV_PLUS_1_0:I = 0xa

.field public static final EV_PLUS_1_1:I = 0xb

.field public static final EV_PLUS_1_2:I = 0xc

.field public static final EV_PLUS_1_3:I = 0xd

.field public static final EV_PLUS_1_4:I = 0xe

.field public static final EV_PLUS_1_5:I = 0xf

.field public static final EV_PLUS_1_6:I = 0x10

.field public static final EV_PLUS_1_7:I = 0x11

.field public static final EV_PLUS_1_8:I = 0x12

.field public static final EV_PLUS_1_9:I = 0x13

.field public static final EV_PLUS_2_0:I = 0x14

.field public static final EV_STEP:F = 0.1f

.field public static final EXPOSURE_METER_CENTER:I = 0x0

.field public static final EXPOSURE_METER_MATRIX:I = 0x2

.field public static final EXPOSURE_METER_SPOT:I = 0x1

.field public static final EXT_EFFECT_NONE:I = 0x1f40

.field public static final EYEENLARGE_LEVEL_0:I = 0x0

.field public static final EYEENLARGE_LEVEL_1:I = 0x1

.field public static final EYEENLARGE_LEVEL_2:I = 0x2

.field public static final EYEENLARGE_LEVEL_3:I = 0x3

.field public static final EYEENLARGE_LEVEL_4:I = 0x4

.field public static final EYEENLARGE_LEVEL_5:I = 0x5

.field public static final EYEENLARGE_LEVEL_6:I = 0x6

.field public static final EYEENLARGE_LEVEL_7:I = 0x7

.field public static final EYEENLARGE_LEVEL_8:I = 0x8

.field public static final FLASHMODE_AUTO:I = 0x1

.field public static final FLASHMODE_OFF:I = 0x0

.field public static final FLASHMODE_ON:I = 0x2

.field public static final FLASHMODE_TORCH:I = 0x3

.field public static final FLIP_OFF:I = 0x0

.field public static final FLIP_ON:I = 0x1

.field public static final FLOATING_CAMERA_BUTTON_OFF:I = 0x0

.field public static final FLOATING_CAMERA_BUTTON_ON:I = 0x1

.field public static final FOCUSMODE_AF:I = 0x1

.field public static final FOCUSMODE_CONTINUOUS_PICTURE:I = 0x6

.field public static final FOCUSMODE_CONTINUOUS_VIDEO:I = 0x5

.field public static final FOCUSMODE_FACEDETECTION:I = 0x4

.field public static final FOCUSMODE_MACRO:I = 0x9

.field public static final FOCUSMODE_MANUAL:I = 0x3

.field public static final FOCUSMODE_OBJECT_TRACKING_PICTURE:I = 0x7

.field public static final FOCUSMODE_OBJECT_TRACKING_VIDEO:I = 0x8

.field public static final FOCUSMODE_OFF:I = 0x0

.field public static final FOCUSMODE_SINGLE_AF:I = 0x2

.field public static final FOCUSMODE_UNSET:I = -0x1

.field public static final FOOD_BLUR_EFFECT_OFF:I = 0x0

.field public static final FOOD_BLUR_EFFECT_ON:I = 0x1

.field public static final FORCED_SHUTTER_SOUND_OFF:I = 0x0

.field public static final FORCED_SHUTTER_SOUND_ON:I = 0x1

.field public static final FULLVIEW:I = 0x1

.field public static final GESTURE_CONTROL_OFF:I = 0x0

.field public static final GESTURE_CONTROL_ON:I = 0x1

.field public static final GPS_OFF:I = 0x0

.field public static final GPS_ON:I = 0x1

.field public static final GUIDELINE_3BY3:I = 0x1

.field public static final GUIDELINE_OFF:I = 0x0

.field public static final GUIDELINE_SQUARE:I = 0x2

.field public static final HDR_AUTO:I = 0x1

.field public static final HDR_OFF:I = 0x0

.field public static final HDR_ON:I = 0x2

.field public static final HRM_SHUTTER_OFF:I = 0x0

.field public static final HRM_SHUTTER_ON:I = 0x1

.field public static final INTERVAL_OFF:I = 0x0

.field public static final INTERVAL_ON:I = 0x1

.field public static final ISO_100:I = 0x3

.field public static final ISO_125:I = 0x4

.field public static final ISO_160:I = 0x5

.field public static final ISO_200:I = 0x6

.field public static final ISO_250:I = 0x7

.field public static final ISO_320:I = 0x8

.field public static final ISO_400:I = 0x9

.field public static final ISO_50:I = 0x1

.field public static final ISO_500:I = 0xa

.field public static final ISO_640:I = 0xb

.field public static final ISO_80:I = 0x2

.field public static final ISO_800:I = 0xc

.field public static final ISO_AUTO:I = 0x0

.field public static final KEY_AUTO_NIGHT_DETECTION:Ljava/lang/String; = "pref_global_auto_night_detection_key"

.field public static final KEY_BACK_CAMERA_BEAUTY_LEVEL:Ljava/lang/String; = "pref_global_back_camera_beauty_level_key"

.field public static final KEY_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = "pref_global_back_camera_shooting_mode_order"

.field public static final KEY_BACK_EFFECT_LIST_TYPE:Ljava/lang/String; = "pref_back_effect_list_type"

.field public static final KEY_BACK_VIDEO_COLLAGE_RECORDING_TIME:Ljava/lang/String; = "pref_back_video_collage_recording_time"

.field public static final KEY_BACK_VIDEO_COLLAGE_TYPE:Ljava/lang/String; = "pref_back_video_collage_type"

.field public static final KEY_CAMCORDER_ANTISHAKE:Ljava/lang/String; = "pref_global_camcorder_antishake_key"

.field public static final KEY_CAMCORDER_DUAL_RESOLUTION:Ljava/lang/String; = "pref_camcorder_dual_resolution_key"

.field public static final KEY_CAMCORDER_FRONT_RESOLUTION:Ljava/lang/String; = "pref_camcorder_front_resolution_key"

.field public static final KEY_CAMCORDER_REAR_RESOLUTION:Ljava/lang/String; = "pref_camcorder_rear_resolution_key"

.field public static final KEY_CAMERA_ANTI_FOG_LEVEL:Ljava/lang/String; = "pref_camera_anti_fog_level_key"

.field public static final KEY_CAMERA_BEAUTY_LEVEL:Ljava/lang/String; = "pref_global_camera_beauty_level_key"

.field public static final KEY_CAMERA_BEAUTY_MODE:Ljava/lang/String; = "pref_camera_beauty_mode"

.field public static final KEY_CAMERA_COLOR_TUNE:Ljava/lang/String; = "pref_camera_colortune"

.field public static final KEY_CAMERA_DUAL_FRONT_RESOLUTION:Ljava/lang/String; = "pref_camera_dual_front_resolution_key"

.field public static final KEY_CAMERA_DUAL_REAR_RESOLUTION:Ljava/lang/String; = "pref_camera_dual_rear_resolution_key"

.field public static final KEY_CAMERA_EXPOSURE_METER:Ljava/lang/String; = "pref_global_camera_exposure_meter_key"

.field public static final KEY_CAMERA_EXPOSURE_VALUE:Ljava/lang/String; = "pref_global_camera_exposure_value_key"

.field public static final KEY_CAMERA_EYEENLARGE_LEVEL:Ljava/lang/String; = "pref_global_camera_eyeenlarge_level_key"

.field public static final KEY_CAMERA_FOCUS:Ljava/lang/String; = "pref_camera_focus_key"

.field public static final KEY_CAMERA_FOOD_LEVEL:Ljava/lang/String; = "pref_camera_food_level_key"

.field public static final KEY_CAMERA_FRONT_RESOLUTION:Ljava/lang/String; = "pref_camera_front_resolution_key"

.field public static final KEY_CAMERA_GESTURE_CONTROL_MODE:Ljava/lang/String; = "pref_global_camera_detection_mode_key"

.field public static final KEY_CAMERA_GUIDELINE:Ljava/lang/String; = "pref_camera_guideline_key"

.field public static final KEY_CAMERA_HELP:Ljava/lang/String; = "pref_camera_help_key"

.field public static final KEY_CAMERA_HRM_SHUTTER:Ljava/lang/String; = "pref_camera_hrm_shutter_key"

.field public static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_global_camera_id_key"

.field public static final KEY_CAMERA_ISO:Ljava/lang/String; = "pref_global_camera_iso_key"

.field public static final KEY_CAMERA_KELVIN:Ljava/lang/String; = "pref_global_camera_kelvin_key"

.field public static final KEY_CAMERA_PICTURE_FORMAT:Ljava/lang/String; = "pref_global_camera_picture_format"

.field public static final KEY_CAMERA_QRCODE_DETECTION:Ljava/lang/String; = "pref_camera_qrcode_detection"

.field public static final KEY_CAMERA_QUICK_SHOT:Ljava/lang/String; = "pref_global_camera_quick_shot"

.field public static final KEY_CAMERA_REAR_RESOLUTION:Ljava/lang/String; = "pref_camera_rear_resolution_key"

.field public static final KEY_CAMERA_RESET:Ljava/lang/String; = "pref_camera_reset"

.field public static final KEY_CAMERA_SAVE_RICHTONE:Ljava/lang/String; = "pref_global_camera_save_richtone_key"

.field public static final KEY_CAMERA_SHPAE_CORRECTION_MODE:Ljava/lang/String; = "pref_global_camera_shapecorrection_key"

.field public static final KEY_CAMERA_SHUTTER_SOUND:Ljava/lang/String; = "pref_global_camera_shutter_sound_key"

.field public static final KEY_CAMERA_SHUTTER_SPEED:Ljava/lang/String; = "pref_global_camera_shutter_speed_key"

.field public static final KEY_CAMERA_SKINCOLOR_LEVEL:Ljava/lang/String; = "pref_global_camera_skincolor_level_key"

.field public static final KEY_CAMERA_SLIMFACE_LEVEL:Ljava/lang/String; = "pref_global_camera_slimface_level_key"

.field public static final KEY_CAMERA_SPOTLIGHT_LEVEL:Ljava/lang/String; = "pref_global_camera_spotlight_level_key"

.field public static final KEY_CAMERA_SPOTLIGHT_POSITION:Ljava/lang/String; = "pref_global_camera_spotlight_position_key"

.field public static final KEY_CAMERA_TAP_TO_TAKE_PICTURES:Ljava/lang/String; = "pref_camera_tap_to_take_pictures_key"

.field public static final KEY_CAMERA_VIEWMODE:Ljava/lang/String; = "pref_global_camera_fullpreview_key"

.field public static final KEY_CAMERA_VOLUME_KEY_AS:Ljava/lang/String; = "pref_global_camera_volume_key_as"

.field public static final KEY_CAMERA_WHITE_BALANCE:Ljava/lang/String; = "pref_global_camera_white_balance_key"

.field public static final KEY_DUAL_EFFECT:Ljava/lang/String; = "pref_global_camera_dual_effect"

.field public static final KEY_DUAL_TRACK_RECORDING:Ljava/lang/String; = "pref_global_camera_dual_track_recording"

.field public static final KEY_FIRST_LAUNCH_CAMERA_BY_HOME_KEY:Ljava/lang/String; = "pref_global_first_launch_camera_key_by_home_key"

.field public static final KEY_FLASH:Ljava/lang/String; = "pref_flash_key"

.field public static final KEY_FLOATING_CAMERA_BUTTON:Ljava/lang/String; = "pref_global_setup_floating_camera_button_key"

.field public static final KEY_FOCUS_LENGTH:Ljava/lang/String; = "pref_global_focus_length"

.field public static final KEY_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = "pref_global_front_camera_shooting_mode_order"

.field public static final KEY_FRONT_EFFECT_LIST_TYPE:Ljava/lang/String; = "pref_front_effect_list_type"

.field public static final KEY_FRONT_FLASH:Ljava/lang/String; = "pref_front_flash_key"

.field public static final KEY_FRONT_HDR:Ljava/lang/String; = "pref_camera_front_hdr_key"

.field public static final KEY_FRONT_VIDEO_COLLAGE_RECORDING_TIME:Ljava/lang/String; = "pref_front_video_collage_recording_time"

.field public static final KEY_FRONT_VIDEO_COLLAGE_TYPE:Ljava/lang/String; = "pref_front_video_collage_type"

.field public static final KEY_HRM_SENSOR_CAPTURE_UNAVAILABLE_GUIDE_POPUP:Ljava/lang/String; = "hrm_sensor_capture_unavailable_guide_popup"

.field public static final KEY_INTERVAL:Ljava/lang/String; = "pref_camera_interval_key"

.field public static final KEY_MOTION_PANORAMA_MODE:Ljava/lang/String; = "pref_global_camera_motion_panorama_mode"

.field public static final KEY_MOTION_PHOTO:Ljava/lang/String; = "pref_global_motion_photo_key"

.field public static final KEY_MOTION_WIDE_SELFIE_MODE:Ljava/lang/String; = "pref_global_camera_motion_wide_selfie_mode"

.field public static final KEY_MULTI_AF_MODE:Ljava/lang/String; = "pref_camera_multi_af_mode"

.field public static final KEY_OVERRIDDEN_CAMCORDER_RESOLUTION:Ljava/lang/String; = "pref_overridden_camcorder_resolution"

.field public static final KEY_REAR_HDR:Ljava/lang/String; = "pref_camera_rear_hdr_key"

.field public static final KEY_REAR_LENS_DISTORTION_CORRECTION:Ljava/lang/String; = "pref_global_rear_lens_distortion_correction_key"

.field public static final KEY_RECORDING_MOTION_SPEED:Ljava/lang/String; = "pref_recording_motion_speed_key"

.field public static final KEY_SETUP_GPS:Ljava/lang/String; = "pref_global_setup_gps_key"

.field public static final KEY_SETUP_OBJECT_TRACKING_AF:Ljava/lang/String; = "pref_global_setup_object_trackingaf_key"

.field public static final KEY_SETUP_REVIEW:Ljava/lang/String; = "pref_global_setup_review_key"

.field public static final KEY_SETUP_SELF_FLIP:Ljava/lang/String; = "pref_global_setup_self_flip_key"

.field public static final KEY_SETUP_STORAGE:Ljava/lang/String; = "pref_global_setup_storage_key"

.field public static final KEY_SETUP_VOICE_CONTROL:Ljava/lang/String; = "pref_global_setup_voice_control_key"

.field public static final KEY_TIMER:Ljava/lang/String; = "pref_camera_timer_key"

.field public static final KEY_WATERMARK_CATEGORY:Ljava/lang/String; = "pref_camera_watermark_category"

.field public static final KNOX_MODE_ON:I = 0x1

.field public static final MANUAL_FOCUS_AUTO:I = 0x0

.field public static final MANUAL_FOCUS_OFF:I = 0x1

.field public static final MANUAL_FOCUS_ON:I = 0x2

.field public static final MANUAL_SETTING_OFF:I = 0x0

.field public static final MANUAL_SETTING_ON:I = 0x1

.field public static final MENUID_ANTI_FOG_LEVEL:I = 0x75

.field public static final MENUID_ATTACH_MODE:I = 0x21

.field public static final MENUID_AUTO_NIGHT_DETECTION:I = 0x57

.field public static final MENUID_BACK:I = 0x1c

.field public static final MENUID_BACK_BEAUTYFACE_LEVEL:I = 0xb4

.field public static final MENUID_BEAUTYFACE_LEVEL:I = 0x6d

.field public static final MENUID_BEAUTY_LITE_MODE:I = 0x82

.field public static final MENUID_BEAUTY_MODE:I = 0x81

.field public static final MENUID_CALL_STATUS_MODE:I = 0x136

.field public static final MENUID_CAMCORDER_ANTISHAKE:I = 0xbbf

.field public static final MENUID_CAMCORDER_AUDIORECORDING:I = 0xbbc

.field public static final MENUID_CAMCORDER_FOCUSMODE:I = 0xbba

.field public static final MENUID_CAMCORDER_QUALITY:I = 0xbbb

.field public static final MENUID_CAMCORDER_RESOLUTION:I = 0xbb9

.field public static final MENUID_CAMERA_ID:I = 0x24

.field public static final MENUID_CAMERA_QUALITY:I = 0x10

.field public static final MENUID_CAMERA_RESOLUTION:I = 0x4

.field public static final MENUID_COLOR_TUNE:I = 0xe

.field public static final MENUID_COVER_CAMERA:I = 0x137

.field public static final MENUID_EASYCAMERA_FLASHMODE:I = 0x6c

.field public static final MENUID_EASYCAMERA_FRONT_FLASHMODE:I = 0x6a

.field public static final MENUID_EASYCAMERA_HELP:I = 0x6b

.field public static final MENUID_EFFECT:I = 0x8

.field public static final MENUID_EFFECT_DUAL:I = 0x5a

.field public static final MENUID_EFFECT_STRENGTH_LEVEL:I = 0x97

.field public static final MENUID_EFFECT_VIGNETTE_LEVEL:I = 0x98

.field public static final MENUID_EXPOSUREMETER:I = 0xb

.field public static final MENUID_EXPOSUREVALUE:I = 0x7

.field public static final MENUID_EXTERNAL_DOWNLOAD:I = 0x232a

.field public static final MENUID_EXTERNAL_EFFECT:I = 0x2329

.field public static final MENUID_EXTERNAL_NOITEM:I = 0x232d

.field public static final MENUID_EYEENLARGE_LEVEL:I = 0x70

.field public static final MENUID_FASTMOTION_SPEED:I = 0x170f

.field public static final MENUID_FLASHMODE:I = 0x3

.field public static final MENUID_FLOATING_CAMERA_BUTTON:I = 0xb5

.field public static final MENUID_FOCUSMODE:I = 0x5

.field public static final MENUID_FOOD_BLUR_TYPE:I = 0x8d

.field public static final MENUID_FOOD_COLOR_TUNE:I = 0x76

.field public static final MENUID_FOOD_MACRO_MODE:I = 0x8f

.field public static final MENUID_FRONT_FLASHMODE:I = 0xaa

.field public static final MENUID_GESTURE_CONTROL:I = 0x7d

.field public static final MENUID_GPS:I = 0x14

.field public static final MENUID_GUIDELINE:I = 0x13

.field public static final MENUID_HDR:I = 0xc

.field public static final MENUID_HRM_SHUTTER:I = 0x74

.field public static final MENUID_IMAGEVIEWER:I = 0x1d

.field public static final MENUID_INTERVAL:I = 0x7f

.field public static final MENUID_ISO:I = 0xa

.field public static final MENUID_KELVIN:I = 0x23

.field public static final MENUID_KNOXMODE:I = 0x1b58

.field public static final MENUID_MANUAL_FOCUS:I = 0x18

.field public static final MENUID_MODE:I = 0x0

.field public static final MENUID_MORE_SETTING:I = 0x78

.field public static final MENUID_MOTION_PANORAMA_MODE:I = 0x87

.field public static final MENUID_MOTION_PHOTO:I = 0x2a

.field public static final MENUID_MOTION_WIDE_SELFIE_MODE:I = 0xad

.field public static final MENUID_MULTI_AF_MODE:I = 0x91

.field public static final MENUID_MY_USER_ID:I = 0x13e

.field public static final MENUID_OBJECT_TRACKING_AF:I = 0x17

.field public static final MENUID_PICTURE_FORMAT:I = 0x13b

.field public static final MENUID_QRCODE_DETECTION:I = 0x13c

.field public static final MENUID_QUICK_LAUNCH:I = 0x1a

.field public static final MENUID_REAR_LENS_DISTORTION_CORRECTION:I = 0x33

.field public static final MENUID_RECORDING:I = 0x41

.field public static final MENUID_RECORDING_MOTION_SPEED:I = 0x170d

.field public static final MENUID_REMAIN_COUNT:I = 0x28

.field public static final MENUID_REVIEW:I = 0x11

.field public static final MENUID_RICHTONE:I = 0x2e

.field public static final MENUID_SAVE_RICHTONE:I = 0x22

.field public static final MENUID_SCENEMODE:I = 0x2

.field public static final MENUID_SECURE_CAMERA:I = 0x13d

.field public static final MENUID_SELF_FLIP:I = 0x26

.field public static final MENUID_SHAPE_CORRECTION:I = 0x71

.field public static final MENUID_SHOOTINGMODE:I = 0x1

.field public static final MENUID_SHOOTING_MODE_DOWNLOAD:I = 0x7e

.field public static final MENUID_SHUTTER:I = 0x20

.field public static final MENUID_SHUTTERSOUND:I = 0x15

.field public static final MENUID_SHUTTER_SPEED:I = 0x1f

.field public static final MENUID_SIDE_QUICK_SETTING:I = 0x79

.field public static final MENUID_SKINCOLOR_LEVEL:I = 0x7a

.field public static final MENUID_SLIMFACE_LEVEL:I = 0x6e

.field public static final MENUID_SLOWMOTION_SPEED:I = 0x170e

.field public static final MENUID_SOUND_AND_SHOT_MODE:I = 0x4d

.field public static final MENUID_SPOTLIGHT_LEVEL:I = 0x6f

.field public static final MENUID_SPOTLIGHT_POSITION:I = 0x77

.field public static final MENUID_STORAGE:I = 0x16

.field public static final MENUID_SWITCH_CAMERA:I = 0x7c

.field public static final MENUID_TALKBACK:I = 0x1770

.field public static final MENUID_TAP_TO_TAKE_PICTURES:I = 0x73

.field public static final MENUID_THUMBNAIL_LIST:I = 0x72

.field public static final MENUID_TIMER:I = 0x6

.field public static final MENUID_TORCH_LIGHT_MODE:I = 0x12c

.field public static final MENUID_VIDEO_COLLAGE_RECORDING_TIME:I = 0x84

.field public static final MENUID_VIDEO_COLLAGE_TYPE:I = 0x83

.field public static final MENUID_VIEWMODE:I = 0x138

.field public static final MENUID_VOICECOMMAND:I = 0x47

.field public static final MENUID_VOICE_RECORGNITION:I = 0x48

.field public static final MENUID_VOLUME_KEY_AS:I = 0x49

.field public static final MENUID_WATERMARK:I = 0xa0

.field public static final MENUID_WATERMARK_CATEGORY:I = 0xa1

.field public static final MENUID_WB:I = 0x9

.field public static final MENUID_ZOOM:I = 0x12

.field public static final MOTION_FPS_120:I = 0x78

.field public static final MOTION_FPS_240:I = 0xf0

.field public static final MOTION_FPS_60:I = 0x3c

.field public static final MOTION_PANORAMA_MODE_OFF:I = 0x0

.field public static final MOTION_PANORAMA_MODE_ON:I = 0x1

.field public static final MOTION_PHOTO_OFF:I = 0x0

.field public static final MOTION_PHOTO_ON:I = 0x1

.field public static final MOTION_SPEED_16X_FASTER:I = 0x3

.field public static final MOTION_SPEED_32X_FASTER:I = 0x4

.field public static final MOTION_SPEED_4X_FASTER:I = 0x1

.field public static final MOTION_SPEED_8X_FASTER:I = 0x2

.field public static final MOTION_WIDE_SELFIE_MODE_OFF:I = 0x0

.field public static final MOTION_WIDE_SELFIE_MODE_ON:I = 0x1

.field public static final MULTIWINDOW_MODE_FREEFORM:I = 0x1

.field public static final MULTIWINDOW_MODE_NONE:I = 0x0

.field public static final MULTIWINDOW_MODE_SPLIT:I = 0x2

.field public static final MULTI_AF_MODE_OFF:I = 0x0

.field public static final MULTI_AF_MODE_ON:I = 0x1

.field public static final NORMALVIEW:I = 0x0

.field public static final NOT_REQUESTED:I = -0x1

.field public static final NO_VALUE:I = 0x7fff

.field public static final OBJECT_TRACKING_AF_OFF:I = 0x0

.field public static final OBJECT_TRACKING_AF_ON:I = 0x1

.field public static final PICTURE_FORMAT_JPEG:I = 0x0

.field public static final PICTURE_FORMAT_RAW:I = 0x1

.field public static final QRCODE_DETECTION_OFF:I = 0x0

.field public static final QRCODE_DETECTION_ON:I = 0x1

.field public static final QUALITY_FINE:I = 0x0

.field public static final QUALITY_FOR_FIXED_BURST:I = 0x0

.field public static final QUALITY_NORMAL:I = 0x0

.field public static final QUALITY_SUPERFINE:I = 0x0

.field public static final QUICK_LAUNCH_OFF:I = 0x0

.field public static final QUICK_LAUNCH_ONLY:I = 0x1

.field public static final REAR_LENS_DISTORTION_CORRECTION_OFF:I = 0x0

.field public static final REAR_LENS_DISTORTION_CORRECTION_ON:I = 0x1

.field public static final REVIEW_OFF:I = 0x0

.field public static final REVIEW_ON:I = 0x1

.field public static final RICHTONE_AND_ORIGINAL:I = 0x1

.field public static final RICHTONE_ONLY:I = 0x0

.field public static final SCENEMODE_AQUA:I = 0x3

.field public static final SCENEMODE_FOOD:I = 0x4

.field public static final SCENEMODE_NIGHT:I = 0x1

.field public static final SCENEMODE_NONE:I = 0x0

.field public static final SCENEMODE_SPORTS:I = 0x2

.field public static final SECURE_CAMERA_NONE:I = 0x0

.field public static final SECURE_CAMERA_ON:I = 0x1

.field public static final SEMCAMERA_SINGLE_EFFECT:I = 0x47

.field public static final SEMCAMERA_SUPER_RESOLUTION_ZOOM:I = 0x41

.field public static final SHAPE_CORRECTION_OFF:I = 0x0

.field public static final SHAPE_CORRECTION_ON:I = 0x1

.field public static final SHOOTINGMODE_ANIMATEDGIF:I = 0x3a

.field public static final SHOOTINGMODE_ANTI_FOG:I = 0x31

.field public static final SHOOTINGMODE_AQUA_SCENE:I = 0x2a

.field public static final SHOOTINGMODE_AUTO:I = 0x0

.field public static final SHOOTINGMODE_BEAUTY:I = 0x7

.field public static final SHOOTINGMODE_CONTINUOUS:I = 0x11

.field public static final SHOOTINGMODE_CONTINUOUS_LITE:I = 0x1

.field public static final SHOOTINGMODE_DUAL:I = 0x2f

.field public static final SHOOTINGMODE_FAST_MOTION:I = 0x40

.field public static final SHOOTINGMODE_FOOD:I = 0x44

.field public static final SHOOTINGMODE_HYPER_MOTION:I = 0x4a

.field public static final SHOOTINGMODE_LVB:I = 0x46

.field public static final SHOOTINGMODE_MOTION_PANORAMA:I = 0x48

.field public static final SHOOTINGMODE_MOTION_WIDE_SELFIE:I = 0x4e

.field public static final SHOOTINGMODE_NIGHT:I = 0x17

.field public static final SHOOTINGMODE_NIGHT_SCENE:I = 0x27

.field public static final SHOOTINGMODE_PANORAMA:I = 0x2

.field public static final SHOOTINGMODE_PRO:I = 0x3b

.field public static final SHOOTINGMODE_PRODUCT_SEARCH:I = 0x4f

.field public static final SHOOTINGMODE_PRO_LITE:I = 0x4b

.field public static final SHOOTINGMODE_REAR_SELFIE:I = 0x38

.field public static final SHOOTINGMODE_RECORDING:I = 0x3

.field public static final SHOOTINGMODE_RICH_TONE:I = 0xe

.field public static final SHOOTINGMODE_SELECTIVE_FOCUS:I = 0x2d

.field public static final SHOOTINGMODE_SELFIE:I = 0x37

.field public static final SHOOTINGMODE_SEPARATED:I = 0x32

.field public static final SHOOTINGMODE_SHOT_AND_MORE:I = 0x2e

.field public static final SHOOTINGMODE_SLOW_MOTION:I = 0x3f

.field public static final SHOOTINGMODE_SOUND_AND_SHOT:I = 0x23

.field public static final SHOOTINGMODE_SPORTS_SCENE:I = 0x28

.field public static final SHOOTINGMODE_TAG_SHOT:I = 0x43

.field public static final SHOOTINGMODE_THEME:I = 0x20

.field public static final SHOOTINGMODE_VIDEO_COLLAGE:I = 0x45

.field public static final SHOOTINGMODE_VIRTUAL_SHOT:I = 0x3e

.field public static final SHOOTINGMODE_WIDE_SELFIE:I = 0x34

.field public static final SHOOTINGMODE_WIDE_SELFIE_LITE:I = 0x4d

.field public static final SHUTTER_SOUND_OFF:I = 0x0

.field public static final SHUTTER_SOUND_ON:I = 0x1

.field public static final SHUTTER_SPEED_1000:I = 0x9

.field public static final SHUTTER_SPEED_100000:I = 0x17

.field public static final SHUTTER_SPEED_1000000:I = 0x1d

.field public static final SHUTTER_SPEED_10000000:I = 0x21

.field public static final SHUTTER_SPEED_11111:I = 0x10

.field public static final SHUTTER_SPEED_125:I = 0x3

.field public static final SHUTTER_SPEED_125000:I = 0x18

.field public static final SHUTTER_SPEED_1333:I = 0xa

.field public static final SHUTTER_SPEED_166667:I = 0x19

.field public static final SHUTTER_SPEED_16667:I = 0x11

.field public static final SHUTTER_SPEED_167:I = 0x4

.field public static final SHUTTER_SPEED_2000:I = 0xb

.field public static final SHUTTER_SPEED_20000:I = 0x12

.field public static final SHUTTER_SPEED_2000000:I = 0x1e

.field public static final SHUTTER_SPEED_22222:I = 0x13

.field public static final SHUTTER_SPEED_250:I = 0x5

.field public static final SHUTTER_SPEED_250000:I = 0x1a

.field public static final SHUTTER_SPEED_2857:I = 0xc

.field public static final SHUTTER_SPEED_300000:I = 0x1b

.field public static final SHUTTER_SPEED_333:I = 0x6

.field public static final SHUTTER_SPEED_33333:I = 0x14

.field public static final SHUTTER_SPEED_4000:I = 0xd

.field public static final SHUTTER_SPEED_4000000:I = 0x1f

.field public static final SHUTTER_SPEED_42:I = 0x0

.field public static final SHUTTER_SPEED_500:I = 0x7

.field public static final SHUTTER_SPEED_50000:I = 0x15

.field public static final SHUTTER_SPEED_500000:I = 0x1c

.field public static final SHUTTER_SPEED_5556:I = 0xe

.field public static final SHUTTER_SPEED_63:I = 0x1

.field public static final SHUTTER_SPEED_66667:I = 0x16

.field public static final SHUTTER_SPEED_667:I = 0x8

.field public static final SHUTTER_SPEED_8000:I = 0xf

.field public static final SHUTTER_SPEED_8000000:I = 0x20

.field public static final SHUTTER_SPEED_83:I = 0x2

.field public static final SHUTTER_SPEED_AUTO:I = -0x1

.field public static final SLIMFACE_LEVEL_0:I = 0x0

.field public static final SLIMFACE_LEVEL_1:I = 0x1

.field public static final SLIMFACE_LEVEL_2:I = 0x2

.field public static final SLIMFACE_LEVEL_3:I = 0x3

.field public static final SLIMFACE_LEVEL_4:I = 0x4

.field public static final SLIMFACE_LEVEL_5:I = 0x5

.field public static final SLIMFACE_LEVEL_6:I = 0x6

.field public static final SLIMFACE_LEVEL_7:I = 0x7

.field public static final SLIMFACE_LEVEL_8:I = 0x8

.field public static final SOUND_AND_SHOT_MODE_ADD_VOICE:I = 0x1

.field public static final SOUND_AND_SHOT_MODE_AUTO:I = 0x0

.field public static final SPOTLIGHT_POSITION_CENTER:I = 0x1

.field public static final SPOTLIGHT_POSITION_LEFT:I = 0x0

.field public static final SPOTLIGHT_POSITION_RIGHT:I = 0x2

.field public static final SPOT_LIGHT_LEVEL_0:I = 0x0

.field public static final SPOT_LIGHT_LEVEL_1:I = 0x1

.field public static final SPOT_LIGHT_LEVEL_2:I = 0x2

.field public static final SPOT_LIGHT_LEVEL_3:I = 0x3

.field public static final SPOT_LIGHT_LEVEL_4:I = 0x4

.field public static final SPOT_LIGHT_LEVEL_5:I = 0x5

.field public static final SPOT_LIGHT_LEVEL_6:I = 0x6

.field public static final SPOT_LIGHT_LEVEL_7:I = 0x7

.field public static final SPOT_LIGHT_LEVEL_8:I = 0x8

.field public static final STORAGE_MMC:I = 0x1

.field public static final STORAGE_PHONE:I = 0x0

.field public static final TALKBACK_OFF:I = 0x0

.field public static final TALKBACK_ON:I = 0x1

.field public static final TAP_TO_TAKE_PICTURES_OFF:I = 0x0

.field public static final TAP_TO_TAKE_PICTURES_ON:I = 0x1

.field public static final TIMER_10S:I = 0x3

.field public static final TIMER_2S:I = 0x1

.field public static final TIMER_5S:I = 0x2

.field public static final TIMER_OFF:I = 0x0

.field public static final TORCH_LIGHT_OFF:I = 0x0

.field public static final TORCH_LIGHT_ON:I = 0x1

.field public static final USER_ID_OTHERS:I = 0x1

.field public static final USER_ID_OWNER:I = 0x0

.field public static final VIDEO_COLLAGE_RECORDING_TIME_15S:I = 0x3

.field public static final VIDEO_COLLAGE_RECORDING_TIME_3S:I = 0x0

.field public static final VIDEO_COLLAGE_RECORDING_TIME_6S:I = 0x1

.field public static final VIDEO_COLLAGE_RECORDING_TIME_9S:I = 0x2

.field public static final VIDEO_COLLAGE_TYPE_COLLAGE_1_BY_1_01:I = 0x6

.field public static final VIDEO_COLLAGE_TYPE_COLLAGE_1_BY_1_02:I = 0x7

.field public static final VIDEO_COLLAGE_TYPE_COLLAGE_1_BY_1_03:I = 0x8

.field public static final VIDEO_COLLAGE_TYPE_COLLAGE_1_BY_1_04:I = 0x9

.field public static final VIDEO_COLLAGE_TYPE_COLLAGE_4_BY_3_01:I = 0xa

.field public static final VIDEO_COLLAGE_TYPE_COLLAGE_4_BY_3_02:I = 0xb

.field public static final VIDEO_COLLAGE_TYPE_COLLAGE_4_BY_3_03:I = 0xc

.field public static final VIDEO_COLLAGE_TYPE_COLLAGE_4_BY_3_04:I = 0xd

.field public static final VIDEO_COLLAGE_TYPE_NONE:I = 0x0

.field public static final VIDEO_COLLAGE_TYPE_SERIAL_1_BY_1:I = 0x4

.field public static final VIDEO_COLLAGE_TYPE_SERIAL_4_BY_3:I = 0x5

.field public static final VIDEO_COLLAGE_TYPE_SLOW_MOTION_01:I = 0x1

.field public static final VIDEO_COLLAGE_TYPE_SLOW_MOTION_02:I = 0x2

.field public static final VIDEO_COLLAGE_TYPE_SLOW_MOTION_03:I = 0x3

.field public static final VOICE_COMMAND_OFF:I = 0x0

.field public static final VOICE_COMMAND_ON:I = 0x1

.field public static final VOLUME_KEY_AS_CAMERA:I = 0x1

.field public static final VOLUME_KEY_AS_RECORD:I = 0x2

.field public static final VOLUME_KEY_AS_SYSTEM_VOLUME:I = 0x0

.field public static final VOLUME_KEY_AS_ZOOM:I = 0x3

.field public static final WATERMARK_CATEGORY_EMOJI:I = 0x0

.field public static final WATERMARK_CATEGORY_FOOD:I = 0x4

.field public static final WATERMARK_CATEGORY_SPORT:I = 0x5

.field public static final WATERMARK_CATEGORY_TIME:I = 0x1

.field public static final WATERMARK_CATEGORY_TRAVEL:I = 0x2

.field public static final WATERMARK_CATEGORY_WEATHER:I = 0x3

.field public static final WATERMARK_NONE:I = 0x238c

.field public static final WB_AUTO:I = 0x0

.field public static final WB_CLOUDY:I = 0x4

.field public static final WB_DAYLIGHT:I = 0x3

.field public static final WB_FLUORESCENT:I = 0x2

.field public static final WB_INCANDESCENT:I = 0x1

.field public static final WB_KELVIN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VIEW_MODE:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x37

    :goto_1
    sput v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_FRONT_SHOOTINGMODE:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FLIP_PHOTO:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x30

    :goto_2
    sput v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_DUAL_EFFECT:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    sput v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_CAMERA_HDR:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    sput v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_FRONT_CAMERA_HDR:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE_DEFAULT_ON:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    sput v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_BACK_CAMCORDER_ANTISHAKE:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    sput v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_FRONT_CAMCORDER_ANTISHAKE:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->ACTIVE_KEY:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    :goto_7
    sput v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VOLUME_KEY_AS:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_AF:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    sput v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_MULTI_AF_MODE:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_WATERMARK:Z

    if-eqz v0, :cond_a

    :goto_9
    sput v1, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_EFFECT_LIST_TYPE:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/16 v0, 0x2a

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    :cond_a
    move v1, v2

    goto :goto_9
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getAntiFogLevel()I
.end method

.method public abstract getAttachVideoFixedResolution()I
.end method

.method public abstract getAutoNightDetectionMode()I
.end method

.method public abstract getBackBeautyLevel()I
.end method

.method public abstract getBackCameraShootingModeOrder()Ljava/lang/String;
.end method

.method public abstract getBeautyLevel()I
.end method

.method public abstract getBeautyMode()I
.end method

.method public abstract getCallStatus()I
.end method

.method public abstract getCamcorderAntiShake()I
.end method

.method public abstract getCamcorderAudioRecording()I
.end method

.method public abstract getCamcorderResolution()I
.end method

.method public abstract getCamcorderVideoDurationInMS()I
.end method

.method public abstract getCameraDualEffect()I
.end method

.method public abstract getCameraExposureMeter()I
.end method

.method public abstract getCameraFacing()I
.end method

.method public abstract getCameraFocusMode()I
.end method

.method public abstract getCameraHDR()I
.end method

.method public abstract getCameraISO()I
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getCameraQuality()I
.end method

.method public abstract getCameraResolution()I
.end method

.method public abstract getCameraResolutionByCameraId(I)I
.end method

.method public abstract getCameraResolutionChanged()Z
.end method

.method public abstract getCameraResolutionForDual()I
.end method

.method public abstract getCameraShutterSound()I
.end method

.method public abstract getCameraSingleEffect()I
.end method

.method public abstract getCameraVoiceCommand()I
.end method

.method public abstract getColorTune()I
.end method

.method public abstract getCommandIdByCurrentShootingMode()I
.end method

.method public abstract getCommandIdByShootingMode(I)I
.end method

.method public abstract getDefaultBackBeautyLevel()I
.end method

.method public abstract getDefaultBackCameraShootingModeOrder()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultBeautyLevel()I
.end method

.method public abstract getDefaultCamcorderResolution()I
.end method

.method public abstract getDefaultFrontCameraShootingModeOrder()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultShootingModeByCurrentCameraId()I
.end method

.method public abstract getEffectListType()I
.end method

.method public abstract getEffectNameForLogging(I)Ljava/lang/String;
.end method

.method public abstract getEffectProcessorMode()I
.end method

.method public abstract getEffectStrengthLevel()I
.end method

.method public abstract getEffectVignetteLevel()I
.end method

.method public abstract getExposureValue()I
.end method

.method public abstract getEyeEnlargeLevel()I
.end method

.method public abstract getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;
.end method

.method public abstract getFlashMode()I
.end method

.method public abstract getFloatingCameraButton()I
.end method

.method public abstract getFocusLength()I
.end method

.method public abstract getFontScale()F
.end method

.method public abstract getFoodBlurType()I
.end method

.method public abstract getFoodColorTuneValue()I
.end method

.method public abstract getForcedShutterSound()I
.end method

.method public abstract getFrontCameraShootingModeOrder()Ljava/lang/String;
.end method

.method public abstract getFrontFlashMode()I
.end method

.method public abstract getGPS()I
.end method

.method public abstract getGestureControlMode()I
.end method

.method public abstract getGuideline()I
.end method

.method public abstract getHRMShutter()I
.end method

.method public abstract getInitialShootingMode()I
.end method

.method public abstract getInterval()I
.end method

.method public abstract getKelvinValue()I
.end method

.method public abstract getLowBatteryStatus()Z
.end method

.method public abstract getMenuIdByPreferenceKey(Ljava/lang/String;)I
.end method

.method public abstract getMotionPanoramaMode()I
.end method

.method public abstract getMotionPhoto()I
.end method

.method public abstract getMotionWideSelfieMode()I
.end method

.method public abstract getMultiAFMode()I
.end method

.method public abstract getMultiWindowMode()I
.end method

.method public abstract getObjectTrackingAF()I
.end method

.method public abstract getPictureFormat()I
.end method

.method public abstract getQRCodeDetection()I
.end method

.method public abstract getRearLensDistortionCorrection()I
.end method

.method public abstract getRecordingMotionSpeed()I
.end method

.method public abstract getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;
.end method

.method public abstract getRequestedRecordingDurationLimit()I
.end method

.method public abstract getRequestedRecordingSizeLimit()J
.end method

.method public abstract getRequestedSaveUri()Landroid/net/Uri;
.end method

.method public abstract getReview()I
.end method

.method public abstract getSaveRichTone()I
.end method

.method public abstract getSelfFlip()I
.end method

.method public abstract getSeparatedShootingModeName()Ljava/lang/String;
.end method

.method public abstract getSettingValue(I)I
.end method

.method public abstract getSettingValuesString(II)Ljava/lang/String;
.end method

.method public abstract getShapeCorrection()I
.end method

.method public abstract getShootingModeIdByActivityName(Ljava/lang/String;)I
.end method

.method public abstract getShootingModeNameForLogging()Ljava/lang/String;
.end method

.method public abstract getShootingModeResourceString()Ljava/lang/String;
.end method

.method public abstract getShootingModeResourceStringById(I)Ljava/lang/String;
.end method

.method public abstract getShootingModeValueForISPset()I
.end method

.method public abstract getShutterSpeed()I
.end method

.method public abstract getSkinColorLevel()I
.end method

.method public abstract getSlimFaceLevel()I
.end method

.method public abstract getSoundAndShotMode()I
.end method

.method public abstract getSpotlightLevel()I
.end method

.method public abstract getSpotlightPosition()I
.end method

.method public abstract getStatusLoggingList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStorage()I
.end method

.method public abstract getTapToTakePictures()I
.end method

.method public abstract getTimer()I
.end method

.method public abstract getTorchLightStatus()I
.end method

.method public abstract getVideoCollageRecordingTime()I
.end method

.method public abstract getVideoCollageType()I
.end method

.method public abstract getViewMode()I
.end method

.method public abstract getVolumeKeyAs()I
.end method

.method public abstract getWatermarkCategory()I
.end method

.method public abstract getWatermarkId()I
.end method

.method public abstract getWatermarkInputText()Ljava/lang/String;
.end method

.method public abstract getWhiteBalance()I
.end method

.method public abstract getZoomValue()I
.end method

.method public abstract initAttachVideoFixedResolution()V
.end method

.method public abstract initRequestedMediaRecorderProfileInfo()V
.end method

.method public abstract initRequestedRecordingDurationLimit()V
.end method

.method public abstract initRequestedRecordingSizeLimit()V
.end method

.method public abstract initRequestedSaveUri()V
.end method

.method public abstract initializeCamera()V
.end method

.method public abstract initializeCameraId(I)V
.end method

.method public abstract initializeCameraResolution()V
.end method

.method public abstract initializeDefaultBackCameraShootingModeOrderList()V
.end method

.method public abstract initializeDefaultFrontCameraShootingModeOrderList()V
.end method

.method public abstract initializeShootingModeId(Ljava/lang/String;)I
.end method

.method public abstract initializeShootingModeId(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract initializeShootingModeWhenSwitchCamera()I
.end method

.method public abstract isAttachImageMode()Z
.end method

.method public abstract isAttachVideoFixedResolution()Z
.end method

.method public abstract isAttachVideoMode()Z
.end method

.method public abstract isBackCamera()Z
.end method

.method public abstract isCamcorderAntiShakeSupported(I)Z
.end method

.method public abstract isCoverCamera()Z
.end method

.method public abstract isCurrentSeparatedShootingMode()Z
.end method

.method public abstract isDefaultFrontShootingMode(I)Z
.end method

.method public abstract isDefaultRearShootingMode(I)Z
.end method

.method public abstract isDualBackCamera()Z
.end method

.method public abstract isDualFrontCamera()Z
.end method

.method public abstract isEasyCamera()Z
.end method

.method public abstract isEffectRecordingRestricted()Z
.end method

.method public abstract isFrontCamera()Z
.end method

.method public abstract isKeyboardCoverCamera()Z
.end method

.method public abstract isNotificationExist()Z
.end method

.method public abstract isResetRequested()Z
.end method

.method public abstract isResizableCamera()Z
.end method

.method public abstract isSecureCamera()Z
.end method

.method public abstract isSilverCamera()Z
.end method

.method public abstract isSingleEffect()Z
.end method

.method public abstract isSupportedBackCamcorderResolutionFeature(I)Z
.end method

.method public abstract isSupportedBackCameraResolutionFeature(I)Z
.end method

.method public abstract isSupportedFrontCamcorderResolutionFeature(I)Z
.end method

.method public abstract isSupportedFrontCameraResolutionFeature(I)Z
.end method

.method public abstract isTemperatureHighToRecord()Z
.end method

.method public abstract isTemperatureHighToUseFlash()Z
.end method

.method public abstract isTemperatureLowToUseFlash()Z
.end method

.method public abstract overrideCamcorderResolution(I)V
.end method

.method public abstract overrideFocusMode(I)V
.end method

.method public abstract refreshButtonDimForCamera()V
.end method

.method public abstract refreshSettingValuesFromPreferencesWhenSwitchCamera()V
.end method

.method public abstract registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
.end method

.method public abstract registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
.end method

.method public abstract resetCameraEffect()V
.end method

.method public abstract resetCameraSettingsInDual()V
.end method

.method public abstract resetCameraSettingsToDefault()V
.end method

.method public abstract resetListeners()V
.end method

.method public abstract resetOverriddenCamcorderResolution()V
.end method

.method public abstract resetOverriddenFocusMode()V
.end method

.method public abstract resetShootingModeOrder()V
.end method

.method public abstract resetZoomValue()V
.end method

.method public abstract restoreDualResolution(I)V
.end method

.method public abstract restoreShootingModeAfterRecording()I
.end method

.method public abstract setAntiFogLevel(I)V
.end method

.method public abstract setAttachImageMode(Z)V
.end method

.method public abstract setAttachVideoFixedResolution(II)V
.end method

.method public abstract setAttachVideoMode(Z)V
.end method

.method public abstract setAutoNightDetectionMode(I)V
.end method

.method public abstract setBackBeautyLevel(I)V
.end method

.method public abstract setBackCameraShootingModeOrder(Ljava/lang/String;)V
.end method

.method public abstract setBeautyLevel(I)V
.end method

.method public abstract setBeautyMode(I)V
.end method

.method public abstract setCallStatus(IZ)V
.end method

.method public abstract setCamcorderAntiShake(I)V
.end method

.method public abstract setCamcorderAudioRecording(I)V
.end method

.method public abstract setCamcorderResolution(I)Z
.end method

.method public abstract setCameraDualEffect(I)V
.end method

.method public abstract setCameraEffect(I)V
.end method

.method public abstract setCameraEffect(IZ)V
.end method

.method public abstract setCameraExposureMeter(I)V
.end method

.method public abstract setCameraHDR(I)V
.end method

.method public abstract setCameraISO(I)V
.end method

.method public abstract setCameraId(I)V
.end method

.method public abstract setCameraQuality(I)V
.end method

.method public abstract setCameraResolution(I)Z
.end method

.method public abstract setCameraResolutionChanged(Z)V
.end method

.method public abstract setCameraShutterSound(I)V
.end method

.method public abstract setCameraVoiceCommand(I)V
.end method

.method public abstract setColorTune(I)V
.end method

.method public abstract setCoverCamera(Z)V
.end method

.method public abstract setDefaultBackCameraShootingModeOrder()V
.end method

.method public abstract setEasyCamera(Z)V
.end method

.method public abstract setEffectListType(I)V
.end method

.method public abstract setEffectStrengthLevel(I)V
.end method

.method public abstract setEffectVignetteLevel(I)V
.end method

.method public abstract setEngine(Lcom/sec/android/app/camera/interfaces/Engine;)V
.end method

.method public abstract setExposureValue(I)V
.end method

.method public abstract setEyeEnlargeLevel(I)V
.end method

.method public abstract setFlashMode(I)V
.end method

.method public abstract setFloatingCameraButton(I)V
.end method

.method public abstract setFocusLength(I)V
.end method

.method public abstract setFocusMode(I)V
.end method

.method public abstract setFocusMode(II)V
.end method

.method public abstract setFontScale(F)V
.end method

.method public abstract setFoodBlurType(I)V
.end method

.method public abstract setFoodColorTuneValue(I)V
.end method

.method public abstract setFrontCameraShootingModeOrder(Ljava/lang/String;)V
.end method

.method public abstract setFrontFlashMode(I)V
.end method

.method public abstract setGPS(I)V
.end method

.method public abstract setGestureControlMode(I)V
.end method

.method public abstract setGuideline(I)V
.end method

.method public abstract setHRMShutter(I)V
.end method

.method public abstract setInterval(I)V
.end method

.method public abstract setKelvinValue(I)V
.end method

.method public abstract setKeyboardCoverCamera(Z)V
.end method

.method public abstract setLowBatteryStatus(Z)V
.end method

.method public abstract setManualSettings(I)V
.end method

.method public abstract setMotionPanoramaMode(I)V
.end method

.method public abstract setMotionPhoto(I)V
.end method

.method public abstract setMotionWideSelfieMode(I)V
.end method

.method public abstract setMultiAFMode(I)V
.end method

.method public abstract setMultiWindowMode(I)V
.end method

.method public abstract setObjectTrackingAF(I)V
.end method

.method public abstract setPictureFormat(I)V
.end method

.method public abstract setQRCodeDetection(I)V
.end method

.method public abstract setRearLensDistortionCorrection(I)V
.end method

.method public abstract setRecordingMotionSpeed(I)V
.end method

.method public abstract setRequestedMediaRecorderProfileInfo(Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;)V
.end method

.method public abstract setRequestedRecordingDurationLimit(I)V
.end method

.method public abstract setRequestedRecordingSizeLimit(J)V
.end method

.method public abstract setRequestedSaveUri(Landroid/net/Uri;)V
.end method

.method public abstract setResizableCamera(Z)V
.end method

.method public abstract setReview(I)V
.end method

.method public abstract setSaveRichTone(I)V
.end method

.method public abstract setSecureCamera(Z)V
.end method

.method public abstract setSelfFlip(I)V
.end method

.method public abstract setSeparatedShootingMode(ILjava/lang/String;)V
.end method

.method public abstract setShapeCorrection(I)V
.end method

.method public abstract setShootingMode(I)V
.end method

.method public abstract setShutterSpeed(I)V
.end method

.method public abstract setSkinColorLevel(I)V
.end method

.method public abstract setSlimFaceLevel(I)V
.end method

.method public abstract setSoundAndShotMode(I)V
.end method

.method public abstract setSpotlightLevel(I)V
.end method

.method public abstract setSpotlightPosition(I)V
.end method

.method public abstract setStorage(I)V
.end method

.method public abstract setTapToTakePictures(I)V
.end method

.method public abstract setTemperatureHighToRecord(Z)V
.end method

.method public abstract setTemperatureHighToUseFlash(Z)V
.end method

.method public abstract setTemperatureLowToUseFlash(Z)V
.end method

.method public abstract setTimer(I)V
.end method

.method public abstract setTorchLightStatus(I)V
.end method

.method public abstract setVideoCollageRecordingTime(I)V
.end method

.method public abstract setVideoCollageResolution()V
.end method

.method public abstract setVideoCollageType(IZ)V
.end method

.method public abstract setViewMode(I)V
.end method

.method public abstract setVolumeKeyAs(I)V
.end method

.method public abstract setWatermarkCategory(I)V
.end method

.method public abstract setWatermarkId(I)V
.end method

.method public abstract setWatermarkInputText(Ljava/lang/String;)V
.end method

.method public abstract setWhiteBalance(I)V
.end method

.method public abstract setZoomValue(I)V
.end method

.method public abstract storeShootingModeBeforeRecording()V
.end method

.method public abstract unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
.end method

.method public abstract unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
.end method

.method public abstract updateCameraResolutionForDual()V
.end method
