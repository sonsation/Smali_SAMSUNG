.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$1;,
        Landroid/view/KeyEvent$Callback;,
        Landroid/view/KeyEvent$DispatcherState;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FALLBACK:I = 0x400

.field public static final FLAG_FORCE:I = 0x100000

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_PREDISPATCH:I = 0x20000000

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_11:I = 0xe3

.field public static final KEYCODE_12:I = 0xe4

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_2ND_SCREEN_WAKEUP:I = 0x42d

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_3D_MODE:I = 0xce

.field public static final KEYCODE_3G:I = 0x40c

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ACTIVE:I = 0x429

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_ANC:I = 0x438

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_APPSELECT:I = 0x431

.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_ASSIST:I = 0xdb

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_AVR_INPUT:I = 0xb6

.field public static final KEYCODE_AVR_POWER:I = 0xb5

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BLUETOOTH:I = 0x40d

.field public static final KEYCODE_BOOKMARK:I = 0xae

.field public static final KEYCODE_BREAK:I = 0x79

.field public static final KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final KEYCODE_BUTTON_1:I = 0xbc

.field public static final KEYCODE_BUTTON_10:I = 0xc5

.field public static final KEYCODE_BUTTON_11:I = 0xc6

.field public static final KEYCODE_BUTTON_12:I = 0xc7

.field public static final KEYCODE_BUTTON_13:I = 0xc8

.field public static final KEYCODE_BUTTON_14:I = 0xc9

.field public static final KEYCODE_BUTTON_15:I = 0xca

.field public static final KEYCODE_BUTTON_16:I = 0xcb

.field public static final KEYCODE_BUTTON_2:I = 0xbd

.field public static final KEYCODE_BUTTON_3:I = 0xbe

.field public static final KEYCODE_BUTTON_4:I = 0xbf

.field public static final KEYCODE_BUTTON_5:I = 0xc0

.field public static final KEYCODE_BUTTON_6:I = 0xc1

.field public static final KEYCODE_BUTTON_7:I = 0xc2

.field public static final KEYCODE_BUTTON_8:I = 0xc3

.field public static final KEYCODE_BUTTON_9:I = 0xc4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_GAME:I = 0x41a

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALCULATOR:I = 0xd2

.field public static final KEYCODE_CALENDAR:I = 0xd0

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CAMERA_FLASH:I = 0x404

.field public static final KEYCODE_CAMERA_FOCUS_RING_LEFT:I = 0x406

.field public static final KEYCODE_CAMERA_FOCUS_RING_RIGHT:I = 0x407

.field public static final KEYCODE_CAMERA_FUNCTION:I = 0x405

.field public static final KEYCODE_CAMERA_RECORD:I = 0x3fe

.field public static final KEYCODE_CAMERA_ZOOM_RING_IN:I = 0x408

.field public static final KEYCODE_CAMERA_ZOOM_RING_MOVE:I = 0x40a

.field public static final KEYCODE_CAMERA_ZOOM_RING_OUT:I = 0x409

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED1:I = 0x40e

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED2:I = 0x40f

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED3:I = 0x410

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED4:I = 0x411

.field public static final KEYCODE_CAM_QUICK:I = 0x42a

.field public static final KEYCODE_CAM_QUICK_FRONT:I = 0x42c

.field public static final KEYCODE_CAM_QUICK_REAR:I = 0x42b

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_CAPTIONS:I = 0xaf

.field public static final KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_CONTACTS:I = 0xcf

.field public static final KEYCODE_COPY:I = 0x116

.field public static final KEYCODE_CTRL_LEFT:I = 0x71

.field public static final KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final KEYCODE_CUT:I = 0x115

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DMB_ANT_CLOSE:I = 0x3fa

.field public static final KEYCODE_DMB_ANT_OPEN:I = 0x3f9

.field public static final KEYCODE_DOUBLE_TAP:I = 0x436

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_DOWN_LEFT:I = 0x10d

.field public static final KEYCODE_DPAD_DOWN_RIGHT:I = 0x10f

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_DPAD_UP_LEFT:I = 0x10c

.field public static final KEYCODE_DPAD_UP_RIGHT:I = 0x10e

.field public static final KEYCODE_DUMMY_BACK:I = 0x401

.field public static final KEYCODE_DUMMY_HOME:I = 0x400

.field public static final KEYCODE_DUMMY_HOME1:I = 0x402

.field public static final KEYCODE_DUMMY_HOME2:I = 0x403

.field public static final KEYCODE_DUMMY_MENU:I = 0x3ff

.field public static final KEYCODE_DVR:I = 0xad

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_EISU:I = 0xd4

.field public static final KEYCODE_EMERGENCY:I = 0x437

.field public static final KEYCODE_END:I = 0x40b

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_F1:I = 0x83

.field public static final KEYCODE_F10:I = 0x8c

.field public static final KEYCODE_F11:I = 0x8d

.field public static final KEYCODE_F12:I = 0x8e

.field public static final KEYCODE_F2:I = 0x84

.field public static final KEYCODE_F24:I = 0x432

.field public static final KEYCODE_F3:I = 0x85

.field public static final KEYCODE_F4:I = 0x86

.field public static final KEYCODE_F5:I = 0x87

.field public static final KEYCODE_F6:I = 0x88

.field public static final KEYCODE_F7:I = 0x89

.field public static final KEYCODE_F8:I = 0x8a

.field public static final KEYCODE_F9:I = 0x8b

.field public static final KEYCODE_FINGER_DETECTED:I = 0x415

.field public static final KEYCODE_FINGER_REMOVED:I = 0x416

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_FORWARD:I = 0x7d

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_FUNCTION:I = 0x77

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_GUIDE:I = 0xac

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HELP:I = 0x103

.field public static final KEYCODE_HENKAN:I = 0xd6

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_INFO:I = 0xa5

.field public static final KEYCODE_INSERT:I = 0x7c

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_JOG_LEFT:I = 0x3fb

.field public static final KEYCODE_JOG_RIGHT:I = 0x3fc

.field public static final KEYCODE_JOG_SELECT:I = 0x3fd

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_KANA:I = 0xda

.field public static final KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final KEYCODE_LAST_CHANNEL:I = 0xe5

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MANNER_MODE:I = 0xcd

.field public static final KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_SKIP_BACKWARD:I = 0x111

.field public static final KEYCODE_MEDIA_SKIP_FORWARD:I = 0x110

.field public static final KEYCODE_MEDIA_STEP_BACKWARD:I = 0x113

.field public static final KEYCODE_MEDIA_STEP_FORWARD:I = 0x112

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MEDIA_TOP_MENU:I = 0xe2

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_MESSAGE:I = 0x430

.field public static final KEYCODE_META_LEFT:I = 0x75

.field public static final KEYCODE_META_RIGHT:I = 0x76

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MOUSE_ACTION:I = 0x424

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_MUHENKAN:I = 0xd5

.field public static final KEYCODE_MULTI_WINDOW:I = 0x425

.field public static final KEYCODE_MUSIC:I = 0xd1

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NAVIGATE_IN:I = 0x106

.field public static final KEYCODE_NAVIGATE_NEXT:I = 0x105

.field public static final KEYCODE_NAVIGATE_OUT:I = 0x107

.field public static final KEYCODE_NAVIGATE_PREVIOUS:I = 0x104

.field public static final KEYCODE_NETWORK_SEL:I = 0x417

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_1:I = 0x91

.field public static final KEYCODE_NUMPAD_2:I = 0x92

.field public static final KEYCODE_NUMPAD_3:I = 0x93

.field public static final KEYCODE_NUMPAD_4:I = 0x94

.field public static final KEYCODE_NUMPAD_5:I = 0x95

.field public static final KEYCODE_NUMPAD_6:I = 0x96

.field public static final KEYCODE_NUMPAD_7:I = 0x97

.field public static final KEYCODE_NUMPAD_8:I = 0x98

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final KEYCODE_NUM_LOCK:I = 0x8f

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PAIRING:I = 0xe1

.field public static final KEYCODE_PASTE:I = 0x117

.field public static final KEYCODE_PDCT:I = 0x3f8

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_PROG_BLUE:I = 0xba

.field public static final KEYCODE_PROG_GREEN:I = 0xb8

.field public static final KEYCODE_PROG_RED:I = 0xb7

.field public static final KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_RO:I = 0xd9

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SETTINGS:I = 0xb0

.field public static final KEYCODE_SFINDER:I = 0x428

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SIDE_CAMERA_DETECTED:I = 0x423

.field public static final KEYCODE_SIDE_GESTURE_LEFT:I = 0x42f

.field public static final KEYCODE_SIDE_GESTURE_RIGHT:I = 0x42e

.field public static final KEYCODE_SIDE_TOUCH_0:I = 0x41b

.field public static final KEYCODE_SIDE_TOUCH_1:I = 0x41c

.field public static final KEYCODE_SIDE_TOUCH_2:I = 0x41d

.field public static final KEYCODE_SIDE_TOUCH_3:I = 0x41e

.field public static final KEYCODE_SIDE_TOUCH_4:I = 0x41f

.field public static final KEYCODE_SIDE_TOUCH_5:I = 0x420

.field public static final KEYCODE_SIDE_TOUCH_6:I = 0x421

.field public static final KEYCODE_SIDE_TOUCH_7:I = 0x422

.field public static final KEYCODE_SIM:I = 0x418

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SLEEP:I = 0xdf

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SOFT_SLEEP:I = 0x114

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_STB_INPUT:I = 0xb4

.field public static final KEYCODE_STB_POWER:I = 0xb3

.field public static final KEYCODE_STEM_1:I = 0x109

.field public static final KEYCODE_STEM_2:I = 0x10a

.field public static final KEYCODE_STEM_3:I = 0x10b

.field public static final KEYCODE_STEM_PRIMARY:I = 0x108

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field public static final KEYCODE_SYSRQ:I = 0x78

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_TA_CHARGING:I = 0x435

.field public static final KEYCODE_TOUCHPAD_OFF:I = 0x434

.field public static final KEYCODE_TOUCHPAD_ON:I = 0x433

.field public static final KEYCODE_TV:I = 0xaa

.field public static final KEYCODE_TV_ANTENNA_CABLE:I = 0xf2

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION:I = 0xfc

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN:I = 0xfe

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP:I = 0xfd

.field public static final KEYCODE_TV_CONTENTS_MENU:I = 0x100

.field public static final KEYCODE_TV_DATA_SERVICE:I = 0xe6

.field public static final KEYCODE_TV_INPUT:I = 0xb2

.field public static final KEYCODE_TV_INPUT_COMPONENT_1:I = 0xf9

.field public static final KEYCODE_TV_INPUT_COMPONENT_2:I = 0xfa

.field public static final KEYCODE_TV_INPUT_COMPOSITE_1:I = 0xf7

.field public static final KEYCODE_TV_INPUT_COMPOSITE_2:I = 0xf8

.field public static final KEYCODE_TV_INPUT_HDMI_1:I = 0xf3

.field public static final KEYCODE_TV_INPUT_HDMI_2:I = 0xf4

.field public static final KEYCODE_TV_INPUT_HDMI_3:I = 0xf5

.field public static final KEYCODE_TV_INPUT_HDMI_4:I = 0xf6

.field public static final KEYCODE_TV_INPUT_VGA_1:I = 0xfb

.field public static final KEYCODE_TV_MEDIA_CONTEXT_MENU:I = 0x101

.field public static final KEYCODE_TV_NETWORK:I = 0xf1

.field public static final KEYCODE_TV_NUMBER_ENTRY:I = 0xea

.field public static final KEYCODE_TV_POWER:I = 0xb1

.field public static final KEYCODE_TV_RADIO_SERVICE:I = 0xe8

.field public static final KEYCODE_TV_SATELLITE:I = 0xed

.field public static final KEYCODE_TV_SATELLITE_BS:I = 0xee

.field public static final KEYCODE_TV_SATELLITE_CS:I = 0xef

.field public static final KEYCODE_TV_SATELLITE_SERVICE:I = 0xf0

.field public static final KEYCODE_TV_TELETEXT:I = 0xe9

.field public static final KEYCODE_TV_TERRESTRIAL_ANALOG:I = 0xeb

.field public static final KEYCODE_TV_TERRESTRIAL_DIGITAL:I = 0xec

.field public static final KEYCODE_TV_TIMER_PROGRAMMING:I = 0x102

.field public static final KEYCODE_TV_ZOOM_MODE:I = 0xff

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VIRTUALEYE_BUTTON:I = 0x413

.field public static final KEYCODE_VOICEMEMO_BUTTON:I = 0x414

.field public static final KEYCODE_VOICE_ASSIST:I = 0xe7

.field public static final KEYCODE_VOICE_WAKEUP:I = 0x426

.field public static final KEYCODE_VOICE_WAKEUP_LPSD:I = 0x427

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_WAKEUP:I = 0xe0

.field public static final KEYCODE_WATCH:I = 0x419

.field public static final KEYCODE_WINDOW:I = 0xab

.field public static final KEYCODE_WINK:I = 0x43a

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_YEN:I = 0xd8

.field public static final KEYCODE_Z:I = 0x36

.field public static final KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final LABEL_PREFIX:Ljava/lang/String; = "KEYCODE_"

.field private static final LAST_KEYCODE:I = 0x117

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_MASK:I = 0x32

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_MASK:I = 0x7000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_MASK:I = 0x70000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_MASK:I = 0xc1

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field private static final META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYNTHETIC_MASK:I = 0xf00

.field private static final SAMSUNG_INPUTKEYCODE:I = 0x3e8

.field private static final SAMSUNG_LAST_KEYCODE:I = 0x43a

.field private static final SAMSUNG_START_KEYCODE:I = 0x3e8

.field public static final SEM_KEYCODE_ALT_GR:I = 0x3f2

.field public static final SEM_KEYCODE_APPLICATION:I = 0x3ea

.field public static final SEM_KEYCODE_CLIPBOARD:I = 0x3f1

.field public static final SEM_KEYCODE_EMAIL:I = 0x3f0

.field public static final SEM_KEYCODE_LANG:I = 0x3ed

.field public static final SEM_KEYCODE_LOCK:I = 0x3f3

.field public static final SEM_KEYCODE_MINIMODE_ON_OFF:I = 0x3e8

.field public static final SEM_KEYCODE_QPANEL_ON_OFF:I = 0x3eb

.field public static final SEM_KEYCODE_QUESTION:I = 0x3f6

.field public static final SEM_KEYCODE_RECENT_APPS:I = 0x3e9

.field public static final SEM_KEYCODE_SCREEN_CAPTURE:I = 0x3ec

.field public static final SEM_KEYCODE_SIP_ON_OFF:I = 0x3ee

.field public static final SEM_KEYCODE_SPEAKER:I = 0x3f4

.field public static final SEM_KEYCODE_TEXT:I = 0x3f5

.field public static final SEM_KEYCODE_USER:I = 0x3f7

.field public static final SEM_KEYCODE_VOICE_SEARCH:I = 0x3ef

.field public static final SEM_KEYCODE_WPS_BUTTON:I = 0x412

.field public static final SEM_META_ALT_GR_ON:I = 0x8000

.field static final TAG:Ljava/lang/String; = "KeyEvent"

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/KeyEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDeviceId:I

.field private mDisplayId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mNext:Landroid/view/KeyEvent;

.field private mRepeatCount:I

.field private mScanCode:I

.field private mSource:I


# direct methods
.method static synthetic -get0(Landroid/view/KeyEvent;)I
    .locals 1

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method static synthetic -set0(Landroid/view/KeyEvent;I)I
    .locals 0

    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1274
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 1275
    const-string/jumbo v1, "META_SHIFT_ON"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1276
    const-string/jumbo v1, "META_ALT_ON"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1277
    const-string/jumbo v1, "META_SYM_ON"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1278
    const-string/jumbo v1, "META_FUNCTION_ON"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1279
    const-string/jumbo v1, "META_ALT_LEFT_ON"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1280
    const-string/jumbo v1, "META_ALT_RIGHT_ON"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1281
    const-string/jumbo v1, "META_SHIFT_LEFT_ON"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1282
    const-string/jumbo v1, "META_SHIFT_RIGHT_ON"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1283
    const-string/jumbo v1, "META_CAP_LOCKED"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1284
    const-string/jumbo v1, "META_ALT_LOCKED"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1285
    const-string/jumbo v1, "META_SYM_LOCKED"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1286
    const-string/jumbo v1, "0x00000800"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1287
    const-string/jumbo v1, "META_CTRL_ON"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1288
    const-string/jumbo v1, "META_CTRL_LEFT_ON"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1289
    const-string/jumbo v1, "META_CTRL_RIGHT_ON"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1290
    const-string/jumbo v1, "0x00008000"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1291
    const-string/jumbo v1, "META_META_ON"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1292
    const-string/jumbo v1, "META_META_LEFT_ON"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1293
    const-string/jumbo v1, "META_META_RIGHT_ON"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1294
    const-string/jumbo v1, "0x00080000"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1295
    const-string/jumbo v1, "META_CAPS_LOCK_ON"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1296
    const-string/jumbo v1, "META_NUM_LOCK_ON"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1297
    const-string/jumbo v1, "META_SCROLL_LOCK_ON"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 1298
    const-string/jumbo v1, "0x00800000"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 1299
    const-string/jumbo v1, "0x01000000"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 1300
    const-string/jumbo v1, "0x02000000"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 1301
    const-string/jumbo v1, "0x04000000"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 1302
    const-string/jumbo v1, "0x08000000"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 1303
    const-string/jumbo v1, "0x10000000"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 1304
    const-string/jumbo v1, "0x20000000"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 1305
    const-string/jumbo v1, "0x40000000"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 1306
    const-string/jumbo v1, "0x80000000"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 1274
    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1712
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 3591
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    .line 3590
    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1792
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 1802
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1803
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1804
    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1805
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1806
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1807
    iput v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1802
    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I

    .prologue
    .line 1823
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1825
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1826
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1827
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1828
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1829
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1830
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1831
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1824
    return-void
.end method

.method public constructor <init>(JJIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I

    .prologue
    .line 1848
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1850
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1851
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1852
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1853
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1854
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1855
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1856
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1849
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I

    .prologue
    .line 1876
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1879
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1880
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1881
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1882
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1883
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1884
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1885
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1886
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1887
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1878
    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I

    .prologue
    .line 1907
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1910
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1911
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1912
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1913
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1914
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1915
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1916
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1917
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1918
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1919
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1909
    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I

    .prologue
    .line 1940
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1943
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1944
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1945
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1946
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1947
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1948
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1949
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1950
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1951
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1952
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1953
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1942
    return-void
.end method

.method public constructor <init>(JJIIIIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "displayId"    # I

    .prologue
    .line 1977
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1980
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1981
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1982
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1983
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1984
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1985
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1986
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1987
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1988
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1989
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1990
    iput p13, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1979
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "characters"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .param p5, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 2005
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2006
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2007
    iput-wide p1, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2008
    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2009
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2010
    iput v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2011
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2012
    iput p4, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2013
    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2014
    iput v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2015
    const/16 v0, 0x101

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2005
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3607
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 3608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 3609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 3610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 3615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 3617
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3618
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3607
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 2021
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2022
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2023
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2024
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2025
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2026
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2027
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2028
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2029
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2030
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2031
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2032
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2033
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2021
    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "action"    # I

    .prologue
    .line 2221
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2222
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2223
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2224
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2225
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2226
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2227
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2228
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2229
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2230
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2231
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2232
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2221
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "eventTime"    # J
    .param p4, "newRepeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2048
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2049
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2050
    iput-wide p2, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2051
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2052
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2053
    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2054
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2055
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2056
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2057
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2058
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2059
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2060
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2048
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 3504
    packed-switch p0, :pswitch_data_0

    .line 3512
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3506
    :pswitch_0
    const-string/jumbo v0, "ACTION_DOWN"

    return-object v0

    .line 3508
    :pswitch_1
    const-string/jumbo v0, "ACTION_UP"

    return-object v0

    .line 3510
    :pswitch_2
    const-string/jumbo v0, "ACTION_MULTIPLE"

    return-object v0

    .line 3504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "action"    # I

    .prologue
    .line 2245
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "flags"    # I

    .prologue
    .line 2256
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2257
    .end local p0    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2258
    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I

    .prologue
    .line 2192
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I
    .param p4, "newFlags"    # I

    .prologue
    .line 2208
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2209
    .local v0, "ret":Landroid/view/KeyEvent;
    iput-wide p1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2210
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2211
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2212
    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3604
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static getDeadChar(II)I
    .locals 1
    .param p0, "accent"    # I
    .param p1, "c"    # I

    .prologue
    .line 1705
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    return v0
.end method

.method public static getMaxKeyCode()I
    .locals 1

    .prologue
    .line 1680
    const/16 v0, 0x117

    return v0
.end method

.method public static getModifierMetaStateMask()I
    .locals 1

    .prologue
    .line 2623
    const v0, 0x770ff

    return v0
.end method

.method public static getSamsungLastKeyCode()I
    .locals 1

    .prologue
    .line 1695
    const/16 v0, 0x43a

    return v0
.end method

.method public static getSamsungStartKeyCode()I
    .locals 1

    .prologue
    .line 1688
    const/16 v0, 0x3e8

    return v0
.end method

.method public static final isAltKey(I)Z
    .locals 2
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 2471
    const/16 v1, 0x39

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3a

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 2344
    sparse-switch p0, :sswitch_data_0

    .line 2351
    const/4 v0, 0x0

    return v0

    .line 2349
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 2344
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isGamepadButton(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 2302
    sparse-switch p0, :sswitch_data_0

    .line 2336
    const/4 v0, 0x0

    return v0

    .line 2334
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 2302
    nop

    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x6e -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isMediaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 2362
    sparse-switch p0, :sswitch_data_0

    .line 2376
    const/4 v0, 0x0

    return v0

    .line 2374
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 2362
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isMetaKey(I)Z
    .locals 2
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 2466
    const/16 v1, 0x75

    if-eq p0, v1, :cond_0

    const/16 v1, 0x76

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isModifierKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 2643
    sparse-switch p0, :sswitch_data_0

    .line 2658
    const/4 v0, 0x0

    return v0

    .line 2656
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 2643
    nop

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3f -> :sswitch_0
        0x4e -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
        0x3f2 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isSystemKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 2384
    sparse-switch p0, :sswitch_data_0

    .line 2415
    const/4 v0, 0x0

    return v0

    .line 2412
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 2384
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xdc -> :sswitch_0
        0xdd -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isWakeKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 2420
    sparse-switch p0, :sswitch_data_0

    .line 2461
    const/4 v0, 0x0

    return v0

    .line 2453
    :sswitch_0
    return v0

    .line 2457
    :sswitch_1
    return v0

    .line 2420
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x1a -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0x109 -> :sswitch_0
        0x10a -> :sswitch_0
        0x10b -> :sswitch_0
        0x3f7 -> :sswitch_1
        0x3f9 -> :sswitch_0
        0x3fa -> :sswitch_0
        0x419 -> :sswitch_0
        0x426 -> :sswitch_0
        0x427 -> :sswitch_0
        0x437 -> :sswitch_0
    .end sparse-switch
.end method

.method public static keyCodeFromString(Ljava/lang/String;)I
    .locals 4
    .param p0, "symbolicName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3540
    const-string/jumbo v2, "KEYCODE_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3541
    const-string/jumbo v2, "KEYCODE_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3542
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeFromString(Ljava/lang/String;)I

    move-result v1

    .line 3543
    .local v1, "keyCode":I
    if-lez v1, :cond_0

    .line 3544
    return v1

    .line 3548
    .end local v1    # "keyCode":I
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3549
    :catch_0
    move-exception v0

    .line 3550
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v3
.end method

.method public static keyCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    .line 3527
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3528
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KEYCODE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 6
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 2784
    and-int v3, p1, p2

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 2785
    .local v1, "wantBasic":Z
    :goto_0
    or-int v0, p3, p4

    .line 2786
    .local v0, "directional":I
    and-int v3, p1, v0

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2788
    .local v2, "wantLeftOrRight":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 2789
    if-eqz v2, :cond_2

    .line 2790
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifiers must not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2791
    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    .line 2790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2791
    const-string/jumbo v5, " combined with "

    .line 2790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2792
    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    .line 2790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2792
    const-string/jumbo v5, " or "

    .line 2790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2792
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    .line 2790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2784
    .end local v0    # "directional":I
    .end local v1    # "wantBasic":Z
    .end local v2    # "wantLeftOrRight":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "wantBasic":Z
    goto :goto_0

    .line 2786
    .restart local v0    # "directional":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "wantLeftOrRight":Z
    goto :goto_1

    .line 2794
    :cond_2
    not-int v3, v0

    and-int/2addr v3, p0

    return v3

    .line 2795
    :cond_3
    if-eqz v2, :cond_4

    .line 2796
    not-int v3, p2

    and-int/2addr v3, p0

    return v3

    .line 2798
    :cond_4
    return p0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 5
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2763
    const v2, 0x700f00

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 2764
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2770
    :cond_0
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    const v3, 0x770ff

    and-int p0, v2, v3

    .line 2772
    const/16 v2, 0x40

    const/16 v3, 0x80

    .line 2771
    invoke-static {p0, p1, v0, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2774
    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    .line 2773
    invoke-static {p0, p1, v2, v3, v4}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2776
    const/16 v2, 0x1000

    const/16 v3, 0x2000

    const/16 v4, 0x4000

    .line 2775
    invoke-static {p0, p1, v2, v3, v4}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2778
    const/high16 v2, 0x10000

    const/high16 v3, 0x20000

    const/high16 v4, 0x40000

    .line 2777
    invoke-static {p0, p1, v2, v3, v4}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2779
    if-ne p0, p1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 3
    .param p0, "metaState"    # I

    .prologue
    const/4 v0, 0x0

    .line 2727
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    const v2, 0x770ff

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static metaStateToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "metaState"    # I

    .prologue
    const/4 v4, 0x0

    .line 3565
    if-nez p0, :cond_0

    .line 3566
    const-string/jumbo v4, "0"

    return-object v4

    .line 3568
    :cond_0
    const/4 v3, 0x0

    .line 3569
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3570
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .local v0, "i":I
    :goto_0
    if-eqz p0, :cond_5

    .line 3571
    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 3572
    .local v1, "isSet":Z
    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    .line 3573
    if-eqz v1, :cond_3

    .line 3574
    sget-object v5, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v5, v0

    .line 3575
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 3576
    if-nez p0, :cond_2

    .line 3577
    return-object v2

    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    move v1, v4

    .line 3571
    goto :goto_1

    .line 3579
    .restart local v1    # "isSet":Z
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3585
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3581
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3582
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3587
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static native nativeKeyCodeFromString(Ljava/lang/String;)I
.end method

.method private static native nativeKeyCodeToString(I)Ljava/lang/String;
.end method

.method public static normalizeMetaState(I)I
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 2687
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_0

    .line 2688
    or-int/lit8 p0, p0, 0x1

    .line 2690
    :cond_0
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_1

    .line 2691
    or-int/lit8 p0, p0, 0x2

    .line 2693
    :cond_1
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_2

    .line 2694
    or-int/lit16 p0, p0, 0x1000

    .line 2696
    :cond_2
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    .line 2697
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 2699
    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    .line 2700
    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 2702
    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_5

    .line 2703
    or-int/lit8 p0, p0, 0x2

    .line 2705
    :cond_5
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    .line 2706
    or-int/lit8 p0, p0, 0x4

    .line 2708
    :cond_6
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private static obtain()Landroid/view/KeyEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2065
    sget-object v2, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2066
    :try_start_0
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2067
    .local v0, "ev":Landroid/view/KeyEvent;
    if-nez v0, :cond_0

    .line 2068
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1}, Landroid/view/KeyEvent;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 2070
    :cond_0
    :try_start_1
    iget-object v1, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2071
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 2073
    iput-object v3, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2074
    invoke-virtual {v0}, Landroid/view/KeyEvent;->prepareForReuse()V

    .line 2075
    return-object v0

    .line 2065
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 2
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "displayId"    # I
    .param p12, "source"    # I
    .param p13, "characters"    # Ljava/lang/String;

    .prologue
    .line 2110
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2111
    .local v0, "ev":Landroid/view/KeyEvent;
    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2112
    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2113
    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2114
    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2115
    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2116
    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2117
    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2118
    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2119
    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2120
    iput p12, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2121
    iput-object p13, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2122
    iput p11, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2123
    return-object v0
.end method

.method public static obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 2
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "characters"    # Ljava/lang/String;

    .prologue
    .line 2086
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2087
    .local v0, "ev":Landroid/view/KeyEvent;
    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2088
    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2089
    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2090
    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2091
    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2092
    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2093
    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2094
    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2095
    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2096
    iput p11, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2097
    iput-object p12, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2098
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2099
    return-object v0
.end method

.method public static obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 4
    .param p0, "other"    # Landroid/view/KeyEvent;

    .prologue
    .line 2132
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2133
    .local v0, "ev":Landroid/view/KeyEvent;
    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v2, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2134
    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2135
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2136
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2137
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2138
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2139
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2140
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2141
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2142
    iget v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2143
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2144
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2145
    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 3028
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3027
    return-void
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .prologue
    .line 2150
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/KeyEvent;
    .locals 1

    .prologue
    .line 2151
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .locals 1
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3313
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Landroid/view/KeyEvent$DispatcherState;
    .param p3, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3329
    iget v5, p0, Landroid/view/KeyEvent;->mAction:I

    packed-switch v5, :pswitch_data_0

    .line 3379
    return v6

    .line 3331
    :pswitch_0
    iget v5, p0, Landroid/view/KeyEvent;->mFlags:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3334
    iget v5, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v5, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 3335
    .local v4, "res":Z
    if-eqz p2, :cond_0

    .line 3336
    if-eqz v4, :cond_1

    iget v5, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v5, :cond_1

    iget v5, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 3338
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 3350
    .end local v4    # "res":Z
    :cond_0
    :goto_0
    return v4

    .line 3339
    .restart local v4    # "res":Z
    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3341
    :try_start_0
    iget v5, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v5, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3343
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3344
    const/4 v4, 0x1

    .local v4, "res":Z
    goto :goto_0

    .line 3355
    .end local v4    # "res":Z
    :pswitch_1
    if-eqz p2, :cond_2

    .line 3356
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 3358
    :cond_2
    iget v5, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v5, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    .line 3360
    :pswitch_2
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3361
    .local v1, "count":I
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3362
    .local v0, "code":I
    invoke-interface {p1, v0, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3363
    return v7

    .line 3365
    :cond_3
    if-eqz v0, :cond_5

    .line 3366
    iput v6, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3367
    iput v6, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3368
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 3369
    .local v3, "handled":Z
    if-eqz v3, :cond_4

    .line 3370
    iput v7, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3371
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 3373
    :cond_4
    const/4 v5, 0x2

    iput v5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3374
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3375
    return v3

    .line 3377
    .end local v3    # "handled":Z
    :cond_5
    return v6

    .line 3346
    .end local v0    # "code":I
    .end local v1    # "count":I
    .local v4, "res":Z
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/AbstractMethodError;
    goto :goto_0

    .line 3329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getAction()I
    .locals 1

    .prologue
    .line 3010
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3078
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()I
    .locals 1

    .prologue
    .line 2477
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getDisplayLabel()C
    .locals 2

    .prologue
    .line 3182
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 2

    .prologue
    .line 3116
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEventTime()J
    .locals 2

    .prologue
    .line 3128
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 4

    .prologue
    .line 3147
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    .prologue
    .line 2556
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public final getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    .prologue
    .line 3172
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyCode()I
    .locals 1

    .prologue
    .line 3066
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .locals 2
    .param p1, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3244
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0
.end method

.method public final getKeyboardDevice()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3158
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getMatch([C)C
    .locals 1
    .param p1, "chars"    # [C

    .prologue
    .line 3259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public getMatch([CI)C
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "metaState"    # I

    .prologue
    .line 3272
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .locals 1

    .prologue
    .line 2527
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final getModifiers()I
    .locals 2

    .prologue
    .line 2547
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public getNumber()C
    .locals 2

    .prologue
    .line 3296
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final getRepeatCount()I
    .locals 1

    .prologue
    .line 3101
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final getScanCode()I
    .locals 1

    .prologue
    .line 3089
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final getSource()I
    .locals 1

    .prologue
    .line 2483
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public getUnicodeChar()I
    .locals 1

    .prologue
    .line 3205
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public getUnicodeChar(I)I
    .locals 2
    .param p1, "metaState"    # I

    .prologue
    .line 3229
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    return v0
.end method

.method public final hasModifiers(I)Z
    .locals 1
    .param p1, "modifiers"    # I

    .prologue
    .line 2848
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final hasNoModifiers()Z
    .locals 1

    .prologue
    .line 2817
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final isAltGrPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2963
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isAltPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2861
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isAltRightPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2868
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isCanceled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3018
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isCapsLockOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2976
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isCtrlPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2923
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isDown()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2283
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isFunctionPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2948
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isLongPress()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3056
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isMetaPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2936
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isNumLockOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2988
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPrintingKey()Z
    .locals 2

    .prologue
    .line 3305
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final isScrollLockOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3000
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isShiftPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2898
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isSymPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2910
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isSystem()Z
    .locals 1

    .prologue
    .line 2289
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2264
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isTracking()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3048
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isWakeKey()Z
    .locals 1

    .prologue
    .line 2294
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isWakeKey(I)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 2163
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2166
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2167
    :try_start_0
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 2168
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2169
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v0, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2170
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2162
    return-void

    .line 2166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final recycleIfNeededAfterDispatch()V
    .locals 0

    .prologue
    .line 2177
    return-void
.end method

.method public final semGetDisplayId()I
    .locals 1

    .prologue
    .line 2565
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return v0
.end method

.method public final semSetDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 2577
    iput p1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2576
    return-void
.end method

.method public final setClearRightShiftPressed()V
    .locals 1

    .prologue
    .line 2883
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2884
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 2885
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2882
    :cond_0
    return-void
.end method

.method public final setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 2489
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2488
    return-void
.end method

.method public final setTainted(Z)V
    .locals 2
    .param p1, "tainted"    # Z

    .prologue
    .line 2270
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2269
    return-void

    .line 2270
    :cond_0
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public final startTracking()V
    .locals 2

    .prologue
    .line 3039
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3038
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3477
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "KeyEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3478
    const-string/jumbo v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3479
    const-string/jumbo v1, ", scanCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3480
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3481
    const-string/jumbo v1, ", characters=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    :cond_0
    const-string/jumbo v1, ", metaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3484
    const-string/jumbo v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    const-string/jumbo v1, ", repeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3486
    const-string/jumbo v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3487
    const-string/jumbo v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3488
    const-string/jumbo v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3489
    const-string/jumbo v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3490
    const-string/jumbo v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3491
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3622
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3624
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3625
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3626
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3627
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3628
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3629
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3630
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3631
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3632
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3633
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3634
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3621
    return-void
.end method
