.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$1;,
        Landroid/media/AudioManager$2;,
        Landroid/media/AudioManager$AudioLog;,
        Landroid/media/AudioManager$AudioRecordingCallback;,
        Landroid/media/AudioManager$AudioRecordingCallbackInfo;,
        Landroid/media/AudioManager$NativeEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAmPortUpdateListener;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;,
        Landroid/media/AudioManager$OnAudioPortUpdateListener;,
        Landroid/media/AudioManager$RecordConfigChangeCallbackData;,
        Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    }
.end annotation


# static fields
.field public static final A2DPCONNECTED:Ljava/lang/String; = "audioParam;a2dpconnected"

.field public static final A2DPPLAYING:Ljava/lang/String; = "audioParam;a2dpplaying"

.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_HDMI_AUDIO_PLUG:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ACTION_SPLIT_SOUND:Ljava/lang/String; = "com.sec.android.intent.action.SPLIT_SOUND"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_MUTE:I = -0x64

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final ADJUST_TOGGLE_MUTE:I = 0x65

.field public static final ADJUST_UNMUTE:I = 0x64

.field public static final AUDIOFOCUS_FLAGS_APPS:I = 0x3

.field public static final AUDIOFOCUS_FLAGS_SYSTEM:I = 0x7

.field public static final AUDIOFOCUS_FLAG_DELAY_OK:I = 0x1

.field public static final AUDIOFOCUS_FLAG_LOCK:I = 0x4

.field public static final AUDIOFOCUS_FLAG_PAUSES_ON_DUCKABLE_LOSS:I = 0x2

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_NONE:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_DELAYED:I = 0x2

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field static final AUDIOPORT_GENERATION_INIT:I = 0x0

.field public static final AUDIO_SESSION_ID_GENERATE:I = 0x0

.field public static final BACKGROUND_MUSIC_ID_WIZARD:I = 0x0

.field public static final CALL_ACTIVE:I = 0x2

.field public static final CALL_HOLD:I = 0x3

.field public static final CALL_INACTIVE:I = 0x1

.field public static final CALL_LOCAL_HOLD:I = 0x4

.field public static final CALL_STATE_KEY:Ljava/lang/String; = "call_state"

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_EXT_MIC:I = -0x7fe00000

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final EAR_PROTECT_DEFAULT_INDEX:I = 0x9

.field public static final EAR_PROTECT_DEFAULT_INDEX_DOUBLE:I = 0x15

.field public static EAR_PROTECT_LIMIT_INDEX_DISABLE:I = 0x0

.field public static EAR_PROTECT_LIMIT_INDEX_DISABLE_DOUBLE:I = 0x0

.field public static EAR_PROTECT_LIMIT_INDEX_NORMAL:I = 0x0

.field public static EAR_PROTECT_LIMIT_INDEX_NORMAL_DOUBLE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field public static final ERROR_NO_INIT:I = -0x5

.field public static final ERROR_PERMISSION_DENIED:I = -0x4

.field public static final EXTRA_AUDIO_PLUG_STATE:Ljava/lang/String; = "android.media.extra.AUDIO_PLUG_STATE"

.field public static final EXTRA_AVAILABLITY_CHANGED_VALUE:Ljava/lang/String; = "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

.field public static final EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String; = "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

.field public static final EXTRA_ENCODINGS:Ljava/lang/String; = "android.media.extra.ENCODINGS"

.field public static final EXTRA_FOCUS_CHANGED_VALUE:Ljava/lang/String; = "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

.field public static final EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final EXTRA_MAX_CHANNEL_COUNT:Ljava/lang/String; = "android.media.extra.MAX_CHANNEL_COUNT"

.field public static final EXTRA_PREV_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_STREAM_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_STREAM_VOLUME_MUTED"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_DEVICES"

.field public static final EXTRA_VOLUME_STREAM_MUSIC_ADDRESS:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_MUSIC_ADDRESS"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE_ALIAS:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final FINE_VOLUME_ENABLED:Z = true

.field private static final FINE_VOLUME_OFFSET:I = 0x3e8

.field private static final FINE_VOLUME_WHITE_LIST:[Ljava/lang/String;

.field public static final FLAG_ACTIVE_MEDIA_ONLY:I = 0x200

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_BLUETOOTH_ABS_VOLUME:I = 0x40

.field public static final FLAG_DISMISS_UI_WARNINGS:I = 0x10000000

.field public static final FLAG_DISPLAY_VOLUME_CONTROL:I = 0x800000

.field public static final FLAG_FIXED_VOLUME:I = 0x20

.field public static final FLAG_FROM_KEY:I = 0x1000

.field public static final FLAG_HDMI_SYSTEM_AUDIO_VOLUME:I = 0x100

.field public static final FLAG_KEY_ACTION_DOWN:I = 0x20000000

.field public static final FLAG_MULTI_SOUND:I = 0x1000000

.field private static final FLAG_NAMES:[Ljava/lang/String;

.field public static final FLAG_NO_VOICE_ASSISTANT:I = 0x400000

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_SILENT_HINT:I = 0x80

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400

.field public static final FLAG_SHOW_VIBRATE_HINT:I = 0x800

.field public static final FLAG_SKIP_RINGER_MODES:I = 0x4000000

.field public static final FLAG_SOUND_EFFECT:I = 0x64

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FM_RADIO:Ljava/lang/String; = "FM_RADIO"

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_INVALID:I = 0x9

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final GET_DEVICES_ALL:I = 0x3

.field public static final GET_DEVICES_INPUTS:I = 0x1

.field public static final GET_DEVICES_OUTPUTS:I = 0x2

.field public static final IMS_VSID:J = 0x10c02000L

.field public static final INTERNAL_RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

.field public static final MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_IN_VIDEOCALL:I = 0x4

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field private static final MSG_DEVICES_CALLBACK_REGISTERED:I = 0x0

.field private static final MSG_DEVICES_DEVICES_ADDED:I = 0x1

.field private static final MSG_DEVICES_DEVICES_REMOVED:I = 0x2

.field private static final MSSG_FOCUS_CHANGE:I = 0x0

.field private static final MSSG_RECORDING_CONFIG_CHANGE:I = 0x1

.field private static final MULTISOUND_ENABLED:Z

.field public static final MYSPACE_FADEOUT_FOR_RINGTONE:I = 0x1

.field public static final NUM_SOUND_EFFECTS:I = 0x10

.field public static final NUM_SOUND_EFFECTS_ORIG:I = 0xa

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROPERTY_OUTPUT_FRAMES_PER_BUFFER:Ljava/lang/String; = "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

.field public static final PROPERTY_OUTPUT_SAMPLE_RATE:Ljava/lang/String; = "android.media.property.OUTPUT_SAMPLE_RATE"

.field public static final PROPERTY_SUPPORT_AUDIO_SOURCE_UNPROCESSED:Ljava/lang/String; = "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

.field public static final PROPERTY_SUPPORT_MIC_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

.field public static final PROPERTY_SUPPORT_SPEAKER_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

.field public static final RCC_CHANGED_ACTION:Ljava/lang/String; = "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

.field public static final RECORD_ACTIVE:Ljava/lang/String; = "isRecordActive"

.field public static final RECORD_CONFIG_EVENT_START:I = 0x1

.field public static final RECORD_CONFIG_EVENT_STOP:I = 0x0

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field public static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final SEM_ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY_SEC"

.field public static final SEM_EXTRA_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_DEVICES"

.field public static final SEM_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final SEM_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final SEM_FLAG_UPDATE_STATE:I = 0x2000000

.field public static final SEM_FORCE_EARPIECE:I = 0x2711

.field public static final SEM_FORCE_NONE:I = 0x0

.field private static final SEM_GAIN_MAX:F = 1.0f

.field private static final SEM_GAIN_MIN:F = 0.0f

.field public static final SEM_OUT_DEVICE:Ljava/lang/String; = "audioParam;outDevice"

.field public static final SEM_SITUATION_BOOT_SOUND:I = 0x8

.field public static final SEM_SITUATION_CALL_CONNECTION:I = 0xe

.field public static final SEM_SITUATION_CALL_WAITING:I = 0xf

.field public static final SEM_SITUATION_CAMCORDING_START:I = 0x5

.field public static final SEM_SITUATION_CHARGER_CONNECTION:I = 0x10

.field public static final SEM_SITUATION_HEADSET_VOLUME:I = 0x2

.field public static final SEM_SITUATION_IMPLICIT_VOLUME:I = 0x0

.field public static final SEM_SITUATION_KEYBOARD:I = 0x2

.field public static final SEM_SITUATION_KEY_TONE:I = 0x0

.field public static final SEM_SITUATION_LOCK_SCREEN:I = 0x4

.field public static final SEM_SITUATION_LOW_BATTERY:I = 0xb

.field public static final SEM_SITUATION_MIDI:I = 0x6

.field public static final SEM_SITUATION_SHUTTER:I = 0x3

.field public static final SEM_SITUATION_SPEAKER_VOLUME:I = 0x1

.field public static final SEM_SITUATION_TOUCH_TONE:I = 0x1

.field public static final SEM_SITUATION_VIDEO:I = 0x7

.field public static final SEM_SOUNDALIVE_GET_PUMP_DATA:I = 0x200

.field public static final SEM_SOUNDALIVE_SET_PUMP:I = 0x100

.field public static final SEM_SOUNDALIVE_SET_SPEED:I = 0x400

.field public static final SEM_SOUND_HW_TOUCH:I = 0x66

.field public static final SEM_SOUND_TOUCH:I = 0x64

.field public static final SEM_STREAM_BLUETOOTH_SCO:I = 0x4

.field public static final SEM_STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final SEM_STREAM_FM_RADIO:I = 0x1

.field public static final SEM_STREAM_SYSTEM_ENFORCED:I = 0x5

.field public static final SEM_STREAM_VIDEO_CALL:I = 0x2

.field public static final SEM_STREAM_VOICENOTE:I = 0x3

.field public static final SEM_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final SOUND_SILENT_MODE_OFF:I = 0x65

.field public static final SOUND_TIME_PICKER:I = 0x68

.field public static final SOUND_TIME_PICKER_SCROLL:I = 0x69

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_FM_RADIO:I = 0xa

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SEC_VOICE_COMMUNICATION:I = 0xc

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VIDEO_CALL:I = 0xb

.field public static final STREAM_VOICENOTE:I = 0xd

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final UHQ_ENABLED:Z = true

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field private static final VIBRATE_SETTING_MAX:I = 0x2

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field private static final VIBRATE_TYPE_MAX:I = 0x1

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VOICE2_VSID:J = 0x10dc1000L

.field public static final VOICE_VSID:J = 0x10c01000L

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final VSID_KEY:Ljava/lang/String; = "vsid"

.field private static final mAudioLog:Landroid/media/AudioManager$AudioLog;

.field static sAudioPatchesCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

.field static sAudioPortGeneration:Ljava/lang/Integer;

.field static sAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field static sPreviousAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/media/IAudioService;

.field static sSetDeviceForceLock:Ljava/lang/Object;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private final mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mAudioFocusIdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioDeviceCallback;",
            "Landroid/media/AudioManager$NativeEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusListenerLock:Ljava/lang/Object;

.field private final mICallBack:Landroid/os/IBinder;

.field private mIsFineVolumeWhiteList:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mMySpaceManager:Landroid/media/MySpaceManager;

.field private mOriginalContext:Landroid/content/Context;

.field private mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

.field private mPreviousPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecCb:Landroid/media/IRecordingConfigDispatcher;

.field private mRecordCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioManager$AudioRecordingCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordCallbackLock:Ljava/lang/Object;

.field private final mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

.field private final mUseFixedVolume:Z

.field private final mUseVolumeKeySounds:Z

.field private mVolumeKeyUpTime:J


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AudioManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/AudioManager;)Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->broadcastDeviceListChange(Landroid/os/Handler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 78
    const-string/jumbo v0, "AudioManager"

    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/media/AudioPortEventHandler;

    invoke-direct {v0}, Landroid/media/AudioPortEventHandler;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    .line 80
    new-instance v0, Landroid/media/AudioManager$AudioLog;

    invoke-direct {v0}, Landroid/media/AudioManager$AudioLog;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->mAudioLog:Landroid/media/AudioManager$AudioLog;

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.app.music"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.video"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/AudioManager;->FINE_VOLUME_WHITE_LIST:[Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MULTI_DEVICE_SOUND"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioManager;->MULTISOUND_ENABLED:Z

    .line 744
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 745
    const-string/jumbo v1, "FLAG_SHOW_UI"

    aput-object v1, v0, v3

    .line 746
    const-string/jumbo v1, "FLAG_ALLOW_RINGER_MODES"

    aput-object v1, v0, v2

    .line 747
    const-string/jumbo v1, "FLAG_PLAY_SOUND"

    aput-object v1, v0, v4

    .line 748
    const-string/jumbo v1, "FLAG_REMOVE_SOUND_AND_VIBRATE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 749
    const-string/jumbo v1, "FLAG_VIBRATE"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 750
    const-string/jumbo v1, "FLAG_FIXED_VOLUME"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 751
    const-string/jumbo v1, "FLAG_BLUETOOTH_ABS_VOLUME"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 752
    const-string/jumbo v1, "FLAG_SHOW_SILENT_HINT"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 753
    const-string/jumbo v1, "FLAG_HDMI_SYSTEM_AUDIO_VOLUME"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 754
    const-string/jumbo v1, "FLAG_ACTIVE_MEDIA_ONLY"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 755
    const-string/jumbo v1, "FLAG_SHOW_UI_WARNINGS"

    aput-object v1, v0, v5

    .line 756
    const-string/jumbo v1, "FLAG_SHOW_VIBRATE_HINT"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 757
    const-string/jumbo v1, "FLAG_FROM_KEY"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 744
    sput-object v0, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    .line 4258
    const/16 v0, 0x1f

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE_DOUBLE:I

    .line 4260
    const/16 v0, 0x16

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL_DOUBLE:I

    .line 4264
    const/16 v0, 0x10

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE:I

    .line 4266
    sput v5, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    .line 4744
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 4745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    .line 4746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    .line 4747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    .line 5216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sSetDeviceForceLock:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioManager;->mIsFineVolumeWhiteList:Z

    .line 2896
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2895
    iput-object v2, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    .line 2901
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    .line 2912
    new-instance v2, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v2, p0, v3}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 2911
    iput-object v2, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    .line 2975
    new-instance v2, Landroid/media/AudioManager$1;

    invoke-direct {v2, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v2, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 3730
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    .line 3761
    new-instance v2, Landroid/media/AudioManager$2;

    invoke-direct {v2, p0}, Landroid/media/AudioManager$2;-><init>(Landroid/media/AudioManager;)V

    iput-object v2, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    .line 3816
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 4889
    iput-object v3, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 4904
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 4903
    iput-object v2, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    .line 5083
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 5315
    new-instance v2, Landroid/media/MySpaceManager;

    invoke-direct {v2}, Landroid/media/MySpaceManager;-><init>()V

    iput-object v2, p0, Landroid/media/AudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    .line 893
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    .line 894
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 895
    const v3, 0x112000e

    .line 894
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    .line 896
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 897
    const v3, 0x1120084

    .line 896
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    .line 900
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 899
    iput-object v2, p0, Landroid/media/AudioManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 904
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "caller":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/media/AudioManager;->FINE_VOLUME_WHITE_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 906
    sget-object v2, Landroid/media/AudioManager;->FINE_VOLUME_WHITE_LIST:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 907
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioManager;->mIsFineVolumeWhiteList:Z

    .line 892
    :cond_0
    return-void

    .line 905
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private broadcastDeviceListChange(Landroid/os/Handler;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 5093
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5094
    .local v1, "current_ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v5

    .line 5095
    .local v5, "status":I
    if-eqz v5, :cond_0

    .line 5096
    return-void

    .line 5099
    :cond_0
    if-eqz p1, :cond_2

    .line 5102
    invoke-static {v1, v7}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 5104
    .local v2, "deviceList":[Landroid/media/AudioDeviceInfo;
    invoke-static {p1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 5103
    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5132
    .end local v2    # "deviceList":[Landroid/media/AudioDeviceInfo;
    :cond_1
    :goto_0
    iput-object v1, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 5089
    return-void

    .line 5107
    :cond_2
    iget-object v6, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    invoke-static {v6, v1, v7}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 5109
    .local v0, "added_devices":[Landroid/media/AudioDeviceInfo;
    iget-object v6, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    invoke-static {v1, v6, v7}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    .line 5111
    .local v4, "removed_devices":[Landroid/media/AudioDeviceInfo;
    array-length v6, v0

    if-nez v6, :cond_3

    array-length v6, v4

    if-eqz v6, :cond_1

    .line 5112
    :cond_3
    iget-object v7, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 5113
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    iget-object v6, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 5114
    iget-object v6, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-virtual {v6}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 5115
    if-eqz p1, :cond_5

    .line 5116
    array-length v6, v0

    if-eqz v6, :cond_4

    .line 5118
    const/4 v6, 0x1

    .line 5117
    invoke-static {p1, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5121
    :cond_4
    array-length v6, v4

    if-eqz v6, :cond_5

    .line 5123
    const/4 v6, 0x2

    .line 5122
    invoke-static {p1, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5113
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    monitor-exit v7

    goto :goto_0

    .line 5112
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .locals 7
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    .prologue
    .line 4995
    .local p0, "ports_A":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    .local p1, "ports_B":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4997
    .local v3, "delta_ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v1, 0x0

    .line 4998
    .local v1, "cur_port":Landroid/media/AudioDevicePort;
    const/4 v0, 0x0

    .end local v1    # "cur_port":Landroid/media/AudioDevicePort;
    .local v0, "cur_index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 4999
    const/4 v2, 0x0

    .line 5000
    .local v2, "cur_port_found":Z
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    .line 5001
    .local v1, "cur_port":Landroid/media/AudioDevicePort;
    const/4 v4, 0x0

    .line 5002
    .local v4, "prev_index":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    if-eqz v2, :cond_2

    .line 5007
    :cond_0
    if-nez v2, :cond_1

    .line 5008
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4998
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5004
    :cond_2
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->id()I

    move-result v6

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDevicePort;

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->id()I

    move-result v5

    if-ne v6, v5, :cond_3

    const/4 v2, 0x1

    .line 5003
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5004
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 5012
    .end local v1    # "cur_port":Landroid/media/AudioDevicePort;
    .end local v2    # "cur_port_found":Z
    .end local v4    # "prev_index":I
    :cond_4
    invoke-static {v3, p2}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v5

    return-object v5
.end method

.method private static checkFlags(Landroid/media/AudioDevicePort;I)Z
    .locals 4
    .param p0, "port"    # Landroid/media/AudioDevicePort;
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4935
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 4936
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result v2

    if-ne v2, v0, :cond_2

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static checkTypes(Landroid/media/AudioDevicePort;)Z
    .locals 3
    .param p0, "port"    # Landroid/media/AudioDevicePort;

    .prologue
    const/4 v0, 0x0

    .line 4940
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4942
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const v2, -0x7fffff80

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 4940
    :cond_0
    return v0
.end method

.method public static createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
    .locals 1
    .param p0, "patch"    # [Landroid/media/AudioPatch;
    .param p1, "sources"    # [Landroid/media/AudioPortConfig;
    .param p2, "sinks"    # [Landroid/media/AudioPortConfig;

    .prologue
    .line 4655
    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v0

    return v0
.end method

.method private static filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4621
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4622
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4623
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/media/AudioDevicePort;

    if-eqz v1, :cond_0

    .line 4624
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4622
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4620
    :cond_1
    return-void
.end method

.method private findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2904
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "flags"    # I

    .prologue
    const/16 v4, 0x2c

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 764
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 765
    .local v0, "flag":I
    and-int v3, p0, v0

    if-eqz v3, :cond_1

    .line 766
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 767
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    :cond_0
    sget-object v3, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    not-int v3, v0

    and-int/2addr p0, v3

    .line 763
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v0    # "flag":I
    :cond_2
    if-eqz p0, :cond_4

    .line 774
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 775
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 777
    :cond_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    .line 918
    :cond_0
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    return-object v0

    .line 921
    :cond_1
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;
    .locals 3
    .param p0, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 5026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5027
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    .line 5028
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 5030
    new-array v2, v2, [Landroid/media/AudioDeviceInfo;

    return-object v2

    .line 5033
    :cond_0
    invoke-static {v0, p0}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    return-object v2
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .locals 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    const/16 v4, 0x40

    const/16 v3, 0x24

    .line 2986
    if-nez p1, :cond_0

    .line 2988
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/media/AudioManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2990
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/AudioManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 935
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    .line 936
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    return-object v1

    .line 938
    :cond_0
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 939
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 940
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .prologue
    .line 3736
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 3737
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3738
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager$AudioRecordingCallback;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3739
    const/4 v1, 0x1

    return v1

    .line 3737
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3743
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .locals 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    .prologue
    .line 4965
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v1, 0x0

    .line 4966
    .local v1, "numRecs":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "port$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    .line 4967
    .local v2, "port":Landroid/media/AudioDevicePort;
    invoke-static {v2}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4973
    .end local v2    # "port":Landroid/media/AudioDevicePort;
    :cond_1
    new-array v0, v1, [Landroid/media/AudioDeviceInfo;

    .line 4974
    .local v0, "deviceList":[Landroid/media/AudioDeviceInfo;
    const/4 v4, 0x0

    .line 4975
    .local v4, "slot":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    .line 4976
    .restart local v2    # "port":Landroid/media/AudioDevicePort;
    invoke-static {v2}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v2, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4977
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "slot":I
    .local v5, "slot":I
    new-instance v6, Landroid/media/AudioDeviceInfo;

    invoke-direct {v6, v2}, Landroid/media/AudioDeviceInfo;-><init>(Landroid/media/AudioDevicePort;)V

    aput-object v6, v0, v4

    move v4, v5

    .end local v5    # "slot":I
    .restart local v4    # "slot":I
    goto :goto_1

    .line 4981
    .end local v2    # "port":Landroid/media/AudioDevicePort;
    :cond_3
    return-object v0
.end method

.method public static isInputDevice(I)Z
    .locals 2
    .param p0, "device"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 4032
    and-int v0, p0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOutputDevice(I)Z
    .locals 2
    .param p0, "device"    # I

    .prologue
    const/4 v0, 0x0

    .line 4023
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isValidRingerMode(I)Z
    .locals 4
    .param p0, "ringerMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 1236
    if-ltz p0, :cond_0

    const/4 v2, 0x2

    if-le p0, v2, :cond_1

    .line 1237
    :cond_0
    return v3

    .line 1239
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1241
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->isValidRingerMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static listAudioDevicePorts(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v2, 0x0

    .line 4591
    if-nez p0, :cond_0

    .line 4592
    const/4 v2, -0x2

    return v2

    .line 4594
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4595
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    invoke-static {v0, v2, v2}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    .line 4596
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 4597
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4599
    :cond_1
    return v1
.end method

.method public static listAudioPatches(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v0, 0x0

    .line 4679
    invoke-static {v0, p0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static listAudioPorts(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    .line 4572
    invoke-static {p0, v0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static listPreviousAudioDevicePorts(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v2, 0x0

    .line 4608
    if-nez p0, :cond_0

    .line 4609
    const/4 v2, -0x2

    return v2

    .line 4611
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4612
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    invoke-static {v2, v2, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    .line 4613
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 4614
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4616
    :cond_1
    return v1
.end method

.method public static listPreviousAudioPorts(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    .line 4582
    invoke-static {v0, v0, p0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private querySoundEffectsEnabled(I)Z
    .locals 3
    .param p1, "user"    # I

    .prologue
    const/4 v0, 0x0

    .line 2781
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2782
    const-string/jumbo v2, "sound_effects_enabled"

    .line 2781
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static releaseAudioPatch(Landroid/media/AudioPatch;)I
    .locals 1
    .param p0, "patch"    # Landroid/media/AudioPatch;

    .prologue
    .line 4670
    invoke-static {p0}, Landroid/media/AudioSystem;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    move-result v0

    return v0
.end method

.method private removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .prologue
    .line 3750
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 3751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3752
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager$AudioRecordingCallback;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3753
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3754
    const/4 v1, 0x1

    return v1

    .line 3751
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3758
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static resetAudioPortGeneration()I
    .locals 3

    .prologue
    .line 4751
    sget-object v2, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v2

    .line 4752
    :try_start_0
    sget-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4753
    .local v0, "generation":I
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 4755
    return v0

    .line 4751
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static semClampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .prologue
    .line 5776
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5777
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5779
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 5780
    const/4 p0, 0x0

    .line 5784
    :cond_1
    :goto_0
    return p0

    .line 5781
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 5782
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static semGetActiveStreamType()I
    .locals 5

    .prologue
    .line 1749
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1750
    .local v2, "service":Landroid/media/IAudioService;
    const/high16 v1, -0x80000000

    .line 1752
    .local v1, "nReturn":I
    const/high16 v3, -0x80000000

    :try_start_0
    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getActiveStreamType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1756
    :goto_0
    return v1

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Dead object in getActiveStreamType"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static semGetDeviceOut(I)I
    .locals 1
    .param p0, "typeDevice"    # I

    .prologue
    .line 5728
    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    return v0
.end method

.method public static semGetEarProtectLimit()I
    .locals 1

    .prologue
    .line 4278
    sget v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    return v0
.end method

.method public static semGetStreamType(I)I
    .locals 1
    .param p0, "samsung_stream"    # I

    .prologue
    .line 5662
    const/4 v0, -0x1

    .line 5664
    .local v0, "valid_stream":I
    packed-switch p0, :pswitch_data_0

    .line 5681
    const/4 v0, -0x1

    .line 5685
    :goto_0
    return v0

    .line 5666
    :pswitch_0
    const/16 v0, 0xa

    .line 5667
    goto :goto_0

    .line 5669
    :pswitch_1
    const/16 v0, 0xb

    .line 5670
    goto :goto_0

    .line 5672
    :pswitch_2
    const/16 v0, 0xd

    .line 5673
    goto :goto_0

    .line 5675
    :pswitch_3
    const/4 v0, 0x6

    .line 5676
    goto :goto_0

    .line 5678
    :pswitch_4
    const/4 v0, 0x7

    .line 5679
    goto :goto_0

    .line 5664
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static semGetVideoCallMode()I
    .locals 1

    .prologue
    .line 5695
    const/4 v0, 0x4

    return v0
.end method

.method public static semIsFineVolumeSupported()Z
    .locals 1

    .prologue
    .line 5463
    const/4 v0, 0x1

    return v0
.end method

.method public static semIsMediaSilentMode()Z
    .locals 5

    .prologue
    .line 1782
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1783
    .local v2, "service":Landroid/media/IAudioService;
    const/4 v1, 0x0

    .line 1785
    .local v1, "nReturn":Z
    :try_start_0
    invoke-interface {v2}, Landroid/media/IAudioService;->isMediaSilentMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1789
    .end local v1    # "nReturn":Z
    :goto_0
    return v1

    .line 1786
    .restart local v1    # "nReturn":Z
    :catch_0
    move-exception v0

    .line 1787
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Dead object in isMediaSilentMode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static semIsMultiSoundSupported()Z
    .locals 1

    .prologue
    .line 5836
    sget-boolean v0, Landroid/media/AudioManager;->MULTISOUND_ENABLED:Z

    return v0
.end method

.method public static semIsUhqSupported()Z
    .locals 1

    .prologue
    .line 5438
    const/4 v0, 0x1

    return v0
.end method

.method public static semSetMediaSilentMode(Z)V
    .locals 4
    .param p0, "on"    # Z

    .prologue
    .line 1766
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1768
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->setMediaSilentMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    :goto_0
    return-void

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in setMediaSilentMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I
    .locals 7
    .param p0, "port"    # Landroid/media/AudioPort;
    .param p1, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    .line 4688
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4689
    :cond_0
    const/4 v1, -0x2

    return v1

    .line 4691
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioPort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v6

    .line 4692
    .local v6, "activeConfig":Landroid/media/AudioPortConfig;
    new-instance v0, Landroid/media/AudioPortConfig;

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v2

    .line 4693
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v3

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->format()I

    move-result v4

    move-object v1, p0

    move-object v5, p1

    .line 4692
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    .line 4694
    .local v0, "config":Landroid/media/AudioPortConfig;
    const/16 v1, 0x8

    iput v1, v0, Landroid/media/AudioPortConfig;->mConfigMask:I

    .line 4695
    invoke-static {v0}, Landroid/media/AudioSystem;->setAudioPortConfig(Landroid/media/AudioPortConfig;)I

    move-result v1

    return v1
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 925
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 926
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 927
    iput-object v1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    .line 924
    :goto_0
    return-void

    .line 929
    :cond_0
    iput-object p1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static setSmartVoumeEnable(Z)V
    .locals 0
    .param p0, "on"    # Z

    .prologue
    .line 1799
    return-void
.end method

.method static updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4760
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .local p2, "previousPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    sget-object v12, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v12}, Landroid/media/AudioPortEventHandler;->init()V

    .line 4761
    sget-object v13, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v13

    .line 4763
    :try_start_0
    sget-object v12, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_c

    .line 4764
    const/4 v12, 0x1

    new-array v8, v12, [I

    .line 4765
    .local v8, "patchGeneration":[I
    const/4 v12, 0x1

    new-array v10, v12, [I

    .line 4767
    .local v10, "portGeneration":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4768
    .local v7, "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4771
    .local v6, "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4772
    invoke-static {v7, v10}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v11

    .line 4773
    .local v11, "status":I
    if-eqz v11, :cond_1

    .line 4774
    sget-object v12, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "updateAudioPortCache: listAudioPorts failed"

    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    .line 4775
    return v11

    .line 4777
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 4778
    invoke-static {v6, v8}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    move-result v11

    .line 4779
    if-eqz v11, :cond_2

    .line 4780
    sget-object v12, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "updateAudioPortCache: listAudioPatches failed"

    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v13

    .line 4781
    return v11

    .line 4783
    :cond_2
    const/4 v12, 0x0

    :try_start_2
    aget v12, v8, v12

    const/4 v14, 0x0

    aget v14, v10, v14

    if-ne v12, v14, :cond_0

    .line 4785
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_5

    .line 4786
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_3

    .line 4787
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v9

    .line 4789
    .local v9, "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aput-object v9, v12, v4

    .line 4786
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4791
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_4

    .line 4792
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v9

    .line 4794
    .restart local v9    # "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aput-object v9, v12, v4

    .line 4791
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4785
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4797
    .end local v4    # "j":I
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 4798
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioPatch;

    .line 4799
    .local v5, "newPatch":Landroid/media/AudioPatch;
    const/4 v1, 0x0

    .line 4800
    .local v1, "hasInvalidPort":Z
    invoke-virtual {v5}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v14

    const/4 v12, 0x0

    array-length v15, v14

    :goto_4
    if-ge v12, v15, :cond_7

    aget-object v9, v14, v12

    .line 4801
    .restart local v9    # "portCfg":Landroid/media/AudioPortConfig;
    if-nez v9, :cond_9

    .line 4802
    const/4 v1, 0x1

    .line 4806
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_7
    invoke-virtual {v5}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v14

    const/4 v12, 0x0

    array-length v15, v14

    :goto_5
    if-ge v12, v15, :cond_8

    aget-object v9, v14, v12

    .line 4807
    .restart local v9    # "portCfg":Landroid/media/AudioPortConfig;
    if-nez v9, :cond_a

    .line 4808
    const/4 v1, 0x1

    .line 4812
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_8
    if-eqz v1, :cond_6

    .line 4815
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 4761
    .end local v1    # "hasInvalidPort":Z
    .end local v2    # "i":I
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    .end local v5    # "newPatch":Landroid/media/AudioPatch;
    .end local v6    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v7    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v8    # "patchGeneration":[I
    .end local v10    # "portGeneration":[I
    .end local v11    # "status":I
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 4800
    .restart local v1    # "hasInvalidPort":Z
    .restart local v2    # "i":I
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    .restart local v5    # "newPatch":Landroid/media/AudioPatch;
    .restart local v6    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .restart local v7    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .restart local v8    # "patchGeneration":[I
    .restart local v9    # "portCfg":Landroid/media/AudioPortConfig;
    .restart local v10    # "portGeneration":[I
    .restart local v11    # "status":I
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 4806
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 4826
    .end local v1    # "hasInvalidPort":Z
    .end local v5    # "newPatch":Landroid/media/AudioPatch;
    .end local v9    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_b
    :try_start_3
    sget-object v12, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 4827
    sget-object v12, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    sget-object v14, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4829
    sget-object v12, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 4830
    sget-object v12, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4831
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4832
    const/4 v7, 0x0

    .line 4834
    .local v7, "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    sget-object v12, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 4835
    sget-object v12, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4836
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 4837
    const/4 v6, 0x0

    .line 4839
    .local v6, "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v12, 0x0

    aget v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 4840
    const/4 v10, 0x0

    .line 4843
    .end local v2    # "i":I
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    .end local v6    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v7    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v8    # "patchGeneration":[I
    .end local v10    # "portGeneration":[I
    .end local v11    # "status":I
    :cond_c
    if-eqz p0, :cond_d

    .line 4844
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->clear()V

    .line 4845
    sget-object v12, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4847
    :cond_d
    if-eqz p1, :cond_e

    .line 4848
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 4849
    sget-object v12, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4851
    :cond_e
    if-eqz p2, :cond_f

    .line 4852
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 4853
    sget-object v12, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    monitor-exit v13

    .line 4856
    const/4 v12, 0x0

    return v12
.end method

.method static updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;
    .locals 8
    .param p0, "portCfg"    # Landroid/media/AudioPortConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioPortConfig;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)",
            "Landroid/media/AudioPortConfig;"
        }
    .end annotation

    .prologue
    .local p1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v7, 0x0

    .line 4860
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v3

    .line 4862
    .local v3, "port":Landroid/media/AudioPort;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 4865
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPort;

    invoke-virtual {v4}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4866
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "port":Landroid/media/AudioPort;
    check-cast v3, Landroid/media/AudioPort;

    .line 4870
    .restart local v3    # "port":Landroid/media/AudioPort;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 4872
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePortConfig port not found for handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioHandle;->id()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    return-object v7

    .line 4862
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4875
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->gain()Landroid/media/AudioGainConfig;

    move-result-object v1

    .line 4876
    .local v1, "gainCfg":Landroid/media/AudioGainConfig;
    if-eqz v1, :cond_3

    .line 4877
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->index()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioPort;->gain(I)Landroid/media/AudioGain;

    move-result-object v0

    .line 4878
    .local v0, "gain":Landroid/media/AudioGain;
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->mode()I

    move-result v4

    .line 4879
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->channelMask()I

    move-result v5

    .line 4880
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->values()[I

    move-result-object v6

    .line 4881
    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->rampDurationMs()I

    move-result v7

    .line 4878
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v1

    .line 4883
    .end local v0    # "gain":Landroid/media/AudioGain;
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v4

    .line 4884
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v5

    .line 4885
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->format()I

    move-result v6

    .line 4883
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/media/AudioPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 3309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 3321
    const/4 v2, 0x0

    .line 3322
    .local v2, "status":I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 3323
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3325
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 3326
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v4

    .line 3325
    invoke-interface {v1, v3, v4, p2}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3330
    return v2

    .line 3327
    :catch_0
    move-exception v0

    .line 3328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public abandonAudioFocusForCall()V
    .locals 5

    .prologue
    .line 3294
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3296
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    const-string/jumbo v2, "AudioFocus_For_Phone_Ring_And_Calls"

    const/4 v3, 0x0

    .line 3297
    const/4 v4, 0x0

    .line 3296
    invoke-interface {v1, v3, v2, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3293
    return-void

    .line 3298
    :catch_0
    move-exception v0

    .line 3299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public adjustStreamVolume(III)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1134
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1137
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1136
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    return-void

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1196
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 1197
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p2, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    .line 1195
    return-void
.end method

.method public adjustVolume(II)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1167
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 1168
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    .line 1166
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 3805
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3807
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3804
    return-void

    .line 3808
    :catch_0
    move-exception v0

    .line 3809
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public disableSafeMediaVolume()V
    .locals 3

    .prologue
    .line 4405
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->disableSafeMediaVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4403
    return-void

    .line 4406
    :catch_0
    move-exception v0

    .line 4407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 967
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 968
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 966
    return-void
.end method

.method public forceVolumeControlStream(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1494
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1496
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    return-void

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public generateAudioSessionId()I
    .locals 3

    .prologue
    .line 2405
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 2406
    .local v0, "session":I
    if-lez v0, :cond_0

    .line 2407
    return v0

    .line 2409
    :cond_0
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failure to generate a new audio session ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const/4 v1, -0x1

    return v1
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3706
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3708
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getActiveRecordingConfigurations()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 3709
    :catch_0
    move-exception v0

    .line 3710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getAppDevice(I)I
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 5858
    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5859
    const/4 v3, 0x0

    return v3

    .line 5861
    :cond_0
    const/4 v0, 0x0

    .line 5863
    .local v0, "device":I
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 5865
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/media/IAudioService;->getAppDevice(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5870
    :goto_0
    return v0

    .line 5866
    :catch_0
    move-exception v1

    .line 5867
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Dead object in getAppDevice"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAppVolume(I)I
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 5893
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5895
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getAppVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5896
    :catch_0
    move-exception v0

    .line 5897
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in getAppVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5899
    const/16 v2, 0x64

    return v2
.end method

.method public getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 4339
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4341
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 4342
    :catch_0
    move-exception v0

    .line 4343
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in getAudioServiceConfig"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4345
    const/4 v2, 0x0

    return-object v2
.end method

.method public getAvailableDeviceMaskForQuickSoundPath()I
    .locals 2

    .prologue
    .line 5591
    const-string/jumbo v1, "device_mask_QSP"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5592
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5593
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 5595
    :cond_0
    const v1, 0x5fffffff

    return v1
.end method

.method public getDevices(I)[Landroid/media/AudioDeviceInfo;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 4954
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDevicesForStream(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 4081
    packed-switch p1, :pswitch_data_0

    .line 4091
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 4089
    :pswitch_1
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    return v0

    .line 4081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1307
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1309
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getMediaAppList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 6043
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getMediaAppList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 6044
    :catch_0
    move-exception v0

    .line 6045
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error calling semGetPinApp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6046
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .locals 3

    .prologue
    .line 2185
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2187
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2188
    :catch_0
    move-exception v0

    .line 2189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getMuteInterval()I
    .locals 3

    .prologue
    .line 4456
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getMuteInterval()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4457
    :catch_0
    move-exception v0

    .line 4458
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error calling getRingerModeInternal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4459
    const/4 v1, 0x0

    return v1
.end method

.method public getOutputLatency(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 4248
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputLatency(I)I

    move-result v0

    return v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 2512
    sget-boolean v0, Landroid/media/AudioManager;->MULTISOUND_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2513
    const-string/jumbo v0, "multisound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2514
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2518
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPinAppName(I)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # I

    .prologue
    .line 5984
    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5985
    const-string/jumbo v1, ""

    return-object v1

    .line 5988
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getPinAppInfo(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 5989
    :catch_0
    move-exception v0

    .line 5990
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error calling semGetPinApp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5991
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getPinDeviceName(I)Ljava/lang/String;
    .locals 6
    .param p1, "device"    # I

    .prologue
    .line 5999
    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6000
    const-string/jumbo v4, ""

    return-object v4

    .line 6002
    :cond_0
    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_2

    .line 6003
    :cond_1
    const/4 p1, 0x2

    .line 6005
    :cond_2
    const/16 v4, 0x80

    if-ne p1, v4, :cond_3

    .line 6006
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 6008
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_0
    const-string/jumbo v4, "multisound_get_active_bt_device_name"

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 6009
    :catch_0
    move-exception v0

    .line 6010
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Dead object in getAudioServiceConfig"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6012
    const-string/jumbo v4, ""

    return-object v4

    .line 6015
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "service":Landroid/media/IAudioService;
    :cond_3
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 6017
    .local v2, "list":[Landroid/media/AudioDeviceInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_5

    .line 6018
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->semGetInternalType()I

    move-result v4

    if-ne v4, p1, :cond_4

    .line 6019
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 6017
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6023
    :cond_5
    const-string/jumbo v4, ""

    return-object v4
.end method

.method public getPrevRingerMode()I
    .locals 3

    .prologue
    .line 4484
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getPrevRingerMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4485
    :catch_0
    move-exception v0

    .line 4486
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error calling getPrevRingerMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4487
    const/4 v1, -0x1

    return v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4217
    const-string/jumbo v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4218
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v1

    .line 4219
    .local v1, "outputSampleRate":I
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .line 4220
    .end local v1    # "outputSampleRate":I
    :cond_1
    const-string/jumbo v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4221
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputFrameCount()I

    move-result v0

    .line 4222
    .local v0, "outputFramesPerBuffer":I
    if-lez v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2

    .line 4223
    .end local v0    # "outputFramesPerBuffer":I
    :cond_3
    const-string/jumbo v3, "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4226
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4227
    const v3, 0x11200a7

    .line 4226
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4228
    :cond_4
    const-string/jumbo v3, "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4229
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4230
    const v3, 0x11200a8

    .line 4229
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4231
    :cond_5
    const-string/jumbo v3, "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4232
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4233
    const v3, 0x11200a9

    .line 4232
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4236
    :cond_6
    return-object v2
.end method

.method public getRemainingMuteIntervalMs()I
    .locals 3

    .prologue
    .line 4470
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRemainingMuteIntervalMs()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4471
    :catch_0
    move-exception v0

    .line 4472
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error calling getRemainingMuteIntervalMs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4473
    const/4 v1, 0x0

    return v1
.end method

.method public getRingerMode()I
    .locals 3

    .prologue
    .line 1219
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1221
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerModeExternal()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getRingerModeInternal()I
    .locals 2

    .prologue
    .line 4429
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerModeInternal()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4430
    :catch_0
    move-exception v0

    .line 4431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 2

    .prologue
    .line 4157
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4158
    :catch_0
    move-exception v0

    .line 4159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRouting(I)I
    .locals 1
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2351
    const/4 v0, -0x1

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1255
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1257
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getStreamMinVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1272
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1274
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1290
    iget-boolean v2, p0, Landroid/media/AudioManager;->mIsFineVolumeWhiteList:Z

    if-eqz v2, :cond_0

    .line 1291
    add-int/lit16 p1, p1, 0x3e8

    .line 1293
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1295
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getStreamVolume(II)I
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .prologue
    const/4 v4, -0x1

    .line 5953
    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5954
    return v4

    .line 5956
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5958
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->getStreamVolumeForDevice(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5959
    :catch_0
    move-exception v0

    .line 5960
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5962
    return v4
.end method

.method public getUiSoundsStreamType()I
    .locals 3

    .prologue
    .line 1322
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1324
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getUiSoundsStreamType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getVibrateSetting(I)I
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    .line 1548
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1550
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1551
    :catch_0
    move-exception v0

    .line 1552
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public handleKeyDown(Landroid/view/KeyEvent;I)V
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 996
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 997
    .local v2, "keyCode":I
    sparse-switch v2, :sswitch_data_0

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 1003
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    .line 1004
    .local v4, "scanCode":I
    const/16 v7, 0x215

    if-eq v4, v7, :cond_0

    const/16 v7, 0x216

    if-eq v4, v7, :cond_0

    .line 1015
    .end local v4    # "scanCode":I
    :sswitch_1
    const/16 v7, 0x18

    if-eq v2, v7, :cond_1

    const/16 v7, 0xa8

    if-ne v2, v7, :cond_2

    .line 1019
    :cond_1
    :goto_1
    const/16 v7, 0x11

    .line 1014
    invoke-virtual {p0, v6, p2, v7}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0

    .line 1017
    :cond_2
    const/4 v6, -0x1

    goto :goto_1

    .line 1032
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_0

    .line 1036
    const/4 v0, 0x1

    .line 1037
    .local v0, "flags2":I
    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v5

    .line 1038
    .local v5, "streamType":I
    iget-object v8, p0, Landroid/media/AudioManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/media/AudioManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 1039
    :goto_2
    const/4 v8, 0x3

    if-ne v5, v8, :cond_7

    .line 1040
    invoke-static {}, Landroid/media/AudioManager;->semIsMediaSilentMode()Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    :cond_3
    invoke-static {v6}, Landroid/media/AudioManager;->semSetMediaSilentMode(Z)V

    .line 1051
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 1052
    const/4 v0, 0x0

    .line 1054
    :cond_5
    invoke-virtual {p0, v7, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0

    .line 1038
    :cond_6
    const/4 v1, 0x0

    .local v1, "isLocked":Z
    goto :goto_2

    .line 1042
    .end local v1    # "isLocked":Z
    :cond_7
    if-nez v1, :cond_4

    .line 1043
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 1044
    .local v3, "ringerMode":I
    if-eq v3, v9, :cond_8

    .line 1045
    invoke-virtual {p0, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_3

    .line 1047
    :cond_8
    invoke-virtual {p0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_3

    .line 997
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x5b -> :sswitch_2
        0xa4 -> :sswitch_2
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleKeyUp(Landroid/view/KeyEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/4 v3, 0x0

    .line 1064
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1065
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1071
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    .line 1072
    .local v1, "scanCode":I
    const/16 v2, 0x215

    if-eq v1, v2, :cond_0

    const/16 v2, 0x216

    if-eq v1, v2, :cond_0

    .line 1082
    .end local v1    # "scanCode":I
    :sswitch_1
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    if-eqz v2, :cond_1

    .line 1086
    const/4 v2, 0x4

    .line 1083
    invoke-virtual {p0, v3, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 1088
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    goto :goto_0

    .line 1091
    :sswitch_2
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 1065
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isAudioFocusExclusive()Z
    .locals 4

    .prologue
    .line 2380
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2382
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getCurrentAudioFocus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2383
    :catch_0
    move-exception v0

    .line 2384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isBluetoothA2dpOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2043
    const-string/jumbo v0, ""

    const/16 v1, 0x80

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2045
    return v2

    .line 2046
    :cond_0
    const-string/jumbo v0, ""

    const/16 v1, 0x100

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2048
    return v2

    .line 2049
    :cond_1
    const-string/jumbo v0, ""

    const/16 v1, 0x200

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2051
    return v2

    .line 2053
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .locals 2

    .prologue
    .line 1885
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1886
    const v1, 0x1120057

    .line 1885
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 3

    .prologue
    .line 2020
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2022
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2023
    :catch_0
    move-exception v0

    .line 2024
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isForceSpeakerOn()Z
    .locals 4

    .prologue
    .line 1647
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1649
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isForceSpeakerOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in isForceSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1652
    const/4 v2, 0x0

    return v2
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 2

    .prologue
    .line 4526
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->isHdmiSystemAudioSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4527
    :catch_0
    move-exception v0

    .line 4528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isMasterMute()Z
    .locals 3

    .prologue
    .line 1465
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1467
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isMasterMute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isMediaSpeakerOn()Z
    .locals 1

    .prologue
    .line 1739
    const/4 v0, 0x0

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .prologue
    .line 2150
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isMultiSoundOn()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5921
    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5922
    return v4

    .line 5924
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5926
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isMultiSoundOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5927
    :catch_0
    move-exception v0

    .line 5928
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in isMultiSoundOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5930
    return v4
.end method

.method public isMusicActive()Z
    .locals 2

    .prologue
    .line 2360
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isMusicActiveRemotely()Z
    .locals 2

    .prologue
    .line 2370
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    return v0
.end method

.method public isSafeMediaVolumeDeviceOn(I)Z
    .locals 3
    .param p1, "device"    # I

    .prologue
    .line 6030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SafeMediaVolumeDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6031
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6032
    const/4 v1, 0x1

    return v1

    .line 6034
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSilentMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3828
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 3830
    .local v0, "ringerMode":I
    if-eqz v0, :cond_0

    .line 3831
    if-ne v0, v1, :cond_1

    .line 3832
    .local v1, "silentMode":Z
    :cond_0
    :goto_0
    return v1

    .end local v1    # "silentMode":Z
    :cond_1
    move v1, v2

    .line 3831
    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 3

    .prologue
    .line 1615
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1617
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 4393
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamAffectedByMute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4394
    :catch_0
    move-exception v0

    .line 4395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 4381
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamAffectedByRingerMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4382
    :catch_0
    move-exception v0

    .line 4383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isStreamMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1451
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1453
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isUsingAudio(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5561
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5562
    :cond_0
    return v3

    .line 5563
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUseAudio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5564
    .local v0, "strIsUsingAudio":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5565
    const/4 v1, 0x1

    return v1

    .line 5567
    :cond_2
    return v3
.end method

.method public isVolumeFixed()Z
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2076
    const-string/jumbo v0, ""

    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2078
    const-string/jumbo v0, ""

    const/16 v1, 0x8

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2080
    return v2

    .line 2082
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadSoundEffects()V
    .locals 3

    .prologue
    .line 2791
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2793
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    return-void

    .line 2794
    :catch_0
    move-exception v0

    .line 2795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 4369
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4367
    return-void

    .line 4370
    :catch_0
    move-exception v0

    .line 4371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public playHighampereGame(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 5520
    if-eqz p1, :cond_0

    .line 5521
    const-string/jumbo v0, "audioParam;High_ampere_game=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5519
    :goto_0
    return-void

    .line 5523
    :cond_0
    const-string/jumbo v0, "audioParam;High_ampere_game=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playMySpaceEffect(I)I
    .locals 4
    .param p1, "effectType"    # I

    .prologue
    const/4 v3, 0x0

    .line 5343
    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsSplitSoundOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsGearVrMounted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    invoke-virtual {v0}, Landroid/media/MySpaceManager;->checkEnableCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5344
    :cond_0
    return v3

    .line 5347
    :cond_1
    iget-object v0, p0, Landroid/media/AudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v1, p0, Landroid/media/AudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v1, v1, Landroid/media/MySpaceManager;->mRingAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/media/MySpaceManager;->playMySpaceEffect(Landroid/media/AudioAttributes;I)V

    .line 5348
    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playMySpaceEffect RING FADE OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    return v3
.end method

.method public playSoundEffect(I)V
    .locals 3
    .param p1, "effectType"    # I

    .prologue
    .line 2666
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    .line 2667
    add-int/lit8 v2, p1, -0x64

    add-int/lit8 p1, v2, 0xa

    .line 2670
    :cond_0
    if-ltz p1, :cond_1

    const/16 v2, 0x10

    if-lt p1, v2, :cond_2

    .line 2671
    :cond_1
    return-void

    .line 2680
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2681
    :cond_3
    return-void

    .line 2685
    :cond_4
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2687
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2664
    return-void

    .line 2688
    :catch_0
    move-exception v0

    .line 2689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public playSoundEffect(IF)V
    .locals 3
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2761
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    .line 2762
    add-int/lit8 v2, p1, -0x64

    add-int/lit8 p1, v2, 0xa

    .line 2765
    :cond_0
    if-ltz p1, :cond_1

    const/16 v2, 0x10

    if-lt p1, v2, :cond_2

    .line 2766
    :cond_1
    return-void

    .line 2769
    :cond_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2771
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2759
    return-void

    .line 2772
    :catch_0
    move-exception v0

    .line 2773
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public playSoundEffect(II)V
    .locals 3
    .param p1, "effectType"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2713
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    .line 2714
    add-int/lit8 v2, p1, -0x64

    add-int/lit8 p1, v2, 0xa

    .line 2717
    :cond_0
    if-ltz p1, :cond_1

    const/16 v2, 0x10

    if-lt p1, v2, :cond_2

    .line 2718
    :cond_1
    return-void

    .line 2727
    :cond_2
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2728
    :cond_3
    return-void

    .line 2732
    :cond_4
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2734
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2711
    return-void

    .line 2735
    :catch_0
    move-exception v0

    .line 2736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    .line 979
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 980
    .local v0, "keyCode":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 981
    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    .line 982
    iget-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v4, 0x0

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 987
    const/4 v1, 0x0

    .line 988
    const/16 v2, 0x8

    .line 987
    invoke-virtual {p0, v1, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 974
    :cond_0
    return-void
.end method

.method public registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/AudioDeviceCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 5047
    iget-object v2, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 5048
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    .line 5046
    return-void

    .line 5049
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 5050
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    if-nez v1, :cond_2

    .line 5051
    new-instance v1, Landroid/media/AudioManager$OnAmPortUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/media/AudioManager$OnAmPortUpdateListener;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAmPortUpdateListener;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 5053
    :cond_2
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 5056
    :cond_3
    new-instance v0, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 5057
    .local v0, "delegate":Landroid/media/AudioManager$NativeEventHandlerDelegate;
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5058
    invoke-virtual {v0}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/AudioManager;->broadcastDeviceListChange(Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5047
    .end local v0    # "delegate":Landroid/media/AudioManager$NativeEventHandlerDelegate;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 3003
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3004
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 3005
    return-void

    .line 3007
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 3002
    return-void

    .line 3003
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I
    .locals 6
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .prologue
    .line 3549
    if-nez p1, :cond_0

    .line 3550
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Illegal null AudioPolicy argument"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3552
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 3554
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    .line 3555
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->hasFocusListener()Z

    move-result v5

    .line 3554
    invoke-interface {v2, v3, v4, v5}, Landroid/media/IAudioService;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;

    move-result-object v1

    .line 3556
    .local v1, "regId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3557
    const/4 v3, -0x1

    return v3

    .line 3559
    :cond_1
    invoke-virtual {p1, v1}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3565
    const/4 v3, 0x0

    return v3

    .line 3562
    .end local v1    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .prologue
    .line 4727
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    .line 4728
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 4726
    return-void
.end method

.method public registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3637
    if-nez p1, :cond_0

    .line 3638
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Illegal null AudioRecordingCallback argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3641
    :cond_0
    iget-object v5, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3643
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 3644
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    .line 3646
    :cond_1
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 3647
    .local v2, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3648
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    new-instance v6, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    .line 3649
    new-instance v7, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v7, p0, p2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    invoke-virtual {v7}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 3648
    invoke-direct {v6, p1, v7}, Landroid/media/AudioManager$AudioRecordingCallbackInfo;-><init>(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3650
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 3651
    .local v1, "newCbCount":I
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 3653
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3655
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "newCbCount":I
    .end local v3    # "service":Landroid/media/IAudioService;
    :cond_2
    :goto_0
    monitor-exit v5

    .line 3635
    return-void

    .line 3656
    .restart local v1    # "newCbCount":I
    .restart local v3    # "service":Landroid/media/IAudioService;
    :catch_0
    move-exception v0

    .line 3657
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3641
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "newCbCount":I
    .end local v2    # "oldCbCount":I
    .end local v3    # "service":Landroid/media/IAudioService;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3661
    .restart local v2    # "oldCbCount":I
    :cond_3
    :try_start_3
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "attempt to call registerAudioRecordingCallback() on a previouslyregistered callback"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3387
    if-nez p1, :cond_0

    .line 3388
    return-void

    .line 3390
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 3386
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3345
    if-nez p1, :cond_0

    .line 3346
    return-void

    .line 3348
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3349
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    return-void

    .line 3354
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 3356
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.app.together"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3357
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->setTogether(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3364
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3365
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3367
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3368
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3370
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 3344
    return-void

    .line 3359
    .end local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catch_0
    move-exception v0

    .line 3360
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Dead object in unregisterMediaButtonEventReceiver"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 3398
    if-nez p1, :cond_0

    .line 3399
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    return-void

    .line 3402
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 3403
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 3397
    return-void
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3468
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3469
    :cond_0
    return-void

    .line 3471
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    .line 3467
    return-void
.end method

.method public registerRemoteController(Landroid/media/RemoteController;)Z
    .locals 1
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3508
    if-nez p1, :cond_0

    .line 3509
    const/4 v0, 0x0

    return v0

    .line 3511
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->startListeningToSessions()V

    .line 3512
    const/4 v0, 0x1

    return v0
.end method

.method public reloadAudioSettings()V
    .locals 3

    .prologue
    .line 3790
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3792
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3789
    return-void

    .line 3793
    :catch_0
    move-exception v0

    .line 3794
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "streamType"    # I
    .param p3, "durationHint"    # I

    .prologue
    .line 3061
    const/4 v1, 0x0

    .line 3069
    .local v1, "status":I
    const/16 v2, 0xa

    if-ne p2, v2, :cond_0

    .line 3070
    :try_start_0
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 3071
    const-string/jumbo v3, "FM_RADIO"

    .line 3070
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 3076
    :goto_0
    const/4 v3, 0x0

    .line 3067
    invoke-virtual {p0, p1, v2, p3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3081
    :goto_1
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAudioFocus status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    return v1

    .line 3073
    :cond_0
    :try_start_1
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 3077
    :catch_0
    move-exception v0

    .line 3078
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audio focus request denied due to "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    .locals 6
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "durationHint"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3161
    and-int/lit8 v0, p4, 0x3

    if-eq p4, v0, :cond_0

    .line 3162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3163
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 3162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3166
    :cond_0
    and-int/lit8 v4, p4, 0x3

    .line 3167
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 3165
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    return v0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I
    .locals 24
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "durationHint"    # I
    .param p4, "flags"    # I
    .param p5, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3201
    if-nez p2, :cond_0

    .line 3202
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Illegal null AudioAttributes argument"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3204
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, p3

    if-lt v0, v3, :cond_1

    .line 3205
    const/4 v3, 0x4

    move/from16 v0, p3

    if-le v0, v3, :cond_2

    .line 3206
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid duration hint"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3208
    :cond_2
    and-int/lit8 v3, p4, 0x7

    move/from16 v0, p4

    if-eq v0, v3, :cond_3

    .line 3209
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal flags 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3210
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 3209
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3212
    :cond_3
    and-int/lit8 v3, p4, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    if-nez p1, :cond_4

    .line 3213
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 3214
    const-string/jumbo v4, "Illegal null focus listener when flagged as accepting delayed focus grant"

    .line 3213
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3216
    :cond_4
    and-int/lit8 v3, p4, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    if-nez p5, :cond_5

    .line 3217
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 3218
    const-string/jumbo v4, "Illegal null audio policy when locking audio focus"

    .line 3217
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3221
    :cond_5
    const/16 v23, 0x0

    .line 3222
    .local v23, "status":I
    invoke-virtual/range {p0 .. p1}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 3223
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 3226
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "FM_RADIO"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3227
    const-string/jumbo v8, "com.sec.android.app.fm"

    .line 3228
    .local v8, "packageName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 3229
    .local v22, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 3230
    .local v18, "caller":I
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v21

    .line 3231
    .local v21, "pkgName":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v19, v21, v3

    .line 3233
    .local v19, "callerPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_SupportNextRadio"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3234
    const-string/jumbo v3, "com.nextradioapp.nextradio"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3235
    const-string/jumbo v8, "com.nextradioapp.nextradio"

    .line 3239
    :cond_6
    const-string/jumbo v3, "com.android.systemui"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3240
    move-object/from16 v8, v19

    .line 3242
    :cond_7
    const-string/jumbo v3, "com.sec.factory.app.fm"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3243
    move-object/from16 v8, v19

    .line 3245
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 3246
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct/range {p0 .. p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v7

    .line 3248
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v10

    :goto_0
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v9, p4

    .line 3245
    invoke-interface/range {v2 .. v10}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v23

    .line 3259
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v18    # "caller":I
    .end local v19    # "callerPackageName":Ljava/lang/String;
    .end local v21    # "pkgName":[Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return v23

    .line 3248
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v18    # "caller":I
    .restart local v19    # "callerPackageName":Ljava/lang/String;
    .restart local v21    # "pkgName":[Ljava/lang/String;
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    const/4 v10, 0x0

    goto :goto_0

    .line 3251
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v18    # "caller":I
    .end local v19    # "callerPackageName":Ljava/lang/String;
    .end local v21    # "pkgName":[Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 3252
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct/range {p0 .. p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v14

    .line 3253
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    .line 3254
    if-eqz p5, :cond_b

    invoke-virtual/range {p5 .. p5}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v17

    :goto_2
    move-object v9, v2

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v16, p4

    .line 3251
    invoke-interface/range {v9 .. v17}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    goto :goto_1

    .line 3254
    :cond_b
    const/16 v17, 0x0

    goto :goto_2

    .line 3256
    :catch_0
    move-exception v20

    .line 3257
    .local v20, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public requestAudioFocusForCall(II)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "durationHint"    # I

    .prologue
    .line 3273
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3275
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 3277
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 3278
    const-string/jumbo v5, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 3279
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3277
    const/4 v4, 0x0

    .line 3280
    const/4 v7, 0x4

    .line 3281
    const/4 v8, 0x0

    move v2, p2

    .line 3275
    invoke-interface/range {v0 .. v8}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3272
    return-void

    .line 3282
    :catch_0
    move-exception v9

    .line 3283
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semDismissVolumePanel()V
    .locals 4

    .prologue
    .line 4287
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4289
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->dismissVolumePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4286
    :goto_0
    return-void

    .line 4290
    :catch_0
    move-exception v0

    .line 4291
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in dismissVolumePanel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semForceVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 1482
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1481
    return-void
.end method

.method public semGetAudioFocusedPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4311
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4313
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getCurrentAudioFocusPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 4314
    :catch_0
    move-exception v0

    .line 4315
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in getCurrentAudioFocusPackageName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4317
    const/4 v2, 0x0

    return-object v2
.end method

.method public semGetAvailableDeviceMaskForQuickSoundPath()I
    .locals 1

    .prologue
    .line 5795
    invoke-virtual {p0}, Landroid/media/AudioManager;->getAvailableDeviceMaskForQuickSoundPath()I

    move-result v0

    return v0
.end method

.method public semGetCurrentDeviceType()I
    .locals 3

    .prologue
    .line 5546
    const-string/jumbo v1, "audioParam;outDevice"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5547
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5548
    :cond_0
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDeviceTypeActive : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5549
    const/4 v1, 0x0

    return v1

    .line 5551
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v1

    return v1
.end method

.method public semGetFineVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 5493
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 5494
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad stream type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5496
    :cond_0
    const-string/jumbo v2, "fine_volume_v2"

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5498
    .local v1, "strReturn":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5499
    :catch_0
    move-exception v0

    .line 5500
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    return v2
.end method

.method public semGetPinDevice()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5969
    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5970
    return v3

    .line 5973
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getPinDevice()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5974
    :catch_0
    move-exception v0

    .line 5975
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error calling isPinPanelVisible"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5976
    return v3
.end method

.method public semGetSituationVolume(II)F
    .locals 3
    .param p1, "situation"    # I
    .param p2, "device"    # I

    .prologue
    .line 5818
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5819
    .local v0, "ret":F
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x10

    if-le p1, v1, :cond_1

    .line 5820
    :cond_0
    return v0

    .line 5822
    :cond_1
    if-ltz p2, :cond_2

    const/4 v1, 0x2

    if-le p2, v1, :cond_3

    .line 5823
    :cond_2
    return v0

    .line 5825
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "situation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 5826
    return v0
.end method

.method public semIsExtraSpeakerDockOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2096
    const-string/jumbo v0, ""

    const/16 v1, 0x800

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2098
    const-string/jumbo v0, ""

    const/16 v1, 0x1000

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2100
    return v2

    .line 2102
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public semIsFineVolumeAvailable()Z
    .locals 2

    .prologue
    .line 5448
    const-string/jumbo v1, "is_fine_volume"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5449
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5450
    const/4 v1, 0x1

    return v1

    .line 5452
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public semIsFmRadioActive()Z
    .locals 2

    .prologue
    .line 2422
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public semIsGearVrMounted()Z
    .locals 2

    .prologue
    .line 5408
    const-string/jumbo v1, "HMTstate"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5409
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5410
    const/4 v1, 0x1

    return v1

    .line 5412
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public semIsHdmiConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2117
    const-string/jumbo v0, ""

    const/16 v1, 0x400

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2119
    return v2

    .line 2121
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public semIsRadioSpeakerOn()Z
    .locals 4

    .prologue
    .line 1689
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1691
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isRadioSpeakerOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1692
    :catch_0
    move-exception v0

    .line 1693
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in isRadioSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1694
    const/4 v2, 0x0

    return v2
.end method

.method public semIsRecordActive(I)Z
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 2437
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2438
    const-string/jumbo v1, "isRecordActive"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2439
    .local v0, "isRecordActive":Ljava/lang/String;
    const-string/jumbo v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2440
    const/4 v1, 0x1

    return v1

    .line 2442
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2445
    .end local v0    # "isRecordActive":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/media/AudioSystem;->isSourceActive(I)Z

    move-result v1

    return v1
.end method

.method public semIsRemoteSubmixOn()Z
    .locals 2

    .prologue
    .line 5392
    const-string/jumbo v1, "audioParam;split_sound_for_call"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5393
    .local v0, "isRemoteSubmixOn":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5394
    const/4 v1, 0x1

    return v1

    .line 5396
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public semIsSafeMediaVolumeDeviceOn()Z
    .locals 2

    .prologue
    .line 5577
    const-string/jumbo v1, "SafeMediaVolumeDevice"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5578
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5579
    const/4 v1, 0x1

    return v1

    .line 5581
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public semIsSplitSoundOn()Z
    .locals 2

    .prologue
    .line 5362
    const-string/jumbo v1, "SplitSound"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5363
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5364
    const/4 v1, 0x1

    return v1

    .line 5366
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public semIsSplitSoundRunning()Z
    .locals 2

    .prologue
    .line 5377
    const-string/jumbo v1, "audioParam;split_sound_for_call"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5378
    .local v0, "isRemoteSubmixOn":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5379
    const/4 v1, 0x1

    return v1

    .line 5381
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public semIsUhqAvailable()Z
    .locals 2

    .prologue
    .line 5423
    const-string/jumbo v1, "isAvailableUHQ"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5424
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5425
    const/4 v1, 0x1

    return v1

    .line 5427
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public semIsVoiceCallActive()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2457
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public semSetAppVolume(IF)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "trackVolume"    # F

    .prologue
    .line 5740
    invoke-static {p2}, Landroid/media/AudioManager;->semClampGainOrLevel(F)F

    move-result p2

    .line 5741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "appVolume_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";appVolume_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5739
    return-void
.end method

.method public semSetAppVolume(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageNames"    # Ljava/lang/String;
    .param p2, "trackVolume"    # F

    .prologue
    .line 5752
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5753
    :cond_0
    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "packageNames is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5754
    return-void

    .line 5756
    :cond_1
    invoke-static {p2}, Landroid/media/AudioManager;->semClampGainOrLevel(F)F

    move-result p2

    .line 5757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "appVolume_packagenames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";appVolume_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5751
    return-void
.end method

.method public semSetAudioHDR(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1710
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1712
    .local v0, "audioHDR":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audioHDR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 1709
    return-void

    .line 1710
    .end local v0    # "audioHDR":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "audioHDR":I
    goto :goto_0
.end method

.method public semSetDeviceForced(ILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 5808
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public semSetFineVolume(III)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 5475
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5476
    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFineVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 5479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5481
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fine_volume_v2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5482
    const-string/jumbo v1, ";"

    .line 5481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5482
    const-string/jumbo v1, "fine_volume_v2_flag"

    .line 5481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5482
    const-string/jumbo v1, "="

    .line 5481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 5474
    return-void
.end method

.method public semSetForceUseForMedia(I)V
    .locals 2
    .param p1, "forced_config"    # I

    .prologue
    .line 5605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceUseForMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 5604
    return-void
.end method

.method public semSetRadioSpeakerOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1673
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1675
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRadioSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    :goto_0
    return-void

    .line 1676
    :catch_0
    move-exception v0

    .line 1677
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in setRadioSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAppDevice(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .prologue
    .line 5843
    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5844
    return-void

    .line 5846
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5848
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setAppDevice(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5842
    :goto_0
    return-void

    .line 5849
    :catch_0
    move-exception v0

    .line 5850
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in setAppDevice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAppVolume(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .prologue
    .line 5877
    const/16 v2, 0x64

    if-gt p2, v2, :cond_0

    if-gez p2, :cond_1

    .line 5878
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid ratio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5881
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5883
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setAppVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5876
    :goto_0
    return-void

    .line 5884
    :catch_0
    move-exception v0

    .line 5885
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in setAppVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAudioServiceConfig(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 4326
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4328
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setAudioServiceConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4325
    :goto_0
    return-void

    .line 4329
    :catch_0
    move-exception v0

    .line 4330
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in setAudioServiceConfig"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    .line 4144
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 4145
    .local v2, "service":Landroid/media/IAudioService;
    const/4 v0, 0x0

    .line 4147
    .local v0, "delay":I
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/media/IAudioService;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4151
    return v0

    .line 4148
    :catch_0
    move-exception v1

    .line 4149
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2033
    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 1997
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2000
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    sget-object v3, Landroid/media/AudioManager;->mAudioLog:Landroid/media/AudioManager$AudioLog;

    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const/16 v4, 0x4948

    invoke-static {v3, v4}, Landroid/media/AudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2001
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2002
    .local v1, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2003
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setBluetoothScoOn call stack"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2005
    .end local v1    # "here":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "audioParam;FORCE_BT_SCO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2007
    invoke-interface {v2, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    return-void

    .line 2008
    :catch_0
    move-exception v0

    .line 2009
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public setDeviceToForceByUser(ILjava/lang/String;)I
    .locals 9
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 5223
    sget-object v6, Landroid/media/AudioManager;->sSetDeviceForceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5224
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p0, v5}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 5225
    .local v2, "outDevicesInfo":[Landroid/media/AudioDeviceInfo;
    array-length v4, v2

    .line 5227
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 5228
    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v5

    if-ne v5, p1, :cond_0

    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5229
    sget-object v5, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Device 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is available to set by force"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5230
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 5232
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_1
    invoke-interface {v3, p1, p2}, Landroid/media/IAudioService;->setDeviceToForceByUser(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    monitor-exit v6

    return v5

    .line 5233
    :catch_0
    move-exception v0

    .line 5234
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v5, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Dead object in setDeviceToForceByUser"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5236
    const/4 v5, 0x0

    monitor-exit v6

    return v5

    .line 5227
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "service":Landroid/media/IAudioService;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5239
    :cond_1
    const/4 v5, -0x1

    monitor-exit v6

    return v5

    .line 5223
    .end local v1    # "i":I
    .end local v2    # "outDevicesInfo":[Landroid/media/AudioDeviceInfo;
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setForceSpeakerOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1632
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1634
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setForceSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    :goto_0
    return-void

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in setForceSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHdmiDeviceConnectionState(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4122
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4124
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    const-string/jumbo v3, ""

    .line 4125
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4124
    const/16 v1, 0x400

    move v2, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4121
    :goto_0
    return-void

    .line 4126
    :catch_0
    move-exception v6

    .line 4127
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dead object in setHdmiDeviceConnectionState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 4512
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setHdmiSystemAudioSupported(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4513
    :catch_0
    move-exception v0

    .line 4514
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMasterMute(ZI)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1202
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1204
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1205
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1204
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    return-void

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setMaxLimitedSpkVolume(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 5534
    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxLimitedSpkVolume, uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "multisound_max_limited_spk_volume_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5536
    const-string/jumbo v1, "multisound_max_limited_spk_volume_state"

    .line 5535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5536
    const-string/jumbo v1, "="

    .line 5535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 5533
    return-void
.end method

.method public setMediaSpeakerOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1728
    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 2135
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2137
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2138
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2137
    invoke-interface {v1, p1, v2, v3}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2134
    return-void

    .line 2139
    :catch_0
    move-exception v0

    .line 2140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 2169
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2171
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    return-void

    .line 2172
    :catch_0
    move-exception v0

    .line 2173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setMultiSoundOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 5906
    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5907
    return-void

    .line 5909
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 5911
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setMultiSoundOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5905
    :goto_0
    return-void

    .line 5912
    :catch_0
    move-exception v0

    .line 5913
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Dead object in setMultiSoundOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMuteInterval(I)V
    .locals 3
    .param p1, "interval"    # I

    .prologue
    .line 4442
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMuteInterval(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4440
    :goto_0
    return-void

    .line 4443
    :catch_0
    move-exception v0

    .line 4444
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error calling setRingerModeInternal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2484
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 2496
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2498
    const-string/jumbo v0, "audioParam;volumelimit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2499
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 2495
    :cond_0
    return-void
.end method

.method public setRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 1347
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1348
    return-void

    .line 1350
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1352
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setRingerModeExternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    return-void

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setRingerModeInternal(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 4417
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setRingerModeInternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4415
    return-void

    .line 4418
    :catch_0
    move-exception v0

    .line 4419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRouting(III)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "routes"    # I
    .param p3, "mask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2337
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 1593
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1596
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    sget-object v3, Landroid/media/AudioManager;->mAudioLog:Landroid/media/AudioManager$AudioLog;

    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const/16 v4, 0x4948

    invoke-static {v3, v4}, Landroid/media/AudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1597
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1598
    .local v1, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1599
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setSpeakerphoneOn call stack"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1601
    .end local v1    # "here":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "audioParam;FORCE_SPEAKER="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1603
    invoke-interface {v2, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    return-void

    .line 1604
    :catch_0
    move-exception v0

    .line 1605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public setStatusbarHasVolumeSlider(Z)V
    .locals 0
    .param p1, "hasVolumeSlider"    # Z

    .prologue
    .line 4303
    return-void
.end method

.method public setStreamMute(IZ)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1434
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setStreamMute is deprecated. adjustStreamVolume should be used instead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    if-eqz p2, :cond_0

    const/16 v0, -0x64

    .line 1436
    .local v0, "direction":I
    :goto_0
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 1437
    invoke-virtual {p0, v0, p1, v3}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 1433
    :goto_1
    return-void

    .line 1435
    .end local v0    # "direction":I
    :cond_0
    const/16 v0, 0x64

    .restart local v0    # "direction":I
    goto :goto_0

    .line 1439
    :cond_1
    invoke-virtual {p0, p1, v0, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1
.end method

.method public setStreamSolo(IZ)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1397
    sget-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setStreamSolo has been deprecated. Do not use."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1374
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1376
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    return-void

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setStreamVolume(IIII)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .prologue
    .line 5937
    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5938
    return-void

    .line 5940
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5942
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setStreamVolumeForDevice(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5936
    :goto_0
    return-void

    .line 5943
    :catch_0
    move-exception v6

    .line 5944
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Dead object in setStreamVolume"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrateSetting(II)V
    .locals 3
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 1575
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1577
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    return-void

    .line 1578
    :catch_0
    move-exception v0

    .line 1579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 4355
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4353
    return-void

    .line 4356
    :catch_0
    move-exception v0

    .line 4357
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 4497
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4495
    return-void

    .line 4498
    :catch_0
    move-exception v0

    .line 4499
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 4103
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4106
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4105
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4102
    return-void

    .line 4107
    :catch_0
    move-exception v6

    .line 4108
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWiredHeadsetOn(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2063
    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    .line 1522
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1524
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1525
    :catch_0
    move-exception v0

    .line 1526
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startBluetoothSco()V
    .locals 4

    .prologue
    .line 1935
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1937
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 1938
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1937
    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    return-void

    .line 1939
    :catch_0
    move-exception v0

    .line 1940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startBluetoothScoVirtualCall()V
    .locals 3

    .prologue
    .line 1960
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1962
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    return-void

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public stopBluetoothSco()V
    .locals 3

    .prologue
    .line 1979
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1981
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1978
    return-void

    .line 1982
    :catch_0
    move-exception v0

    .line 1983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unloadSoundEffects()V
    .locals 3

    .prologue
    .line 2805
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2807
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2804
    return-void

    .line 2808
    :catch_0
    move-exception v0

    .line 2809
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/AudioDeviceCallback;

    .prologue
    .line 5070
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 5071
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5072
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5073
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 5074
    iget-object v0, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 5069
    return-void

    .line 5070
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 3019
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3020
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3016
    return-void

    .line 3019
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 4
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .prologue
    .line 3574
    if-nez p1, :cond_0

    .line 3575
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal null AudioPolicy argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3577
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 3579
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3580
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3573
    return-void

    .line 3581
    :catch_0
    move-exception v0

    .line 3582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .prologue
    .line 4736
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 4735
    return-void
.end method

.method public unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 7
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .prologue
    .line 3673
    if-nez p1, :cond_0

    .line 3674
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Illegal null AudioRecordingCallback argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3676
    :cond_0
    iget-object v5, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3677
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    monitor-exit v5

    .line 3678
    return-void

    .line 3680
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 3681
    .local v2, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3682
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 3683
    .local v1, "newCbCount":I
    if-lez v2, :cond_2

    if-nez v1, :cond_2

    .line 3685
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 3687
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_2
    iget-object v4, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "newCbCount":I
    .end local v3    # "service":Landroid/media/IAudioService;
    :cond_2
    :goto_0
    monitor-exit v5

    .line 3672
    return-void

    .line 3688
    .restart local v1    # "newCbCount":I
    .restart local v3    # "service":Landroid/media/IAudioService;
    :catch_0
    move-exception v0

    .line 3689
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3676
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "newCbCount":I
    .end local v2    # "oldCbCount":I
    .end local v3    # "service":Landroid/media/IAudioService;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3693
    .restart local v2    # "oldCbCount":I
    :cond_3
    :try_start_4
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "attempt to call unregisterAudioRecordingCallback() on a callback already unregistered or never registered"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3444
    if-nez p1, :cond_0

    .line 3445
    return-void

    .line 3447
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 3443
    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3414
    if-nez p1, :cond_0

    .line 3415
    return-void

    .line 3418
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 3420
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.app.together"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3421
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->setTogether(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3428
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3430
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3431
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3433
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 3413
    return-void

    .line 3423
    .end local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catch_0
    move-exception v0

    .line 3424
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Dead object in unregisterMediaButtonEventReceiver"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 3454
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 3455
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper;->removeMediaButtonListener(Landroid/app/PendingIntent;)V

    .line 3453
    return-void
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3483
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3484
    :cond_0
    return-void

    .line 3486
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    .line 3482
    return-void
.end method

.method public unregisterRemoteController(Landroid/media/RemoteController;)V
    .locals 0
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3527
    if-nez p1, :cond_0

    .line 3528
    return-void

    .line 3530
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->stopListeningToSessions()V

    .line 3526
    return-void
.end method

.method public updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sampleRate"    # I

    .prologue
    .line 5511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UHQ_BT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 5510
    return-void
.end method
