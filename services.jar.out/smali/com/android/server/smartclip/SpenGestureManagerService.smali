.class public Lcom/android/server/smartclip/SpenGestureManagerService;
.super Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenGestureManagerService$1;,
        Lcom/android/server/smartclip/SpenGestureManagerService$2;,
        Lcom/android/server/smartclip/SpenGestureManagerService$3;,
        Lcom/android/server/smartclip/SpenGestureManagerService$4;,
        Lcom/android/server/smartclip/SpenGestureManagerService$5;,
        Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;,
        Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;,
        Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
    }
.end annotation


# static fields
.field private static AC_DEBUG:Z = false

.field private static final EVENT_STATE_PEN_BUTTON_PRESSED:I

.field private static final HANDLE_MSG_HOVER_EXIT_EVENT:I = 0x3018

.field private static final HANDLE_MSG_SEND_DEFFERED_PEN_DETECTION_INFO:I = 0x301a

.field private static final HANDLE_MSG_SEND_PEN_DETECTION_INFO:I = 0x3019

.field private static final INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String; = "com.samsung.android.aircommand.intent.action.STATE_CHANGE"

.field private static final INTENT_ACTION_SCREEN_OFF_MEMO_STATE_CHANGED:Ljava/lang/String; = "com.sec.android.intent.action.BLACK_MEMO"

.field private static final MAX_META_FILE_COUNT:I = 0x3

.field private static final MAX_SMARTCLIP_REMOTE_REQUEST_DELAY:I = 0xbb8

.field private static final MSG_CMD_SEND_PEN_DETECTION_INFO:I = 0x1

.field private static PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

.field private static PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field private static USE_APP_FEATURE_NAME_SPAT:Ljava/lang/String;

.field private static USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private ALLOWANCE_HOVER_TIME:I

.field private ALLOWANCE_RANGE_X:I

.field private ALLOWANCE_RANGE_Y:I

.field private mAcAutoFloatingIconMode:Z

.field private mAcButtonPressTouchDownTime:J

.field private mAcIsBound:Z

.field private mAcIsFloatingIconEnabled:Z

.field private mAcIsHoverOccuredBeforeTouchDown:Z

.field private mAcIsPenButtonPressed:Z

.field private mAcIsScreenOffMemoShowing:Z

.field private mAcIsTouchDowned:Z

.field private mAcLastStartTime:J

.field private mAcPenButtonPressedTime:J

.field private mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

.field private mAcService:Landroid/os/Messenger;

.field private mAcServiceConnection:Landroid/content/ServiceConnection;

.field private mBatteryOnlineStatus:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCoverOpened:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDataExtractionSync:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHoverListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverStayDetectEnabled:Z

.field private mInboxSPen:Z

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsEnableLockScreenQuickNote:Z

.field private mIsPenInserted:Z

.field private mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

.field private mLastMetaFileId:I

.field private mPenDataStructArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;",
            ">;"
        }
    .end annotation
.end field

.field mPenDoubleTap:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mSPenGestureInputChannel:Landroid/view/InputChannel;

.field private mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

.field private mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

.field private mSpenUsingStartTime:J

.field private mSpenUspLevel:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/smartclip/SpenGestureManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    return-wide v0
.end method

.method static synthetic -get13(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return v0
.end method

.method static synthetic -get5()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/smartclip/SpenGestureManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/smartclip/SpenGestureManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isHapticFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendDefferedPenDetectionInfo()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isScreenPinningEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastBackPressedEvent()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/smartclip/SpenGestureManagerService;I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastHoverEvent(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/smartclip/SpenGestureManagerService;J)V
    .locals 1
    .param p1, "elapsedTime"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->calculateSpenUsingDuration(J)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "isButtonPressed"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkHoverStay(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->launchActionMemo()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->onFloatingIconSettingChanged(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "isButtonPressed"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/smartclip/SpenGestureManagerService;->processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "SpenGestureManagerService"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->AC_DEBUG:Z

    .line 97
    const-string/jumbo v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "SPEN"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "SPAT"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPAT:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    .line 186
    :goto_0
    sput v0, Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I

    .line 92
    return-void

    .line 187
    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;-><init>()V

    .line 118
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 120
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 127
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 129
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    .line 145
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 147
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    .line 149
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 151
    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 153
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 158
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 160
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 162
    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 170
    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    .line 182
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 184
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 189
    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 191
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 387
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$3;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 634
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    .line 1035
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Landroid/content/ServiceConnection;

    .line 1092
    iput v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 1093
    iput v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 1094
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 1095
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 281
    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 283
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 285
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SpenGestureManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;-><init>()V

    .line 118
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 120
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 127
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 129
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    .line 145
    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 147
    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    .line 149
    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 151
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 153
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 158
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 160
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 162
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 170
    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    .line 182
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 184
    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 189
    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 191
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 387
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$3;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 634
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    .line 1035
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Landroid/content/ServiceConnection;

    .line 1092
    iput v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 1093
    iput v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 1094
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 1095
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 289
    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 291
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 293
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SpenGestureManagerService(Context context, WindowManagerService Wm)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initSpenGesture()V

    .line 297
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 298
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    const-string/jumbo v1, "SPenGestureService"

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 299
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    .line 301
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSettingCondition()V

    .line 303
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string/jumbo v0, "com.samsung.cover.OPEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "com.samsung.android.service.airviewdictionary.set"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    if-eqz v0, :cond_0

    .line 310
    const-string/jumbo v0, "com.sec.android.intent.action.BLACK_MEMO"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    :cond_0
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 314
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    if-eqz v0, :cond_1

    .line 315
    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V

    .line 316
    .local v6, "observer":Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;
    invoke-virtual {v6}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->observe()V

    .line 288
    .end local v6    # "observer":Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;
    :cond_1
    return-void
.end method

.method private allocateMetaTagFilePath()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1214
    const-string/jumbo v1, "/data/clipboard/smartclip"

    .line 1215
    .local v1, "baseDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1217
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1218
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1219
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1222
    :cond_0
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    .line 1223
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    .line 1224
    const-string/jumbo v3, "%s/SC%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1225
    .local v2, "filePathName":Ljava/lang/String;
    return-object v2
.end method

.method private broastcastBackPressedEvent()V
    .locals 3

    .prologue
    .line 1348
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_0

    .line 1349
    return-void

    .line 1352
    :cond_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1353
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 1354
    add-int/lit8 v1, v1, -0x1

    .line 1356
    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v2}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onBackPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1357
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1362
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1347
    return-void
.end method

.method private broastcastHoverEvent(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    .line 1325
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_0

    .line 1326
    return-void

    .line 1328
    :cond_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1329
    .local v1, "i":I
    :cond_1
    :goto_0
    if-lez v1, :cond_3

    .line 1330
    add-int/lit8 v1, v1, -0x1

    .line 1332
    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    .line 1333
    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v2}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverEnter()V

    goto :goto_0

    .line 1337
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1334
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 1335
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v2}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverExit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1342
    :cond_3
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1344
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHoverListeners.getRegisteredCallbackCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void
.end method

.method private broastcastHoverStayEvent(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1366
    iget-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    if-nez v2, :cond_0

    .line 1367
    return-void

    .line 1370
    :cond_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_1

    .line 1371
    return-void

    .line 1374
    :cond_1
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1375
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    .line 1376
    add-int/lit8 v1, v1, -0x1

    .line 1378
    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverStay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1379
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1384
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1365
    return-void
.end method

.method private calculateSpenUsingDuration(J)V
    .locals 5
    .param p1, "elapsedTime"    # J

    .prologue
    const/high16 v4, 0x42700000    # 60.0f

    .line 1417
    const/4 v0, 0x0

    .line 1418
    .local v0, "duration":Ljava/lang/String;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1420
    .local v1, "usingMin":F
    const-wide/16 v2, 0x3e8

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 1421
    long-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1424
    :cond_0
    cmpl-float v2, v1, v4

    if-lez v2, :cond_1

    .line 1425
    const-string/jumbo v0, "MoreThan1Hour"

    .line 1438
    .local v0, "duration":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->USE_APP_FEATURE_NAME_SPEN:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    return-void

    .line 1426
    .local v0, "duration":Ljava/lang/String;
    :cond_1
    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 1427
    const-string/jumbo v0, "30to60Minutes"

    .local v0, "duration":Ljava/lang/String;
    goto :goto_0

    .line 1428
    .local v0, "duration":Ljava/lang/String;
    :cond_2
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 1429
    const-string/jumbo v0, "10to30Minutes"

    .local v0, "duration":Ljava/lang/String;
    goto :goto_0

    .line 1430
    .local v0, "duration":Ljava/lang/String;
    :cond_3
    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 1431
    const-string/jumbo v0, "5to10Minutes"

    .local v0, "duration":Ljava/lang/String;
    goto :goto_0

    .line 1432
    .local v0, "duration":Ljava/lang/String;
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    .line 1433
    const-string/jumbo v0, "1to5Minutes"

    .local v0, "duration":Ljava/lang/String;
    goto :goto_0

    .line 1435
    .local v0, "duration":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "1MinuteOrLess"

    .local v0, "duration":Ljava/lang/String;
    goto :goto_0
.end method

.method private canStartAirCommand()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 928
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 929
    const-string/jumbo v5, "device_provisioned"

    .line 928
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 930
    .local v1, "setupWizardRunning":Z
    :goto_0
    const/4 v0, 0x0

    .line 932
    .local v0, "errorMsg":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 933
    const-string/jumbo v0, "SetupWizard on"

    .line 940
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v0, :cond_4

    .line 941
    return v2

    .end local v1    # "setupWizardRunning":Z
    :cond_1
    move v1, v3

    .line 928
    goto :goto_0

    .line 934
    .restart local v0    # "errorMsg":Ljava/lang/String;
    .restart local v1    # "setupWizardRunning":Z
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 935
    const-string/jumbo v0, "FactoryMode on"

    .local v0, "errorMsg":Ljava/lang/String;
    goto :goto_1

    .line 936
    .local v0, "errorMsg":Ljava/lang/String;
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-eqz v4, :cond_0

    .line 937
    const-string/jumbo v0, "ScreenOffMemo on"

    .local v0, "errorMsg":Ljava/lang/String;
    goto :goto_1

    .line 944
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to start AirCommand."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return v3
.end method

.method private checkHoverStay(Landroid/view/MotionEvent;IZ)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "isButtonPressed"    # Z

    .prologue
    .line 1099
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1100
    return-void

    .line 1102
    :cond_0
    const/4 v5, 0x7

    if-ne p2, v5, :cond_4

    .line 1103
    new-instance v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;)V

    .line 1104
    .local v4, "penDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    .line 1105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    .line 1107
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x2

    .local v0, "chkIndex":I
    move v1, v0

    .line 1109
    .end local v0    # "chkIndex":I
    .local v1, "chkIndex":I
    :goto_0
    if-ltz v1, :cond_5

    .line 1110
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;)V

    .line 1111
    .local v2, "chkPenDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "chkIndex":I
    .restart local v0    # "chkIndex":I
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "chkPenDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    check-cast v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    .line 1112
    .restart local v2    # "chkPenDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    iget v5, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_3

    .line 1113
    iget v5, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    .line 1114
    iget v5, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    .line 1115
    iget v5, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    .line 1116
    iget-wide v6, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget-wide v8, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    int-to-long v10, v5

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 1117
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1118
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1119
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "RawX"

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1120
    const-string/jumbo v5, "RawY"

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1121
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dictionary service start : hover time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1122
    const-string/jumbo v7, " y = "

    .line 1121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1122
    iget v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 1121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget v5, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v6, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastHoverStayEvent(II)V

    .line 1124
    return-void

    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_1
    move v1, v0

    .line 1126
    .end local v0    # "chkIndex":I
    .restart local v1    # "chkIndex":I
    goto/16 :goto_0

    .line 1129
    .end local v1    # "chkIndex":I
    .restart local v0    # "chkIndex":I
    :cond_2
    return-void

    .line 1132
    :cond_3
    return-void

    .line 1136
    .end local v0    # "chkIndex":I
    .end local v2    # "chkPenDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    .end local v4    # "penDataStruct":Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;
    :cond_4
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1139
    :cond_5
    return-void
.end method

.method private checkInputEventInjectionPermission()V
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 456
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 458
    .local v0, "havePermission":Z
    :cond_0
    if-nez v0, :cond_1

    .line 459
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_1
    return-void
.end method

.method private checkSettingCondition()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 629
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 630
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "lock_screen_quick_note"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 631
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkSettingCondition, LOCK_SCREEN_QUICK_NOTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void

    :cond_0
    move v1, v2

    .line 630
    goto :goto_0
.end method

.method private checkSmartClipMetaExtractionPermission()V
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "srcPathName"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;

    .prologue
    .line 1260
    const/4 v2, 0x0

    .line 1261
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1262
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 1265
    .local v7, "ret":Z
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1268
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x1400

    :try_start_2
    new-array v0, v8, [B

    .line 1270
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 1271
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1275
    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1276
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "copyFile : Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1277
    const/4 v7, 0x0

    .line 1280
    if-eqz v2, :cond_0

    .line 1281
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1283
    :cond_0
    if-eqz v4, :cond_1

    .line 1284
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1289
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v7

    .line 1273
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1274
    const/4 v7, 0x1

    .line 1280
    if-eqz v3, :cond_3

    .line 1281
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1283
    :cond_3
    if-eqz v5, :cond_4

    .line 1284
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_3
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1278
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "read":I
    :catchall_0
    move-exception v8

    .line 1280
    :goto_4
    if-eqz v2, :cond_5

    .line 1281
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1283
    :cond_5
    if-eqz v4, :cond_6

    .line 1284
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1278
    :cond_6
    :goto_5
    throw v8

    .line 1286
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 1278
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1286
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 1275
    .end local v1    # "e":Ljava/lang/Exception;
    .local v2, "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 1286
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_3
.end method

.method private dispatchPenDetectionInfo(IJJ)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "eventTime"    # J
    .param p4, "delayTime"    # J

    .prologue
    .line 957
    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V

    .line 958
    .local v1, "p":Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;
    iput p1, v1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    .line 959
    iput-wide p2, v1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    .line 961
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 962
    .local v0, "m":Landroid/os/Message;
    const/16 v2, 0x3019

    iput v2, v0, Landroid/os/Message;->what:I

    .line 963
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 965
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 956
    return-void
.end method

.method private getFullScreenRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 620
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 621
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 622
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 624
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 625
    .local v2, "screenRect":Landroid/graphics/Rect;
    return-object v2
.end method

.method private getTopMostPackage()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1389
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1390
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1391
    .local v1, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1392
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getTopMostPackage : Failed to get running task info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const/4 v2, 0x0

    return-object v2

    .line 1396
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v2
.end method

.method private initCoverState()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 372
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 374
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    .line 375
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    return v1

    .line 378
    :cond_0
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initCoverState() : state is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v3

    .line 382
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_1
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return v3
.end method

.method private initSpenGesture()V
    .locals 4

    .prologue
    .line 322
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 323
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 325
    iget v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    rem-int/lit8 v1, v1, 0xa

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    .line 333
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 335
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 336
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 337
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 343
    :goto_1
    new-instance v1, Landroid/view/GestureDetector;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    .line 320
    return-void

    .line 329
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    goto :goto_0

    .line 340
    :cond_2
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initSpenGesture() : mCoverManager is null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isHapticFeedbackEnabled()Z
    .locals 3

    .prologue
    .line 1453
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1454
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v1

    return v1
.end method

.method private isScreenPinningEnabled()Z
    .locals 5

    .prologue
    .line 1442
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1443
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v2

    .line 1444
    .local v2, "lockTaskModeState":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 1445
    .local v1, "isWindowPinned":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1446
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isScreenPinningEnabled : Screen pinning mode enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_0
    return v1

    .line 1444
    .end local v1    # "isWindowPinned":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchActionMemo()V
    .locals 6

    .prologue
    .line 1186
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    .line 1187
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.action.POPUP_NOTE_DOUBLETAB"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v0, "actionMemoIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.app.notes"

    .line 1189
    const-string/jumbo v4, "com.samsung.android.app.notes.popupnote.PopupNoteService"

    .line 1188
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1191
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Trying to launch Samsung notes action memo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    .end local v0    # "actionMemoIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v2, "snoteIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.snote"

    .line 1195
    const-string/jumbo v4, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    .line 1194
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Trying to launch Snote aciton memo.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1199
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Snote action memo launch failed. Trying to launch diotek PenMemo..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v1, "diotekIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.diotek.mini_penmemo"

    .line 1203
    const-string/jumbo v4, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    .line 1202
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1206
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Diotek PenMemo launch failed. Sending legacy quick memo broadcasting"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "srcPathName"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;

    .prologue
    .line 1294
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1296
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1299
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1300
    .local v1, "ret":Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v2, "srcFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1302
    const/4 v1, 0x0

    .line 1304
    .end local v1    # "ret":Z
    :cond_1
    return v1
.end method

.method private moveMetaFilesToLocalStorage(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z
    .locals 2
    .param p1, "repository"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    .prologue
    .line 1229
    if-nez p1, :cond_0

    .line 1230
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "moveMetaFilesToLocalStorage : Empty repository!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v0, 0x0

    return v0

    .line 1256
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onFloatingIconSettingChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1026
    if-eqz p1, :cond_1

    .line 1027
    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 1028
    iget-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    .line 1025
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1028
    goto :goto_0

    .line 1030
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 1031
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    goto :goto_1
.end method

.method private processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "isButtonPressed"    # Z

    .prologue
    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 790
    return-void

    .line 793
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 787
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 797
    :pswitch_1
    if-eqz p3, :cond_2

    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 803
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v2, :cond_1

    .line 804
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    if-nez v2, :cond_1

    .line 805
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJ)V

    goto :goto_0

    .line 800
    :cond_2
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    goto :goto_1

    .line 812
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-eqz v2, :cond_4

    .line 823
    :cond_3
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 825
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 826
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 825
    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 830
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    if-eqz v2, :cond_8

    .line 831
    return-void

    .line 814
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    const/4 v10, 0x1

    .line 815
    .local v10, "newHoverDetected":Z
    :goto_4
    if-eqz v10, :cond_3

    .line 817
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 819
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJ)V

    goto :goto_2

    .line 814
    .end local v10    # "newHoverDetected":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 826
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 825
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 834
    :cond_8
    if-eqz p3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    if-eqz v2, :cond_b

    .line 838
    :cond_9
    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    if-eqz v2, :cond_1

    .line 840
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 843
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    sub-long v14, v2, v4

    .line 844
    .local v14, "pressedTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_a

    const-wide/16 v2, 0x320

    cmp-long v2, v14, v2

    if-lez v2, :cond_c

    .line 845
    :cond_a
    return-void

    .line 836
    .end local v14    # "pressedTime":J
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 837
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    goto/16 :goto_0

    .line 849
    .restart local v14    # "pressedTime":J
    :cond_c
    const-string/jumbo v8, "right"

    .line 850
    .local v8, "direction":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 851
    .local v18, "x":I
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v18

    if-ge v0, v2, :cond_d

    .line 852
    const-string/jumbo v8, "left"

    .line 856
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    if-nez v2, :cond_e

    .line 857
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Can not start AirCommand. #2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 862
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 863
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    sub-long v16, v12, v2

    .line 864
    .local v16, "startInterval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_f

    const-wide/16 v2, 0x190

    cmp-long v2, v16, v2

    if-gez v2, :cond_f

    .line 865
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not start AirCommand. #3."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 868
    :cond_f
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 871
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Start AirCommand. #2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 874
    .local v9, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "cause"

    const-string/jumbo v3, "button_pressed"

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string/jumbo v2, "direction"

    invoke-virtual {v9, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 880
    .end local v8    # "direction":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v12    # "now":J
    .end local v14    # "pressedTime":J
    .end local v16    # "startInterval":J
    .end local v18    # "x":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v2, :cond_1

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v3, -0x1

    .line 883
    const/16 v4, -0x100

    const/16 v5, 0x140

    .line 882
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/input/InputManager;->semGetScanCodeState(III)I

    move-result v2

    if-nez v2, :cond_10

    const/4 v11, 0x1

    .line 884
    .local v11, "penOff":Z
    :goto_5
    if-eqz v11, :cond_1

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3019

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3019

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 891
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    goto/16 :goto_0

    .line 882
    .end local v11    # "penOff":Z
    :cond_10
    const/4 v11, 0x0

    goto :goto_5

    .line 888
    .restart local v11    # "penOff":Z
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJ)V

    goto :goto_6

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 950
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.aircommand.intent.action.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.service.aircommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 953
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 949
    return-void
.end method

.method private sendDefferedPenDetectionInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1001
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    if-nez v3, :cond_0

    .line 1002
    return-void

    .line 1005
    :cond_0
    sget-boolean v3, Lcom/android/server/smartclip/SpenGestureManagerService;->AC_DEBUG:Z

    if-eqz v3, :cond_1

    .line 1006
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDefferedPenDetectionInfo."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget v5, v5, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1010
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "eventTime"

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget-wide v4, v4, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1011
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget v3, v3, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    const/4 v4, 0x1

    .line 1012
    const/4 v5, 0x0

    .line 1011
    invoke-static {v6, v4, v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 1015
    .local v2, "msg":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    if-eqz v3, :cond_2

    .line 1016
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :cond_2
    :goto_0
    iput-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 1000
    return-void

    .line 1018
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to send the pen detection info"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 1401
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1402
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.server.smartclip"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1408
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1411
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1399
    return-void
.end method

.method private sendPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .prologue
    const/4 v8, 0x0

    .line 969
    sget-boolean v4, Lcom/android/server/smartclip/SpenGestureManagerService;->AC_DEBUG:Z

    if-eqz v4, :cond_0

    .line 970
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendPenDetectionInfo."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    if-nez v4, :cond_1

    .line 974
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Start AirCommand. #0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 978
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "cause"

    const-string/jumbo v5, "pen_detected"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    .line 981
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 982
    return-void

    .line 986
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 987
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "eventTime"

    iget-wide v6, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 988
    iget v4, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v8, v5, v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 989
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 992
    :try_start_0
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    if-eqz v4, :cond_2

    .line 993
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :cond_2
    :goto_0
    return-void

    .line 995
    :catch_0
    move-exception v1

    .line 996
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to send the pen detection info"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startAirCommandService(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result v3

    if-nez v3, :cond_0

    .line 902
    return-void

    .line 905
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 906
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.service.aircommand"

    .line 907
    const-string/jumbo v4, "com.samsung.android.service.aircommand.AirCommandService"

    .line 906
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    if-eqz p1, :cond_1

    .line 909
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 911
    :cond_1
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 913
    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v3, :cond_3

    .line 914
    const/4 v2, 0x0

    .line 915
    .local v2, "ret":Z
    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    if-nez v3, :cond_2

    .line 916
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Landroid/content/ServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 918
    .end local v2    # "ret":Z
    :cond_2
    sget-boolean v3, Lcom/android/server/smartclip/SpenGestureManagerService;->AC_DEBUG:Z

    if-eqz v3, :cond_3

    .line 919
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bindService.isBound : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v1    # "i":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to start AirCommand. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1459
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1461
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1459
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const-string/jumbo v0, "AirCommand:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  UspLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  InBoxType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  PenInserted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAcIsBound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAcIsFloatingIconEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAcIsScreenOffMemoShowing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    return-void
.end method

.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v8, 0x0

    .line 516
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getScrollableRect()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 520
    :try_start_0
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 522
    .local v4, "windowManager":Landroid/view/IWindowManager;
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v1

    .line 524
    .local v1, "reqId":I
    new-instance v2, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 526
    const/4 v5, 0x4

    .line 527
    const/4 v6, 0x0

    .line 524
    invoke-direct {v2, v1, v5, v6}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 530
    .local v2, "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 531
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 529
    invoke-interface {v4, v5, v6, v2, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 534
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v6, 0xbb8

    invoke-virtual {v5, v1, v6}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object v3

    .line 535
    .local v3, "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    if-eqz v3, :cond_0

    .line 536
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getScrollableRect : Result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v5, v3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v5, Landroid/os/Bundle;

    return-object v5

    .line 539
    :cond_0
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getScrollableRect : Result is null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    return-object v8

    .line 542
    .end local v1    # "reqId":I
    .end local v2    # "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .end local v3    # "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .end local v4    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-object v8
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "viewHash"    # I
    .param p3, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v9, 0x0

    .line 551
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getScrollableViewInfo()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 555
    :try_start_0
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 557
    .local v5, "windowManager":Landroid/view/IWindowManager;
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 558
    .local v2, "reqId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 559
    .local v1, "reqData":Landroid/os/Bundle;
    const-string/jumbo v6, "hashCode"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    new-instance v3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 563
    const/4 v6, 0x5

    .line 561
    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 567
    .local v3, "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 568
    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 566
    invoke-interface {v5, v6, v7, v3, p3}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 571
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v7, 0xbb8

    invoke-virtual {v6, v2, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    .line 572
    .local v4, "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    if-eqz v4, :cond_0

    .line 573
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getScrollableViewInfo : Result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v6, v4, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v6, Landroid/os/Bundle;

    return-object v6

    .line 576
    :cond_0
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getScrollableViewInfo : Result is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    return-object v9

    .line 579
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception e : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object v9
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 12
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    .line 469
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getSmartClipDataByScreenRect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 473
    :try_start_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    if-nez p1, :cond_0

    .line 475
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getFullScreenRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 478
    :cond_0
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .line 479
    .local v7, "windowManager":Landroid/view/IWindowManager;
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v3

    .line 481
    .local v3, "reqId":I
    new-instance v4, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    invoke-direct {v4, v3, p1, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    .line 482
    .local v4, "requestData":Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;
    new-instance v5, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 484
    const/4 v8, 0x1

    .line 482
    invoke-direct {v5, v3, v8, v4}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 488
    .local v5, "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 489
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    .line 487
    invoke-interface {v7, v8, v10, v5, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 492
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v10, 0xbb8

    invoke-virtual {v8, v3, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object v6

    .line 493
    .local v6, "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    if-eqz v6, :cond_2

    .line 494
    iget-object v2, v6, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v2, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    .line 495
    .local v2, "metaDataResponse":Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;
    const/4 v1, 0x0

    .line 496
    .local v1, "extractedRepository":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    if-eqz v2, :cond_1

    .line 497
    iget-object v1, v2, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    .line 498
    .local v1, "extractedRepository":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    invoke-direct {p0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->moveMetaFilesToLocalStorage(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z

    .line 500
    .end local v1    # "extractedRepository":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    :cond_1
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSmartClipDataByScreenRect : wait is unlocked. Repository = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 501
    return-object v1

    .line 503
    .end local v2    # "metaDataResponse":Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;
    :cond_2
    :try_start_3
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getSmartClipDataByScreenRect : result is null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    const/4 v8, 0x0

    :try_start_4
    monitor-exit v9

    return-object v8

    .line 473
    .end local v3    # "reqId":I
    .end local v4    # "requestData":Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;
    .end local v5    # "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .end local v6    # "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSmartClipDataByScreenRect : Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v8, 0x0

    return-object v8
.end method

.method public injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    .locals 10
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p3, "inputEvents"    # [Landroid/view/InputEvent;
    .param p4, "waitUntilConsume"    # Z
    .param p5, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkInputEventInjectionPermission()V

    .line 590
    :try_start_0
    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :try_start_1
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 592
    .local v5, "windowManager":Landroid/view/IWindowManager;
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v6, p4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .line 594
    .local v2, "reqId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 595
    .local v1, "reqData":Landroid/os/Bundle;
    const-string/jumbo v6, "events"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 596
    const-string/jumbo v6, "waitUntilConsume"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 598
    new-instance v3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 600
    const/4 v6, 0x3

    .line 598
    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 603
    .local v3, "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    invoke-interface {v5, p1, p2, v3, p5}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 605
    if-eqz p4, :cond_0

    .line 606
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    .line 607
    .local v4, "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    if-eqz v4, :cond_1

    .line 608
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "injectInputEvent : Result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 586
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :goto_1
    return-void

    .line 610
    .restart local v1    # "reqData":Landroid/os/Bundle;
    .restart local v2    # "reqId":I
    .restart local v3    # "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .restart local v4    # "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .restart local v5    # "windowManager":Landroid/view/IWindowManager;
    :cond_1
    :try_start_3
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "injectInputEvent : Result is null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 590
    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "injectInputEvent : Exception thrown! e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public keyguardOn()Z
    .locals 3

    .prologue
    .line 1158
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1159
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SpenGestureManagerService :isKeyguardLocked : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/4 v1, 0x1

    return v1

    .line 1165
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public keyguardSecureOn()Z
    .locals 3

    .prologue
    .line 1169
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1170
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SpenGestureManagerService :isKeyguardSecure : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/4 v1, 0x1

    return v1

    .line 1176
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 1311
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1309
    return-void
.end method

.method public sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .locals 3
    .param p1, "result"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .prologue
    .line 439
    if-eqz p1, :cond_0

    .line 440
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmartClipRemoteRequestResult : requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->notifyResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V

    .line 438
    :goto_0
    return-void

    .line 443
    :cond_0
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendSmartClipRemoteRequestResult : result is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFocusWindow(I)V
    .locals 0
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 433
    return-void
.end method

.method public setHoverStayDetectEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1144
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z

    .line 1143
    return-void
.end method

.method public setHoverStayValues(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "hoverTime"    # I

    .prologue
    .line 1149
    if-lez p1, :cond_0

    .line 1150
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 1151
    :cond_0
    if-lez p2, :cond_1

    .line 1152
    iput p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 1153
    :cond_1
    if-lez p3, :cond_2

    .line 1154
    iput p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 1148
    :cond_2
    return-void
.end method

.method public unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1318
    :cond_0
    return-void
.end method
