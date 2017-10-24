.class public Lcom/android/systemui/volume/SecVolumeDialog;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SecVolumeDialog$1;,
        Lcom/android/systemui/volume/SecVolumeDialog$2;,
        Lcom/android/systemui/volume/SecVolumeDialog$3;,
        Lcom/android/systemui/volume/SecVolumeDialog$4;,
        Lcom/android/systemui/volume/SecVolumeDialog$5;,
        Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;,
        Lcom/android/systemui/volume/SecVolumeDialog$Callback;,
        Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;,
        Lcom/android/systemui/volume/SecVolumeDialog$H;,
        Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;,
        Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final M_LATTE:Z

.field private static final SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

.field private static SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

.field private static final TAG:Ljava/lang/String;

.field private static mActiveStreamChanged:Z

.field public static mIsKnoxDesktopMode:Z

.field private static mIsKnoxDesktopModeChanged:Z

.field private static mIsLastKnoxDesktopMode:Z

.field public static mIsSafetyWarningShowing:Z

.field private static mRemoteControlCurrentVolume:I

.field private static mRemoteControlMaxVolume:I

.field public static mShowing:Z


# instance fields
.field private final DENSITY_XXHDPI:D

.field private final STREAM_MULTI_SOUND:I

.field private final STREAM_SMART_VIEW:I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveChildIndex:I

.field private mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

.field private final mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private mAfterHeight:I

.field private mApp:Lcom/android/systemui/SystemUIApplication;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mBTDeviceName:Ljava/lang/String;

.field private mBTScoDeviceName:Ljava/lang/String;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverOpened:Z

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private mCurSmartViewVol:I

.field private mCurrentWindowWidth:I

.field private mDensity:I

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogDndView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDisabledAlpha:F

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDivider:Landroid/view/View;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mEarProtectLevel:I

.field private mEarProtectLevelForMultiSound:I

.field private mEarProtectLevelforLockScreen:I

.field private mEarProtectLimit:I

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mExpandButtonAnimationDuration:I

.field private mExpandButtonAnimationRunning:Z

.field private mExpandButtonColor:Landroid/content/res/ColorStateList;

.field private mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

.field private mExpandCollapseAnimating:Z

.field private mExpanded:Z

.field private mExtraForRingerMode:Ljava/lang/String;

.field private mGhostView:Landroid/view/View;

.field private final mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

.field mHardwareAccelerated:Z

.field private mHfp:Landroid/bluetooth/BluetoothHeadset;

.field private mHovering:Z

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconDisabledColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

.field private final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mIsSafeMediaVolumeDeviceOn:Z

.field private mIsSafeMediaVolumeDeviceOnForMultiSound:Z

.field private mIsShowingSCoverWarning:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

.field private mLockScreenDialogContentView:Landroid/view/ViewGroup;

.field private mLockScreenDialogView:Landroid/view/ViewGroup;

.field private mMaxSmartViewVol:I

.field private mMinSmartViewVol:I

.field private mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mPinDevice:I

.field mPrevSystemRendererDisabled:Z

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressDefaultColor:Landroid/content/res/ColorStateList;

.field private mRowHeight:I

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mRowsLockScreen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mSemDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

.field private mShowFullZen:Z

.field private mShowHeaders:Z

.field private mSilentMode:Z

.field private mSmartViewisMute:Z

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDefaultColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

.field private mTopOffset:I

.field private mValueForHwSwKey:J

.field private mVisibleRowIndex:I

.field private mVoiceCapable:Z

.field private mVolumeDnDToast:Landroid/widget/Toast;

.field private mVolumeLimiterDialog:Landroid/app/AlertDialog;

.field private mVolumePanelBgColor:Landroid/content/res/ColorStateList;

.field private mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

.field private final mWindowType:I

.field private mZenMode:I

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private misTalkbackEnabled:Z

.field private sCoverTopOffset:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDensity:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandCollapseAnimating:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get23()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopModeChanged:Z

    return v0
.end method

.method static synthetic -get24()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsLastKnoxDesktopMode:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMaxSmartViewVol:I

    return v0
.end method

.method static synthetic -get28(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMinSmartViewVol:I

    return v0
.end method

.method static synthetic -get29(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get31(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -get32(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/Scover;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewisMute:Z

    return v0
.end method

.method static synthetic -get38(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic -get41(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->misTalkbackEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandCollapseAnimating:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    return p1
.end method

.method static synthetic -set13(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopModeChanged:Z

    return p0
.end method

.method static synthetic -set14(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsLastKnoxDesktopMode:Z

    return p0
.end method

.method static synthetic -set15(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMaxSmartViewVol:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMinSmartViewVol:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewisMute:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set22(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->misTalkbackEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurSmartViewVol:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDensity:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/animation/AnimatorSet;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->createCollapseExpandAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isTalkBackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/volume/SecVolumeDialog;Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/volume/SecVolumeDialog;IZ)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->showVolumeLimiterDialog()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandedWindowHeightH()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(I)I
    .locals 1
    .param p0, "progress"    # I

    .prologue
    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->doRefresh()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->initDialog()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    const-class v0, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    .line 372
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 380
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 417
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    .line 418
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsLastKnoxDesktopMode:Z

    .line 419
    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopModeChanged:Z

    .line 429
    const-string/jumbo v0, "latte"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->M_LATTE:Z

    .line 495
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 496
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VOLUMEPANEL_IN_CLEARCOVER"

    .line 495
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "controller"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p4, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p5, "callback"    # Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    .prologue
    .line 507
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$H;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    .line 199
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    .line 208
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    .line 210
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    .line 215
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 223
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->misTalkbackEnabled:Z

    .line 230
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 232
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    .line 250
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    .line 252
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    .line 254
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    .line 272
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    .line 276
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->DENSITY_XXHDPI:D

    .line 282
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 287
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    .line 300
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->STREAM_SMART_VIEW:I

    .line 302
    const/16 v12, 0xb

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->STREAM_MULTI_SOUND:I

    .line 349
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 351
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 353
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 355
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 357
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 361
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mTopOffset:I

    .line 363
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->sCoverTopOffset:I

    .line 365
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    .line 370
    const v12, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisabledAlpha:F

    .line 404
    const-string/jumbo v12, "Ringtone"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    .line 406
    const-wide/16 v12, 0x3e8

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mValueForHwSwKey:J

    .line 416
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 422
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    .line 425
    sget-boolean v12, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPrevSystemRendererDisabled:Z

    .line 427
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    .line 437
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    .line 443
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    .line 449
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    .line 451
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    .line 471
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    .line 473
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 479
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurSmartViewVol:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mMinSmartViewVol:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mMaxSmartViewVol:I

    .line 481
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewisMute:Z

    .line 483
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    .line 485
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    .line 487
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 499
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2329
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$2;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    .line 2666
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$3;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 3370
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$4;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3633
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$5;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 509
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 510
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 511
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    .line 512
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mWindowType:I

    .line 513
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 514
    new-instance v12, Lcom/android/systemui/volume/SpTexts;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 515
    const-string/jumbo v12, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    .line 516
    const-string/jumbo v12, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 517
    const-class v12, Landroid/app/NotificationManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 520
    const v13, 0x112005c

    .line 519
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    .line 518
    :goto_1
    sput-boolean v12, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    .line 521
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "accessibility"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 522
    new-instance v12, Landroid/animation/LayoutTransition;

    invoke-direct {v12}, Landroid/animation/LayoutTransition;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 523
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v13, Landroid/animation/ValueAnimator;

    invoke-direct {v13}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v14

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 525
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    .line 527
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 528
    .local v10, "window":Landroid/view/Window;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 529
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v12}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Landroid/view/Window;->clearFlags(I)V

    .line 531
    const v12, 0x10c0128

    invoke-virtual {v10, v12}, Landroid/view/Window;->addFlags(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 538
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 539
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 540
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mWindowType:I

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 541
    const/4 v12, -0x3

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 542
    const-class v12, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 543
    const/16 v12, 0x31

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 544
    const v12, 0x7f0d0310

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 545
    const/4 v12, -0x1

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 546
    invoke-virtual {v10, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 547
    const/16 v12, 0x30

    invoke-virtual {v10, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 550
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    .line 551
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 552
    .local v5, "lockscreen_window":Landroid/view/Window;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 553
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v12}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Landroid/view/Window;->clearFlags(I)V

    .line 555
    const v12, 0x10c0128

    invoke-virtual {v5, v12}, Landroid/view/Window;->addFlags(I)V

    .line 561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 562
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 563
    .local v4, "lockscreen_lp":Landroid/view/WindowManager$LayoutParams;
    move/from16 v0, p2

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 564
    const/4 v12, -0x3

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 565
    const/16 v12, 0x31

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 566
    const/4 v12, -0x1

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 567
    const/4 v12, -0x1

    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 568
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 569
    const/16 v12, 0x30

    invoke-virtual {v5, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 572
    const v12, 0x7f0b00a1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 573
    const v12, 0x7f0b00f1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 574
    const v12, 0x7f0b011d

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconDisabledColor:Landroid/content/res/ColorStateList;

    .line 594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    .line 596
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    if-nez v12, :cond_0

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 598
    .local v11, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 599
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 602
    .end local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->initDialog()V

    .line 604
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-virtual {v12}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->init()V

    .line 606
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    .line 608
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "sysui_show_full_zen"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 611
    .local v3, "currentConfig":Landroid/content/res/Configuration;
    iget v12, v3, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDensity:I

    .line 614
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDefaultTintColor()V

    .line 620
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshMorebuttonTintColor()V

    .line 622
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "row$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 623
    .local v8, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_2

    .line 427
    .end local v3    # "currentConfig":Landroid/content/res/Configuration;
    .end local v4    # "lockscreen_lp":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "lockscreen_window":Landroid/view/Window;
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v9    # "row$iterator":Ljava/util/Iterator;
    .end local v10    # "window":Landroid/view/Window;
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 519
    :cond_2
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 628
    .restart local v3    # "currentConfig":Landroid/content/res/Configuration;
    .restart local v4    # "lockscreen_lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "lockscreen_window":Landroid/view/Window;
    .restart local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v9    # "row$iterator":Ljava/util/Iterator;
    .restart local v10    # "window":Landroid/view/Window;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 629
    .restart local v8    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_3

    .line 633
    .end local v8    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v12, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 636
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$6;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 658
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/volume/SecVolumeDialog;->initCoverManager(Landroid/content/Context;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 662
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->registerBroadcastReceiver()V

    .line 664
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/SystemUIApplication;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    .line 665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12, v13}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 667
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 668
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_5

    .line 670
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 671
    const/4 v14, 0x2

    .line 670
    invoke-virtual {v2, v12, v13, v14}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 673
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 674
    const/4 v14, 0x1

    .line 673
    invoke-virtual {v2, v12, v13, v14}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 677
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "display"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 678
    new-instance v12, Lcom/android/systemui/volume/SecVolumeDialog$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/SecVolumeDialog$7;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSemDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

    .line 726
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mSemDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v12, v13, v14}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    .line 508
    return-void
.end method

.method private addExistingRows()V
    .locals 8

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 1011
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1013
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V

    .line 1014
    if-lez v7, :cond_0

    .line 1015
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->addSpacer(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1011
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1009
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method

.method private addRow(IIIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 990
    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 991
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V

    .line 992
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->addSpacer(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 997
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    return-void
.end method

.method private addRow_lockscreen(IIIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 1002
    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1003
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow_lockscreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V

    .line 1004
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    return-void
.end method

.method private addSpacer(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1022
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v2, "v":Landroid/view/View;
    const/high16 v3, 0x1020000

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 1024
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1025
    const v4, 0x7f0d030f

    .line 1024
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1026
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1027
    const/4 v3, -0x1

    .line 1026
    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1028
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1029
    invoke-static {p1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 1021
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3046
    new-array v0, v2, [[I

    .line 3047
    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 3049
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    .line 3050
    aput p1, v2, v3

    .line 3049
    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    const/16 v1, 0x1388

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    return v1

    .line 1427
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    if-eqz v0, :cond_1

    .line 1428
    const/16 v0, 0x3e80

    return v0

    .line 1429
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    .line 1430
    return v1

    .line 1431
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_4

    .line 1432
    :cond_3
    return v1

    .line 1433
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    .line 1434
    :cond_5
    const/16 v0, 0x5dc

    return v0

    .line 1435
    :cond_6
    const/16 v0, 0xbb8

    return v0
.end method

.method private createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "start"    # F
    .param p3, "end"    # F

    .prologue
    .line 2517
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2518
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method private createAlphaAnimSet(I)Landroid/animation/AnimatorSet;
    .locals 12
    .param p1, "alphaType"    # I

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 2486
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2488
    .local v3, "alphaAnimSet":Landroid/animation/AnimatorSet;
    const/4 v0, 0x0

    .line 2489
    .local v0, "alphaAnim1":Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 2490
    .local v1, "alphaAnim2":Landroid/animation/ObjectAnimator;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2491
    .local v2, "alphaAnimCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v0    # "alphaAnim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaAnim2":Landroid/animation/ObjectAnimator;
    .local v5, "row$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2492
    .local v4, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-eq v8, v9, :cond_0

    .line 2493
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    .line 2494
    .local v7, "view":Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    .line 2496
    .local v6, "space":Landroid/view/View;
    const/4 v8, 0x3

    if-ne p1, v8, :cond_1

    .line 2497
    invoke-direct {p0, v7, v10, v11}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2498
    .local v0, "alphaAnim1":Landroid/animation/ObjectAnimator;
    invoke-direct {p0, v6, v10, v11}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2503
    .local v1, "alphaAnim2":Landroid/animation/ObjectAnimator;
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2504
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2500
    .end local v0    # "alphaAnim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaAnim2":Landroid/animation/ObjectAnimator;
    :cond_1
    invoke-direct {p0, v7, v11, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2501
    .restart local v0    # "alphaAnim1":Landroid/animation/ObjectAnimator;
    invoke-direct {p0, v6, v11, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "alphaAnim2":Landroid/animation/ObjectAnimator;
    goto :goto_1

    .line 2507
    .end local v0    # "alphaAnim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaAnim2":Landroid/animation/ObjectAnimator;
    .end local v4    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v6    # "space":Landroid/view/View;
    .end local v7    # "view":Landroid/view/View;
    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_3

    .line 2508
    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2512
    :goto_2
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2513
    return-object v3

    .line 2510
    :cond_3
    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_2
.end method

.method private createCollapseExpandAnim()Landroid/animation/AnimatorSet;
    .locals 15

    .prologue
    .line 2522
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v10, :cond_0

    .line 2523
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2526
    :cond_0
    const/4 v7, 0x0

    .line 2527
    .local v7, "containerViewAnim":Landroid/animation/ValueAnimator;
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 2529
    .local v5, "beforeHeight":I
    const/4 v10, 0x2

    new-array v10, v10, [F

    int-to-float v11, v5

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 2530
    .local v7, "containerViewAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2531
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2532
    new-instance v10, Lcom/android/systemui/volume/SecVolumeDialog$14;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/SecVolumeDialog$14;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2544
    const/4 v0, 0x0

    .line 2547
    .local v0, "activeItemAnim":Landroid/animation/ObjectAnimator;
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_1

    .line 2548
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 2552
    .local v6, "beforeTop":I
    :goto_0
    const/4 v1, -0x1

    .line 2555
    .local v1, "afterTop":I
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v10, :cond_2

    .line 2556
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 2557
    const/4 v3, 0x4

    .line 2567
    .local v3, "alphaAnimType":I
    :goto_1
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    if-eqz v10, :cond_4

    .line 2568
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 2569
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_3

    .line 2570
    const/4 v10, 0x0

    return-object v10

    .line 2550
    .end local v1    # "afterTop":I
    .end local v3    # "alphaAnimType":I
    .end local v6    # "beforeTop":I
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v6

    .restart local v6    # "beforeTop":I
    goto :goto_0

    .line 2559
    .restart local v1    # "afterTop":I
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    .line 2560
    iget v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    .line 2561
    iget v12, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    .line 2560
    mul-int/2addr v11, v12

    .line 2559
    add-int/2addr v10, v11

    .line 2562
    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 2563
    const v12, 0x7f0d030f

    .line 2562
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2563
    iget v12, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    .line 2562
    mul-int/2addr v11, v12

    .line 2559
    add-int v1, v10, v11

    .line 2564
    const/4 v3, 0x3

    .restart local v3    # "alphaAnimType":I
    goto :goto_1

    .line 2572
    :cond_3
    new-instance v10, Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    .line 2574
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2575
    .local v9, "r":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 2576
    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 2575
    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2577
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2578
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2580
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2581
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_5

    .line 2582
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTop(I)V

    .line 2588
    :goto_2
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    const-string/jumbo v11, "translationY"

    .line 2587
    const/4 v12, 0x2

    new-array v12, v12, [F

    .line 2588
    int-to-float v13, v6

    const/4 v14, 0x0

    aput v13, v12, v14

    int-to-float v13, v1

    const/4 v14, 0x1

    aput v13, v12, v14

    .line 2587
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2589
    .local v0, "activeItemAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2590
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2594
    .end local v0    # "activeItemAnim":Landroid/animation/ObjectAnimator;
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "r":Landroid/graphics/Rect;
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnimSet(I)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 2597
    .local v2, "alphaAnimSet":Landroid/animation/AnimatorSet;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2598
    .local v4, "animSet":Landroid/animation/AnimatorSet;
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v10, :cond_6

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    if-eqz v10, :cond_6

    if-eqz v0, :cond_6

    .line 2599
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2603
    :goto_3
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_7

    .line 2604
    const-wide/16 v10, 0x258

    invoke-virtual {v4, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2605
    new-instance v10, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2609
    :goto_4
    new-instance v10, Lcom/android/systemui/volume/SecVolumeDialog$15;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/SecVolumeDialog$15;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2648
    return-object v4

    .line 2584
    .end local v2    # "alphaAnimSet":Landroid/animation/AnimatorSet;
    .end local v4    # "animSet":Landroid/animation/AnimatorSet;
    .local v0, "activeItemAnim":Landroid/animation/ObjectAnimator;
    .restart local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "r":Landroid/graphics/Rect;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v11}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTop(I)V

    goto :goto_2

    .line 2601
    .end local v0    # "activeItemAnim":Landroid/animation/ObjectAnimator;
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "r":Landroid/graphics/Rect;
    .restart local v2    # "alphaAnimSet":Landroid/animation/AnimatorSet;
    .restart local v4    # "animSet":Landroid/animation/AnimatorSet;
    :cond_6
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 2607
    :cond_7
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 3334
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 3335
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3336
    const v2, 0x7f040188

    .line 3335
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3341
    .local v0, "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    .line 3338
    .end local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3339
    const v2, 0x7f040186

    .line 3338
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private doRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2652
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2654
    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    .line 2656
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->removeCachedBitmap()V

    .line 2651
    return-void
.end method

.method private findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 1051
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1052
    .local v0, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1053
    return-object v0

    .line 1055
    .end local v0    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1037
    const/4 v0, 0x0

    .line 1038
    .local v0, "index":I
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1039
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v3, v4, :cond_0

    .line 1040
    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    .line 1041
    return-object v1

    .line 1043
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1046
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    .line 1047
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    return-object v3
.end method

.method private getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2470
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2471
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2470
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2472
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2473
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2474
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2475
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2478
    return-object v1

    .line 2479
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v3

    .line 2480
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IllegalArgumentException happens in getBitmapDrawableFromView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    const/4 v4, 0x0

    return-object v4
.end method

.method private getConservativeCollapseDuration()J
    .locals 2

    .prologue
    .line 1557
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x0

    .line 1083
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 1084
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 1085
    .local v2, "n":I
    if-nez p1, :cond_0

    .line 1087
    .local v0, "level":I
    :goto_0
    return v0

    .line 1086
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private static getImpliedMediaVolumeLevel(I)I
    .locals 0
    .param p0, "progress"    # I

    .prologue
    .line 1091
    div-int/lit8 p0, p0, 0xa

    .line 1092
    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3293
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v2, :cond_0

    .line 3294
    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 3296
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3302
    :goto_0
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverManager: initCoverManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 3304
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3305
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 3306
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 3292
    :cond_0
    :goto_1
    return-void

    .line 3308
    :cond_1
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverManager fail NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3297
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 3299
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    goto :goto_0
.end method

.method private initDialog()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const v11, 0x1080a1a

    const v10, 0x1080a07

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 730
    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    .line 731
    sput-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 732
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    .line 740
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f04018d

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f13044f

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 743
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$8;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f130450

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 754
    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    .line 755
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f130451

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 756
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 757
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 759
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    .line 760
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    .line 763
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f0400bc

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    .line 764
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f13028e

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogView:Landroid/view/ViewGroup;

    .line 765
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f13028f

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    .line 769
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 770
    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialog$9;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 769
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 786
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 788
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 789
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    if-eqz v0, :cond_2

    .line 790
    const/4 v0, 0x2

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 792
    invoke-direct {p0, v12, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 794
    const/4 v0, 0x5

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 797
    invoke-direct {p0, v9, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 800
    const/4 v0, 0x4

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 803
    const v0, 0x1080a05

    .line 804
    const v1, 0x1080a05

    .line 802
    invoke-direct {p0, v8, v0, v1, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 805
    const/4 v0, 0x6

    .line 806
    const v1, 0x1080a03

    .line 807
    const v2, 0x1080a03

    .line 805
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 808
    const/16 v0, 0xa

    .line 809
    const v1, 0x7f02071b

    .line 810
    const v2, 0x7f02071d

    .line 808
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 811
    const/16 v0, 0xb

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 815
    const v0, 0x7f020721

    .line 816
    const v1, 0x7f02071f

    .line 815
    invoke-direct {p0, v12, v0, v1, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    .line 817
    const/16 v0, 0xb

    const v1, 0x7f020721

    .line 818
    const v2, 0x7f02071f

    .line 817
    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    .line 854
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f130452

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    .line 855
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04018f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 856
    .local v6, "dndpanel":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 857
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    const v1, 0x7f130454

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDivider:Landroid/view/View;

    .line 859
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 860
    .local v7, "param":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_1

    .line 861
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 862
    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 866
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 870
    const v1, 0x7f0c006e

    .line 869
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    .line 729
    return-void

    .line 821
    .end local v6    # "dndpanel":Landroid/view/View;
    .end local v7    # "param":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v0, 0x5

    invoke-direct {p0, v0, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 824
    invoke-direct {p0, v12, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 826
    invoke-direct {p0, v9, v11, v10, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 829
    const/4 v0, 0x4

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 832
    const v0, 0x1080a05

    .line 833
    const v1, 0x1080a05

    .line 831
    invoke-direct {p0, v8, v0, v1, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 834
    const/4 v0, 0x6

    .line 835
    const v1, 0x1080a03

    .line 836
    const v2, 0x1080a03

    .line 834
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 837
    const/16 v0, 0xa

    .line 838
    const v1, 0x7f02071b

    .line 839
    const v2, 0x7f02071d

    .line 837
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 840
    const/16 v0, 0xb

    invoke-direct {p0, v0, v11, v10, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    .line 844
    const v0, 0x7f020721

    .line 845
    const v1, 0x7f02071f

    .line 844
    invoke-direct {p0, v12, v0, v1, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    .line 846
    const/16 v0, 0xb

    const v1, 0x7f020721

    .line 847
    const v2, 0x7f02071f

    .line 846
    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    goto/16 :goto_0

    .line 851
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->addExistingRows()V

    goto/16 :goto_0

    .line 864
    .restart local v6    # "dndpanel":Landroid/view/View;
    .restart local v7    # "param":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v0, 0x2

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method private initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 1098
    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1099
    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1100
    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1101
    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1102
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040190

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 1103
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1104
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f130457

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1105
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 1106
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f130291

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 1107
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1108
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 1109
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 1110
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    .line 1111
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    .line 1112
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$10;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog$10;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1127
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 1128
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1130
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f130290

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 1131
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1132
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1135
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$11;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$11;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1175
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    const/4 v0, 0x1

    .line 1176
    .local v0, "isCallOrBTSco":Z
    :goto_1
    const/4 v1, 0x0

    .line 1177
    .local v1, "levelMax":I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_7

    .line 1178
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v4, :cond_6

    .line 1179
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1180
    const-string/jumbo v5, "mivo"

    .line 1179
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1184
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1193
    :goto_3
    if-eqz v0, :cond_a

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v2, v4, 0x64

    .line 1194
    .local v2, "max":I
    :goto_4
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1195
    const/4 v3, 0x0

    .line 1197
    .local v3, "min":I
    if-eqz v0, :cond_b

    .line 1198
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 1209
    :cond_0
    :goto_5
    const/4 v4, 0x3

    if-eq p2, v4, :cond_1

    const/16 v4, 0xb

    if-ne p2, v4, :cond_2

    .line 1210
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->setImpliedEarProtectLevel(II)V

    .line 1097
    :cond_2
    return-void

    .line 1124
    .end local v0    # "isCallOrBTSco":Z
    .end local v1    # "levelMax":I
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 1125
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto/16 :goto_0

    .line 1174
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "isCallOrBTSco":Z
    goto :goto_1

    .line 1175
    .end local v0    # "isCallOrBTSco":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isCallOrBTSco":Z
    goto :goto_1

    .line 1182
    .restart local v1    # "levelMax":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 1185
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_8

    .line 1186
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_3

    .line 1187
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_9

    .line 1188
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_3

    .line 1190
    :cond_9
    sget v1, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    goto :goto_3

    .line 1193
    :cond_a
    mul-int/lit8 v2, v1, 0x64

    .restart local v2    # "max":I
    goto :goto_4

    .line 1199
    .restart local v3    # "min":I
    :cond_b
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 1200
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_c

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v4, :cond_c

    .line 1201
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1202
    const-string/jumbo v5, "mavo"

    .line 1201
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1206
    :goto_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->semSetMin(I)V

    goto :goto_5

    .line 1204
    :cond_c
    const/4 v3, 0x0

    goto :goto_6
.end method

.method private initRow_lockscreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1216
    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1217
    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1218
    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1219
    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1220
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400bd

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 1221
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1222
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 1223
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1224
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 1225
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    .line 1226
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    .line 1227
    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1228
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130290

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 1229
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1231
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x64

    .line 1232
    .local v0, "max":I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1234
    if-eq p2, v5, :cond_0

    const/16 v1, 0xb

    if-ne p2, v1, :cond_1

    .line 1235
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->setImpliedEarProtectLevelforLockScreenDialog(II)V

    .line 1215
    :cond_1
    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 3444
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertLog : extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertLog : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    .line 3448
    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 3447
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3449
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3450
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    const-string/jumbo v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3457
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3458
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3459
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3461
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3443
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInLockScreen()Z
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkBackEnabled()Z
    .locals 5

    .prologue
    .line 3432
    const/4 v1, 0x0

    .line 3433
    .local v1, "talkbackEnabled":Z
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3434
    const-string/jumbo v3, "enabled_accessibility_services"

    .line 3433
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3435
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3436
    const-string/jumbo v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3437
    const-string/jumbo v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 3438
    .end local v1    # "talkbackEnabled":Z
    :goto_0
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTalkbackEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", accesibilityService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    :cond_0
    return v1

    .line 3436
    .restart local v1    # "talkbackEnabled":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isValidZenMode(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1332
    packed-switch p0, :pswitch_data_0

    .line 1339
    const/4 v0, 0x0

    return v0

    .line 1337
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 1625
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v0, :cond_2

    .end local p2    # "isActive":Z
    :goto_0
    return p2

    .restart local p2    # "isActive":Z
    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private makeSound()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1246
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1247
    return-void

    .line 1248
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 1252
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1253
    const/16 v2, 0xd

    .line 1252
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1249
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 1256
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    if-eqz v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 1261
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    .line 1245
    return-void

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    goto :goto_0
.end method

.method private onDismissLockScreenDialog()V
    .locals 2

    .prologue
    .line 3583
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_1

    .line 3584
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SystemUIApplication or StatusBar is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    .line 3586
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3589
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_2

    .line 3590
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Set KeyguardStatubar Visibility : TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    .line 3593
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mLockScreenDialog is dismissing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    .line 3582
    return-void
.end method

.method private onDismissSafeVolumeWarning()V
    .locals 2

    .prologue
    .line 3356
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3357
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3358
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3362
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_1

    .line 3363
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismiss warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V

    .line 3355
    :cond_1
    return-void

    .line 3356
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onShowLockScreenDialog()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3544
    const/4 v2, 0x0

    .line 3545
    .local v2, "isStatusBarExpand":Z
    const/4 v1, 0x0

    .line 3547
    .local v1, "isNotiCardExpand":Z
    :try_start_0
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 3548
    .local v3, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_0

    .line 3549
    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->getQuickSettingPanelExpandState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3556
    .end local v2    # "isStatusBarExpand":Z
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v4, :cond_2

    .line 3557
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SystemUIApplication;

    iput-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    .line 3558
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v5}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3560
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v1

    .line 3562
    .local v1, "isNotiCardExpand":Z
    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_5

    .line 3563
    :cond_3
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 3564
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Set KeyguardStatubar Visibility : FALSE & Show the mLockScreenDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    .line 3566
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->show()V

    .line 3579
    const/4 v4, 0x1

    return v4

    .line 3551
    .end local v3    # "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    .local v1, "isNotiCardExpand":Z
    .restart local v2    # "isStatusBarExpand":Z
    :catch_0
    move-exception v0

    .line 3552
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "RemoteException when call the getPanelExpandState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    return v6

    .line 3568
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "isStatusBarExpand":Z
    .local v1, "isNotiCardExpand":Z
    .restart local v3    # "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_4
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Do nothing because StatusBar is Expanded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 3570
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 3571
    return v6

    .line 3574
    :cond_5
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Lockscreen is true but ActiveStream is not music. so do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 3576
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 3577
    return v6
.end method

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 14
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    const/4 v13, 0x3

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1732
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v7, :cond_0

    .line 1733
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1736
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 1737
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1744
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eqz v7, :cond_4

    .line 1749
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1750
    iput-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    .line 1753
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    .line 1755
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 1756
    .local v0, "animating":Z
    sget-boolean v7, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v7, :cond_5

    .line 1757
    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStateChangedH animating="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_5
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 1759
    if-eqz v0, :cond_7

    .line 1760
    iput-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    .line 1761
    return-void

    .line 1739
    .end local v0    # "animating":Z
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1763
    .restart local v0    # "animating":Z
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1765
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_a

    .line 1766
    iget-object v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1767
    .local v6, "stream":I
    iget-object v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1768
    .local v5, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v7, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v7, :cond_9

    .line 1765
    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1770
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1771
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    if-nez v7, :cond_8

    .line 1772
    iget v7, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    sput v7, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    .line 1773
    iget v7, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    sput v7, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlCurrentVolume:I

    .line 1774
    const v7, 0x7f02022d

    const v8, 0x7f02022e

    invoke-direct {p0, v6, v7, v8, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    goto :goto_2

    .line 1778
    .end local v5    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v6    # "stream":I
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    .line 1779
    .local v1, "device":I
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    .line 1781
    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    if-ne v1, v7, :cond_b

    .line 1782
    iput v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    .line 1785
    :cond_b
    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    iget v8, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v7, v8, :cond_d

    .line 1786
    sput-boolean v10, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1787
    iget v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    .line 1788
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1789
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    .line 1790
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1795
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshMorebuttonTintColor()V

    .line 1797
    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v7, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-eq v7, v13, :cond_c

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_f

    .line 1798
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "row$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1799
    .local v3, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v7, v8, :cond_e

    .line 1800
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1804
    :goto_5
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1805
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateLockScreenVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_4

    .line 1792
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v4    # "row$iterator":Ljava/util/Iterator;
    :cond_d
    sput-boolean v11, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    goto :goto_3

    .line 1802
    .restart local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .restart local v4    # "row$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1808
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v4    # "row$iterator":Ljava/util/Iterator;
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "row$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1809
    .restart local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1810
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_6

    .line 1731
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_10
    return-void
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 3258
    const/4 v0, 0x0

    .line 3260
    .local v0, "phoneOffhook":Z
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 3261
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 3262
    const-string/jumbo v2, "phone"

    .line 3261
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3264
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 3265
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3266
    const/4 v0, 0x1

    .line 3269
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    return v0
.end method

.method private recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 2202
    if-nez p1, :cond_1

    .line 2203
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    .line 2204
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    .line 2206
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2207
    .local v0, "r":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 2210
    .end local v0    # "r":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    .line 2211
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2201
    :cond_3
    return-void
.end method

.method private refreshIconTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "vlevel"    # I

    .prologue
    const/16 v1, 0x8

    .line 3118
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3117
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3120
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v0, :cond_0

    .line 3121
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3125
    :pswitch_2
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3127
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3126
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 3131
    :pswitch_3
    if-nez p2, :cond_0

    .line 3132
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3136
    :pswitch_4
    if-nez p2, :cond_4

    .line 3137
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_3

    .line 3140
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3138
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3143
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    if-lt p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_0

    .line 3144
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_6

    .line 3147
    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3145
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3152
    :pswitch_5
    if-nez p2, :cond_9

    .line 3153
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_8

    .line 3156
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3154
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3159
    :cond_9
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    if-lt p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_0

    .line 3160
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_b

    .line 3163
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3161
    :cond_b
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3168
    :pswitch_6
    if-nez p2, :cond_0

    .line 3169
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 3118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x3

    .line 3225
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3226
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "white_lockscreen_statusbar"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3228
    .local v1, "mWhiteKeyguardStatusBar":I
    if-eqz v0, :cond_0

    .line 3229
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value of mWhiteKeyguardStatusBar : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3233
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update LockScreen Dialog TintColor as Light Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    const-string/jumbo v3, "#494949"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3235
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#494949"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3236
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#4d494949"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3237
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v2, :cond_2

    .line 3238
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 3237
    if-eqz v2, :cond_3

    .line 3239
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#66f1662f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#f1662f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    .line 3224
    :cond_3
    :goto_0
    return-void

    .line 3243
    :cond_4
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update LockScreen Dialog TintColor as Dark Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    const-string/jumbo v3, "#fafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3245
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#fafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3246
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#66fafafa"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3247
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v5, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v2, :cond_6

    .line 3248
    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 3247
    if-eqz v2, :cond_3

    .line 3249
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const-string/jumbo v3, "#66ff753f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#ff753f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    goto :goto_0
.end method

.method private refreshMorebuttonTintColor()V
    .locals 2

    .prologue
    .line 3108
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_1

    .line 3112
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3113
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3107
    :goto_0
    return-void

    .line 3109
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3110
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 3055
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_1

    .line 3060
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 3061
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3062
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3054
    :goto_0
    return-void

    .line 3056
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 3057
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3058
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 3089
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 3091
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 3092
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 3093
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3096
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 3097
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3098
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3101
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    .line 3102
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3103
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3088
    :cond_2
    return-void
.end method

.method private refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 3067
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 3069
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 3070
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshSliderResourceTintColor #1 mThumbColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 3072
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3075
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 3076
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshSliderResourceTintColor #2 mProgressColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3078
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3081
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    .line 3082
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshSliderResourceTintColor #3 mProgressBgColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3084
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 3066
    :cond_2
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 3418
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3420
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3421
    const-string/jumbo v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3422
    const-string/jumbo v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3424
    const-string/jumbo v1, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3426
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3428
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3417
    return-void
.end method

.method private releaseSound()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1285
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1286
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1288
    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 1284
    :cond_0
    return-void
.end method

.method private removeCachedBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2660
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2661
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2662
    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 2659
    :cond_0
    return-void
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4
    .param p1, "coverMessageEnabled"    # Z

    .prologue
    .line 3346
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 3347
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3348
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3349
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3350
    const-string/jumbo v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3351
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3352
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 3344
    return-void
.end method

.method private setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v2, -0x1

    .line 3011
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3012
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_1

    .line 3013
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbar - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3014
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 3013
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3014
    const-string/jumbo v2, ", mEarProtectLevel = "

    .line 3013
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3015
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    .line 3013
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 3010
    :cond_0
    :goto_0
    return-void

    .line 3017
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v0, :cond_0

    .line 3018
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3021
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_3

    .line 3022
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbar - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3023
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 3022
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3023
    const-string/jumbo v2, ", mEarProtectLevelForMultiSound = "

    .line 3022
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3024
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    .line 3022
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3026
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-nez v0, :cond_0

    .line 3027
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setDualColorSeekbarforLockScreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v2, -0x1

    .line 3598
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3599
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_1

    .line 3600
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbarforLockScreen - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3601
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 3600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3601
    const-string/jumbo v2, ", mEarProtectLevelforLockScreen = "

    .line 3600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3602
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    .line 3600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 3597
    :cond_0
    :goto_0
    return-void

    .line 3604
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v0, :cond_0

    .line 3605
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3608
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_3

    .line 3609
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbarforLockScreen - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3610
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    .line 3609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3610
    const-string/jumbo v2, ", mEarProtectLevelForMultiSound = "

    .line 3609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3611
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    .line 3609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3613
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-nez v0, :cond_0

    .line 3614
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setExpandedH(Z)V
    .locals 6
    .param p1, "expanded"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 1568
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-ne v0, p1, :cond_0

    .line 1569
    return-void

    .line 1570
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    .line 1571
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 1572
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    .line 1573
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExpandedH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_1
    sput-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1578
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1579
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v0, v4, :cond_2

    .line 1580
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1581
    invoke-direct {p0, v3, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1583
    :cond_2
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-nez v0, :cond_3

    .line 1584
    invoke-direct {p0, v3, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1585
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1591
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    .line 1592
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_4

    .line 1593
    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 1595
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    .line 1596
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1567
    return-void

    .line 1588
    :cond_5
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    .line 1589
    invoke-direct {p0, v3, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto :goto_0
.end method

.method private setImpliedEarProtectLevel(II)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "max"    # I

    .prologue
    .line 3033
    div-int/lit8 v1, p2, 0x64

    add-int/lit8 v0, v1, -0x1

    .line 3035
    .local v0, "n":I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 3036
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    .line 3032
    :goto_0
    return-void

    .line 3037
    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 3038
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    goto :goto_0

    .line 3040
    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    goto :goto_0
.end method

.method private setImpliedEarProtectLevelforLockScreenDialog(II)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "max"    # I

    .prologue
    .line 3620
    div-int/lit8 v1, p2, 0x64

    add-int/lit8 v0, v1, -0x1

    .line 3622
    .local v0, "n":I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 3623
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    .line 3619
    :goto_0
    return-void

    .line 3624
    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 3625
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    goto :goto_0

    .line 3627
    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    goto :goto_0
.end method

.method private setStreamImportantH(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 2217
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2218
    .local v0, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2219
    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 2220
    return-void

    .line 2216
    .end local v0    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method

.method private setStreamTypeForLogging(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1520
    packed-switch p1, :pswitch_data_0

    .line 1519
    :goto_0
    :pswitch_0
    return-void

    .line 1522
    :pswitch_1
    const-string/jumbo v0, "System"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 1526
    :pswitch_2
    const-string/jumbo v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 1531
    :pswitch_3
    const-string/jumbo v0, "Media"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 1535
    :pswitch_4
    const-string/jumbo v0, "Notification"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 1520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private showH(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1352
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v1, :cond_4

    .line 1357
    :cond_0
    const/4 v0, 0x1

    .line 1359
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    if-nez v1, :cond_1

    .line 1360
    sput-boolean v5, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 1363
    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v1, :cond_3

    .line 1364
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    if-ne v1, v6, :cond_3

    .line 1365
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->showVolumeDnDToast()V

    .line 1369
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1370
    return-void

    .line 1353
    .end local v0    # "show":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 1354
    return-void

    .line 1372
    .restart local v0    # "show":Z
    :cond_5
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_6

    .line 1373
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showH r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mShowing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1375
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v1, v6}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1376
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1377
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v1, :cond_7

    .line 1378
    return-void

    .line 1379
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_9

    .line 1380
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 1381
    return-void

    .line 1379
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1383
    :cond_a
    sput-boolean v5, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 1384
    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandCollapseAnimating:Z

    .line 1386
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1387
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onShowLockScreenDialog()Z

    move-result v0

    .line 1396
    .end local v0    # "show":Z
    :goto_0
    if-eqz v0, :cond_b

    .line 1397
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v4, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1398
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 1351
    :cond_b
    return-void

    .line 1390
    .restart local v0    # "show":Z
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eqz v1, :cond_f

    .line 1391
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->show()V

    goto :goto_0

    .line 1393
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    goto :goto_0
.end method

.method private showSafetyWarningH(I)V
    .locals 11
    .param p1, "flags"    # I

    .prologue
    const/16 v10, 0x8

    .line 2226
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v6, :cond_0

    .line 2227
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2229
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v7, -0x1

    invoke-static {v6, v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 2230
    const/high16 v6, 0x10000000

    and-int/2addr v6, p1

    if-eqz v6, :cond_3

    .line 2231
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2232
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v6, :cond_2

    .line 2233
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_1

    .line 2234
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "SafetyWarning dismissed by FLAG_DISMISS_UI_WARNINGS"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_1
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 2236
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v7

    .line 2225
    :goto_0
    return-void

    .line 2231
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2240
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2241
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v6, :cond_6

    .line 2242
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v6, :cond_4

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-eq v6, v10, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_5

    :cond_4
    :goto_1
    monitor-exit v7

    .line 2246
    return-void

    .line 2243
    :cond_5
    :try_start_2
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "show warning popup on the s view cover and than return"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2240
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2248
    :cond_6
    :try_start_3
    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$13;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 2249
    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v9

    .line 2248
    invoke-direct {v6, p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog$13;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 2259
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v6, :cond_9

    .line 2260
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    .line 2261
    const-string/jumbo v8, "cover open, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    .line 2260
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 2263
    const/16 v8, 0x7e4

    .line 2262
    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    .line 2278
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v6, :cond_b

    .line 2282
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    .line 2283
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 2284
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-eq v6, v10, :cond_8

    .line 2286
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Show warning popup on the s view cover"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v8, 0x6

    if-ne v6, v8, :cond_c

    .line 2289
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2290
    const v8, 0x7f040188

    .line 2289
    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2298
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2299
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string/jumbo v6, "visibility"

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2300
    const-string/jumbo v6, "type"

    const-string/jumbo v8, "volume"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2301
    const-string/jumbo v6, "remote"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2303
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2304
    .local v1, "intent1":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 2305
    const/high16 v9, 0x8000000

    .line 2304
    invoke-static {v6, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2307
    .local v3, "pendingIntent1":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2308
    .local v2, "intent2":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 2309
    const/high16 v9, 0x8000000

    .line 2308
    invoke-static {v6, v8, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2311
    .local v4, "pendingIntent2":Landroid/app/PendingIntent;
    const v6, 0x7f130443

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2313
    const v6, 0x7f130444

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2315
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2316
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    .line 2318
    .end local v0    # "coverIntent":Landroid/content/Intent;
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v2    # "intent2":Landroid/content/Intent;
    .end local v3    # "pendingIntent1":Landroid/app/PendingIntent;
    .end local v4    # "pendingIntent2":Landroid/app/PendingIntent;
    .end local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_8
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    .line 2320
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    goto/16 :goto_0

    .line 2265
    :cond_9
    :try_start_4
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v6, v10, :cond_a

    .line 2266
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    .line 2267
    const-string/jumbo v8, "clear_cover closed, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    .line 2266
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 2269
    const/16 v8, 0x7e4

    .line 2268
    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_2

    .line 2271
    :cond_a
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    .line 2272
    const-string/jumbo v8, "cover closed, warning popup window type is set to TYPE_KEYGUARD_DIALOG"

    .line 2271
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 2274
    const/16 v8, 0x7d9

    .line 2273
    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_2

    .line 2279
    :cond_b
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    goto/16 :goto_3

    .line 2291
    :cond_c
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v6, v10, :cond_d

    .line 2292
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2293
    const v8, 0x7f040187

    .line 2292
    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v5    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_4

    .line 2295
    .end local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_d
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2296
    const v8, 0x7f040186

    .line 2295
    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v5    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_4
.end method

.method private showVolumeDnDToast()V
    .locals 3

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 3535
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    .line 3536
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0682

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3537
    const/4 v2, 0x0

    .line 3534
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    .line 3539
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3532
    return-void
.end method

.method private showVolumeLimiterDialog()V
    .locals 3

    .prologue
    .line 3466
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3467
    return-void

    .line 3469
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3470
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3471
    const v1, 0x7f0f04f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3474
    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$16;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 3473
    const v2, 0x7f0f04fa

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3507
    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$17;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3514
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    .line 3515
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 3516
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 3517
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$18;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3528
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3465
    :cond_1
    return-void
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 1717
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    .line 1718
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1720
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1721
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v2, :cond_1

    .line 1723
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1724
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1725
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1726
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1719
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1716
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_2
    return-void
.end method

.method private updateDefaultTintColor()V
    .locals 2

    .prologue
    .line 3208
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDefaultTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const-string/jumbo v0, "#56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    .line 3210
    const-string/jumbo v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    .line 3211
    const-string/jumbo v0, "#fafafa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 3212
    const-string/jumbo v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    .line 3213
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

    .line 3214
    const-string/jumbo v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    .line 3215
    const-string/jumbo v0, "#ffC9c9c9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 3216
    const-string/jumbo v0, "#919799"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    .line 3217
    const-string/jumbo v0, "#f1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    .line 3218
    const-string/jumbo v0, "#919799"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

    .line 3207
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    .prologue
    .line 1541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 1542
    .local v2, "diff":J
    iget-wide v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const/4 v1, 0x1

    .line 1543
    .local v1, "collapsing":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1544
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    .line 1545
    .local v5, "orientation":I
    if-eqz v1, :cond_3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 1548
    .local v0, "bottomMargin":I
    :goto_1
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v6, :cond_1

    .line 1549
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_0

    .line 1550
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bottomMargin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1552
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1540
    :cond_1
    return-void

    .line 1542
    .end local v0    # "bottomMargin":I
    .end local v1    # "collapsing":Z
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "orientation":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "collapsing":Z
    goto :goto_0

    .line 1546
    .restart local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v5    # "orientation":I
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1547
    const v7, 0x7f0d0312

    .line 1546
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "bottomMargin":I
    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1600
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    .line 1601
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateExpandButtonH"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1603
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1604
    return-void

    :cond_1
    move v1, v3

    .line 1602
    goto :goto_0

    .line 1607
    :cond_2
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v1, :cond_4

    .line 1608
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_3

    .line 1609
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string/jumbo v4, "rotation"

    new-array v5, v5, [F

    aput v6, v5, v2

    aput v7, v5, v3

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1610
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1611
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1620
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_5

    .line 1621
    const v1, 0x7f0f04da

    .line 1620
    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1599
    return-void

    .line 1613
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string/jumbo v4, "rotation"

    new-array v5, v5, [F

    aput v7, v5, v2

    aput v6, v5, v3

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1614
    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1615
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 1618
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_1

    .line 1621
    :cond_5
    const v1, 0x7f0f04d9

    goto :goto_2
.end method

.method private updateExpandedWindowHeightH()V
    .locals 8

    .prologue
    .line 928
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v5}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 929
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 930
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 931
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 932
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 934
    .local v1, "h":I
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 935
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 939
    :goto_0
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-le v5, v1, :cond_0

    .line 941
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 943
    :cond_0
    sget-object v5, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EXPAND HEIGHT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 927
    return-void

    .line 937
    :cond_1
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method private updateLockScreenVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v3, 0x0

    .line 1996
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    if-nez v4, :cond_0

    .line 1997
    return-void

    .line 1998
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1999
    .local v2, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-nez v2, :cond_1

    .line 2000
    return-void

    .line 2001
    :cond_1
    invoke-static {p1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 2002
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_2

    .line 2003
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLockScreenVolumeRowH s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ss.level : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2004
    const-string/jumbo v6, ", row.lastAudibleLevel : "

    .line 2003
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2004
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    .line 2003
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2004
    const-string/jumbo v6, ", row.ss.muted : "

    .line 2003
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2005
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    .line 2003
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :cond_2
    iget v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-lez v4, :cond_3

    .line 2007
    iget v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 2009
    :cond_3
    iget v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 2010
    const/4 v4, -0x1

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 2013
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 2014
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    .line 2015
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsSafeMediaVolumeDeviceOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :goto_0
    iget v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    .line 2023
    .local v1, "iconRes":I
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2024
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v5, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2026
    const/4 v0, 0x1

    .line 2027
    .local v0, "enableSlider":Z
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v4, :cond_7

    .line 2028
    .local v3, "vlevel":I
    :goto_2
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateLockScreenVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V

    .line 1994
    return-void

    .line 2017
    .end local v0    # "enableSlider":Z
    .end local v1    # "iconRes":I
    .end local v3    # "vlevel":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 2018
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsSafeMediaVolumeDeviceOnForMultiSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2022
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    .restart local v1    # "iconRes":I
    goto :goto_1

    .line 2027
    .restart local v0    # "enableSlider":Z
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v3, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    goto :goto_2
.end method

.method private updateLockScreenVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    const/4 v4, 0x3

    .line 2153
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 2157
    .local v2, "progress":I
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setDualColorSeekbarforLockScreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2159
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 2160
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v0

    .line 2165
    .local v0, "level":I
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 2166
    move v1, p3

    .line 2180
    .local v1, "newProgress":I
    :goto_1
    if-eq v2, v1, :cond_0

    .line 2181
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2152
    :cond_0
    return-void

    .line 2162
    .end local v0    # "level":I
    .end local v1    # "newProgress":I
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    .restart local v0    # "level":I
    goto :goto_0

    .line 2168
    :cond_2
    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_6

    .line 2169
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v3, :cond_4

    .line 2170
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 2169
    if-eqz v3, :cond_5

    .line 2171
    :cond_4
    mul-int/lit8 v1, p3, 0x6a

    .restart local v1    # "newProgress":I
    goto :goto_1

    .line 2173
    .end local v1    # "newProgress":I
    :cond_5
    mul-int/lit8 v1, p3, 0x64

    .restart local v1    # "newProgress":I
    goto :goto_1

    .line 2176
    .end local v1    # "newProgress":I
    :cond_6
    mul-int/lit8 v1, p3, 0x64

    .restart local v1    # "newProgress":I
    goto :goto_1
.end method

.method private updateRowsH()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 1629
    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_0

    .line 1630
    sget-object v8, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateRowsH"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_0
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v8, :cond_1

    .line 1632
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    .line 1634
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v8, :cond_2

    .line 1635
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1638
    :cond_2
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-eq v8, v10, :cond_4

    .line 1639
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    .line 1642
    :cond_4
    const/4 v6, 0x0

    .line 1644
    .local v6, "visibleIndex":I
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "row$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1645
    .local v3, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-ne v3, v8, :cond_d

    const/4 v0, 0x1

    .line 1646
    .local v0, "isActive":Z
    :goto_1
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    const/16 v10, 0xa

    if-ne v8, v10, :cond_6

    if-eqz v0, :cond_e

    .line 1652
    :cond_6
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    const/16 v10, 0xb

    if-ne v8, v10, :cond_7

    if-eqz v0, :cond_10

    .line 1659
    :cond_7
    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v5

    .line 1660
    .local v5, "visible":Z
    if-eqz v0, :cond_12

    .line 1661
    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    .line 1665
    :cond_8
    :goto_3
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    if-eqz v8, :cond_9

    .line 1666
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V

    .line 1669
    :cond_9
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v8, :cond_a

    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v8, :cond_a

    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    if-eqz v8, :cond_b

    .line 1670
    :cond_a
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1671
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    if-eqz v5, :cond_13

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    :goto_4
    invoke-static {v10, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1672
    if-eqz v0, :cond_b

    .line 1673
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1674
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1675
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1680
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1681
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1682
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_5

    if-eqz v5, :cond_5

    .line 1683
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1684
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    .line 1686
    :cond_c
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1687
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    .line 1688
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1689
    const v11, 0x7f0d030f

    .line 1688
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1687
    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    goto/16 :goto_0

    .line 1645
    .end local v0    # "isActive":Z
    .end local v5    # "visible":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "isActive":Z
    goto/16 :goto_1

    .line 1647
    :cond_e
    sget-boolean v8, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v8, :cond_f

    .line 1648
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v14}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    .line 1650
    :cond_f
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    .line 1653
    :cond_10
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    if-eqz v8, :cond_11

    .line 1654
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v14}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    .line 1656
    :cond_11
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    .line 1662
    .restart local v5    # "visible":Z
    :cond_12
    if-eqz v5, :cond_8

    .line 1663
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_13
    move v8, v9

    .line 1671
    goto/16 :goto_4

    .line 1694
    .end local v0    # "isActive":Z
    .end local v3    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v5    # "visible":Z
    :cond_14
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v8, :cond_16

    .line 1695
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    add-int/2addr v8, v10

    .line 1696
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    .line 1695
    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    .line 1697
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v8, :cond_15

    .line 1698
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1699
    const/4 v8, -0x1

    .line 1698
    invoke-direct {v2, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1700
    .local v2, "parms":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1701
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    .line 1703
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v8}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 1704
    .local v7, "window":Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1706
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v13, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1707
    invoke-virtual {v7, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1713
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "parms":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "window":Landroid/view/Window;
    :cond_15
    :goto_5
    sput-boolean v9, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    .line 1628
    return-void

    .line 1710
    :cond_16
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    add-int/2addr v8, v10

    .line 1711
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    .line 1710
    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    goto :goto_5
.end method

.method private updateTintColor()V
    .locals 7

    .prologue
    const v6, 0x1080aa9

    const/4 v5, 0x0

    .line 3175
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3176
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateTintColor()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    const v3, 0x7f0b0118

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 3178
    const v3, 0x7f0b011e

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    .line 3179
    const v3, 0x7f0b011f

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    .line 3181
    const v3, 0x1060125

    .line 3180
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 3183
    const v3, 0x1060126

    .line 3182
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    .line 3185
    const v3, 0x106011d

    .line 3184
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 3187
    const v3, 0x106011c

    .line 3186
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    .line 3188
    const v3, 0x7f0b0119

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    .line 3189
    const v3, 0x7f0b011a

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    .line 3190
    const v3, 0x7f0b011b

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonColor:Landroid/content/res/ColorStateList;

    .line 3192
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "row$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 3193
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 3194
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3197
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3203
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3174
    return-void
.end method

.method private updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V
    .locals 4
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2042
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->misTalkbackEnabled:Z

    if-nez v0, :cond_0

    .line 2043
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 2044
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 2045
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 2046
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2048
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 2049
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 2050
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    goto :goto_0
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 40
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 1817
    return-void

    .line 1818
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1819
    .local v31, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-nez v31, :cond_1

    .line 1820
    return-void

    .line 1821
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 1822
    sget-boolean v35, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v35, :cond_2

    .line 1823
    sget-object v35, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "updateVolumeRowH s="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, ", ss.level : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 1824
    const-string/jumbo v37, ", row.lastAudibleLevel : "

    .line 1823
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 1824
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v37

    .line 1823
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 1824
    const-string/jumbo v37, ", row.ss.muted : "

    .line 1823
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 1825
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v37

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v37, v0

    .line 1823
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_2
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v35, v0

    if-lez v35, :cond_3

    .line 1827
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1829
    :cond_3
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v35, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    .line 1830
    const/16 v35, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1832
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    const/16 v22, 0x1

    .line 1833
    .local v22, "isRingStream":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_12

    const/16 v17, 0x1

    .line 1834
    .local v17, "isNotificationStream":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    const/16 v26, 0x1

    .line 1835
    .local v26, "isSystemStream":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_14

    const/4 v12, 0x1

    .line 1836
    .local v12, "isAlarmStream":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_15

    const/4 v15, 0x1

    .line 1837
    .local v15, "isMusicStream":Z
    :goto_4
    if-eqz v22, :cond_17

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_16

    const/16 v23, 0x1

    .line 1839
    .local v23, "isRingVibrate":Z
    :goto_5
    if-eqz v17, :cond_19

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_18

    const/16 v18, 0x1

    .line 1841
    .local v18, "isNotificationVibrate":Z
    :goto_6
    if-eqz v26, :cond_1b

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    const/16 v27, 0x1

    .line 1843
    .local v27, "isSystemVibrate":Z
    :goto_7
    if-eqz v22, :cond_1d

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v35, v0

    if-nez v35, :cond_1c

    const/16 v21, 0x1

    .line 1845
    .local v21, "isRingSilent":Z
    :goto_8
    if-eqz v17, :cond_1f

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v35, v0

    if-nez v35, :cond_1e

    const/16 v16, 0x1

    .line 1847
    .local v16, "isNotificationSilent":Z
    :goto_9
    if-eqz v26, :cond_21

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v35, v0

    if-nez v35, :cond_20

    const/16 v25, 0x1

    .line 1849
    .local v25, "isSystemSilent":Z
    :goto_a
    if-eqz v22, :cond_23

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_22

    const/16 v20, 0x1

    .line 1851
    .local v20, "isRingNormal":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_24

    const/16 v28, 0x1

    .line 1852
    .local v28, "isZenAlarms":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_25

    const/16 v29, 0x1

    .line 1853
    .local v29, "isZenNone":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_26

    const/16 v30, 0x1

    .line 1854
    .local v30, "isZenPriority":Z
    :goto_e
    if-nez v22, :cond_5

    if-eqz v26, :cond_27

    :cond_5
    move/from16 v24, v29

    .line 1855
    :goto_f
    if-eqz v22, :cond_28

    move/from16 v19, v30

    .line 1861
    :goto_10
    const/16 v34, 0x0

    .line 1862
    .local v34, "zenMuted":Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    if-eqz v35, :cond_29

    .line 1863
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2a

    const/4 v13, 0x1

    .line 1864
    .local v13, "isCallOrBTSco":Z
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2c

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2b

    const/4 v14, 0x1

    .line 1868
    .local v14, "isMainStream":Z
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 1869
    sget-object v35, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v36, "expandbutton gets invisible!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1874
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1877
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1879
    .local v32, "text":Ljava/lang/String;
    if-eqz v15, :cond_2e

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    .line 1881
    sget-object v35, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "mIsSafeMediaVolumeDeviceOn : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v35, v0

    if-eqz v35, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/bluetooth/BluetoothA2dp;->semGetActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 1884
    .local v6, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz v6, :cond_7

    .line 1885
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    .line 1887
    :cond_7
    sget-object v35, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "mBTDeviceName = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8

    .line 1889
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " ("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1918
    .end local v6    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_8
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1921
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v35, v0

    if-nez v35, :cond_9

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v35, v0

    if-eqz v35, :cond_33

    :cond_9
    const/4 v10, 0x1

    .line 1922
    .local v10, "iconEnabled":Z
    :goto_14
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1923
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v36

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    if-eqz v35, :cond_a

    .line 1924
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v37, 0x6

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_35

    :cond_a
    if-eqz v10, :cond_34

    const/16 v35, 0x0

    .line 1923
    :goto_15
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1925
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v36

    if-eqz v10, :cond_36

    const/high16 v35, 0x3f800000    # 1.0f

    :goto_16
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1926
    if-nez v23, :cond_b

    if-eqz v18, :cond_37

    :cond_b
    const v11, 0x1080a22

    .line 1932
    .local v11, "iconRes":I
    :goto_17
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    move/from16 v0, v35

    if-eq v11, v0, :cond_c

    .line 1933
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1934
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1936
    :cond_c
    const v35, 0x1080a22

    move/from16 v0, v35

    if-ne v11, v0, :cond_3e

    const/16 v35, 0x3

    :goto_18
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set11(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1940
    if-eqz v10, :cond_48

    .line 1941
    if-eqz v22, :cond_45

    .line 1942
    if-eqz v23, :cond_43

    .line 1943
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    .line 1944
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v38, v37, v39

    const v38, 0x7f0f04ee

    .line 1943
    move-object/from16 v0, v36

    move/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1968
    :goto_19
    if-eqz v18, :cond_49

    .line 1969
    :cond_d
    move v9, v14

    .line 1970
    :goto_1a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v35

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v35, v0

    if-eqz v35, :cond_4a

    .line 1971
    if-nez v21, :cond_e

    if-nez v23, :cond_e

    if-nez v22, :cond_4a

    :cond_e
    const/16 v33, 0x0

    .line 1974
    .local v33, "vlevel":I
    :goto_1b
    if-nez v9, :cond_4c

    .line 1975
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    const v36, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1976
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1983
    :cond_f
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshIconTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V

    .line 1985
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v9, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V

    .line 1986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v35

    if-eqz v35, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    move/from16 v35, v0

    if-eqz v35, :cond_10

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0f0682

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    const v36, 0x7f130455

    invoke-virtual/range {v35 .. v36}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1989
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowforZenModeH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1815
    :cond_10
    return-void

    .line 1832
    .end local v10    # "iconEnabled":Z
    .end local v11    # "iconRes":I
    .end local v12    # "isAlarmStream":Z
    .end local v13    # "isCallOrBTSco":Z
    .end local v14    # "isMainStream":Z
    .end local v15    # "isMusicStream":Z
    .end local v16    # "isNotificationSilent":Z
    .end local v17    # "isNotificationStream":Z
    .end local v18    # "isNotificationVibrate":Z
    .end local v20    # "isRingNormal":Z
    .end local v21    # "isRingSilent":Z
    .end local v22    # "isRingStream":Z
    .end local v23    # "isRingVibrate":Z
    .end local v25    # "isSystemSilent":Z
    .end local v26    # "isSystemStream":Z
    .end local v27    # "isSystemVibrate":Z
    .end local v28    # "isZenAlarms":Z
    .end local v29    # "isZenNone":Z
    .end local v30    # "isZenPriority":Z
    .end local v32    # "text":Ljava/lang/String;
    .end local v33    # "vlevel":I
    .end local v34    # "zenMuted":Z
    :cond_11
    const/16 v22, 0x0

    .restart local v22    # "isRingStream":Z
    goto/16 :goto_0

    .line 1833
    :cond_12
    const/16 v17, 0x0

    .restart local v17    # "isNotificationStream":Z
    goto/16 :goto_1

    .line 1834
    :cond_13
    const/16 v26, 0x0

    .restart local v26    # "isSystemStream":Z
    goto/16 :goto_2

    .line 1835
    :cond_14
    const/4 v12, 0x0

    .restart local v12    # "isAlarmStream":Z
    goto/16 :goto_3

    .line 1836
    :cond_15
    const/4 v15, 0x0

    .restart local v15    # "isMusicStream":Z
    goto/16 :goto_4

    .line 1838
    :cond_16
    const/16 v23, 0x0

    .restart local v23    # "isRingVibrate":Z
    goto/16 :goto_5

    .line 1837
    .end local v23    # "isRingVibrate":Z
    :cond_17
    const/16 v23, 0x0

    .restart local v23    # "isRingVibrate":Z
    goto/16 :goto_5

    .line 1840
    :cond_18
    const/16 v18, 0x0

    .restart local v18    # "isNotificationVibrate":Z
    goto/16 :goto_6

    .line 1839
    .end local v18    # "isNotificationVibrate":Z
    :cond_19
    const/16 v18, 0x0

    .restart local v18    # "isNotificationVibrate":Z
    goto/16 :goto_6

    .line 1842
    :cond_1a
    const/16 v27, 0x0

    .restart local v27    # "isSystemVibrate":Z
    goto/16 :goto_7

    .line 1841
    .end local v27    # "isSystemVibrate":Z
    :cond_1b
    const/16 v27, 0x0

    .restart local v27    # "isSystemVibrate":Z
    goto/16 :goto_7

    .line 1844
    :cond_1c
    const/16 v21, 0x0

    .restart local v21    # "isRingSilent":Z
    goto/16 :goto_8

    .line 1843
    .end local v21    # "isRingSilent":Z
    :cond_1d
    const/16 v21, 0x0

    .restart local v21    # "isRingSilent":Z
    goto/16 :goto_8

    .line 1846
    :cond_1e
    const/16 v16, 0x0

    .restart local v16    # "isNotificationSilent":Z
    goto/16 :goto_9

    .line 1845
    .end local v16    # "isNotificationSilent":Z
    :cond_1f
    const/16 v16, 0x0

    .restart local v16    # "isNotificationSilent":Z
    goto/16 :goto_9

    .line 1848
    :cond_20
    const/16 v25, 0x0

    .restart local v25    # "isSystemSilent":Z
    goto/16 :goto_a

    .line 1847
    .end local v25    # "isSystemSilent":Z
    :cond_21
    const/16 v25, 0x0

    .restart local v25    # "isSystemSilent":Z
    goto/16 :goto_a

    .line 1850
    :cond_22
    const/16 v20, 0x0

    .restart local v20    # "isRingNormal":Z
    goto/16 :goto_b

    .line 1849
    .end local v20    # "isRingNormal":Z
    :cond_23
    const/16 v20, 0x0

    .restart local v20    # "isRingNormal":Z
    goto/16 :goto_b

    .line 1851
    :cond_24
    const/16 v28, 0x0

    .restart local v28    # "isZenAlarms":Z
    goto/16 :goto_c

    .line 1852
    :cond_25
    const/16 v29, 0x0

    .restart local v29    # "isZenNone":Z
    goto/16 :goto_d

    .line 1853
    :cond_26
    const/16 v30, 0x0

    .restart local v30    # "isZenPriority":Z
    goto/16 :goto_e

    .line 1854
    :cond_27
    const/16 v24, 0x0

    .local v24, "isRingZenNone":Z
    goto/16 :goto_f

    .line 1855
    .end local v24    # "isRingZenNone":Z
    :cond_28
    const/16 v19, 0x0

    .local v19, "isRingLimited":Z
    goto/16 :goto_10

    .line 1862
    .end local v19    # "isRingLimited":Z
    .restart local v34    # "zenMuted":Z
    :cond_29
    const/4 v13, 0x1

    .restart local v13    # "isCallOrBTSco":Z
    goto/16 :goto_11

    .line 1863
    .end local v13    # "isCallOrBTSco":Z
    :cond_2a
    const/4 v13, 0x0

    .restart local v13    # "isCallOrBTSco":Z
    goto/16 :goto_11

    .line 1864
    :cond_2b
    const/4 v14, 0x0

    .restart local v14    # "isMainStream":Z
    goto/16 :goto_12

    .line 1865
    .end local v14    # "isMainStream":Z
    :cond_2c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2d

    const/4 v14, 0x1

    .restart local v14    # "isMainStream":Z
    goto/16 :goto_12

    .end local v14    # "isMainStream":Z
    :cond_2d
    const/4 v14, 0x0

    .restart local v14    # "isMainStream":Z
    goto/16 :goto_12

    .line 1892
    .restart local v32    # "text":Ljava/lang/String;
    :cond_2e
    sget-boolean v35, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v35, :cond_2f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0xa

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2f

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_13

    .line 1894
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v35, v0

    if-eqz v35, :cond_30

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0xb

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_30

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 1896
    sget-object v35, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "mIsSafeMediaVolumeDeviceOnForMultiSound : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object v7

    .line 1898
    .local v7, "deviceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    move-result-object v3

    .line 1899
    .local v3, "appName":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " ("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " ("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_13

    .line 1900
    .end local v3    # "appName":Ljava/lang/String;
    .end local v7    # "deviceName":Ljava/lang/String;
    :cond_30
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    const/16 v36, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    .line 1901
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getVisibility()I

    move-result v35

    if-nez v35, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v8

    .line 1903
    .local v8, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "conDevice$iterator":Ljava/util/Iterator;
    :cond_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1904
    .local v4, "conDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v35

    if-eqz v35, :cond_31

    .line 1905
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1909
    .end local v4    # "conDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    .line 1911
    sget-object v35, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "mBTScoDeviceName = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8

    .line 1913
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " ("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_13

    .line 1921
    .end local v5    # "conDevice$iterator":Ljava/util/Iterator;
    .end local v8    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_33
    const/4 v10, 0x0

    .restart local v10    # "iconEnabled":Z
    goto/16 :goto_14

    .line 1924
    :cond_34
    const/16 v35, 0x1

    goto/16 :goto_15

    :cond_35
    move/from16 v35, v10

    goto/16 :goto_15

    .line 1925
    :cond_36
    const/high16 v35, 0x3f000000    # 0.5f

    goto/16 :goto_16

    .line 1927
    :cond_37
    if-nez v21, :cond_38

    if-nez v16, :cond_38

    .line 1928
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v35, v0

    if-eqz v35, :cond_39

    const v11, 0x1080a03

    .restart local v11    # "iconRes":I
    goto/16 :goto_17

    .line 1927
    .end local v11    # "iconRes":I
    :cond_38
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    .restart local v11    # "iconRes":I
    goto/16 :goto_17

    .line 1929
    .end local v11    # "iconRes":I
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v35, v0

    if-eqz v35, :cond_3a

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v35, v0

    if-nez v35, :cond_3a

    if-eqz v20, :cond_3c

    .line 1930
    :cond_3a
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v35, v0

    if-eqz v35, :cond_3b

    if-eqz v20, :cond_3d

    :cond_3b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    .restart local v11    # "iconRes":I
    goto/16 :goto_17

    .line 1929
    .end local v11    # "iconRes":I
    :cond_3c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    .restart local v11    # "iconRes":I
    goto/16 :goto_17

    .line 1930
    .end local v11    # "iconRes":I
    :cond_3d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    .restart local v11    # "iconRes":I
    goto/16 :goto_17

    .line 1937
    :cond_3e
    const v35, 0x1080a07

    move/from16 v0, v35

    if-eq v11, v0, :cond_3f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    move/from16 v0, v35

    if-ne v11, v0, :cond_40

    :cond_3f
    const/16 v35, 0x2

    goto/16 :goto_18

    .line 1938
    :cond_40
    const v35, 0x1080a03

    move/from16 v0, v35

    if-eq v11, v0, :cond_41

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v35

    move/from16 v0, v35

    if-ne v11, v0, :cond_42

    :cond_41
    const/16 v35, 0x1

    goto/16 :goto_18

    .line 1939
    :cond_42
    const/16 v35, 0x0

    goto/16 :goto_18

    .line 1946
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v35

    if-eqz v35, :cond_44

    .line 1947
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    .line 1948
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v38, v37, v39

    const v38, 0x7f0f04ef

    .line 1947
    move-object/from16 v0, v36

    move/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 1950
    :cond_44
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    .line 1951
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v38, v37, v39

    const v38, 0x7f0f04f0

    .line 1950
    move-object/from16 v0, v36

    move/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 1955
    :cond_45
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v35, v0

    if-nez v35, :cond_46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v35, v0

    if-eqz v35, :cond_47

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v35, v0

    if-nez v35, :cond_47

    .line 1956
    :cond_46
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    .line 1957
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v38, v37, v39

    const v38, 0x7f0f04ee

    .line 1956
    move-object/from16 v0, v36

    move/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 1959
    :cond_47
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    .line 1960
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v38, v37, v39

    const v38, 0x7f0f04f0

    .line 1959
    move-object/from16 v0, v36

    move/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 1964
    :cond_48
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 1968
    :cond_49
    if-nez v16, :cond_d

    .line 1969
    if-nez v27, :cond_d

    if-nez v25, :cond_d

    .line 1968
    const/4 v9, 0x1

    .local v9, "enableSlider":Z
    goto/16 :goto_1a

    .line 1972
    .end local v9    # "enableSlider":Z
    :cond_4a
    if-eqz v13, :cond_4b

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v35, v0

    add-int/lit8 v33, v35, 0x1

    .restart local v33    # "vlevel":I
    goto/16 :goto_1b

    .end local v33    # "vlevel":I
    :cond_4b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v33, v0

    .restart local v33    # "vlevel":I
    goto/16 :goto_1b

    .line 1978
    :cond_4c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v35

    if-nez v35, :cond_f

    .line 1979
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v35

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_1c
.end method

.method private updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 2033
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v0, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    .line 2034
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v2, :cond_3

    move v1, v0

    .line 2035
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get3(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2036
    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set3(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 2037
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 2032
    :cond_0
    return-void

    .line 2033
    :cond_1
    const/4 v0, 0x0

    .local v0, "dynamic":Z
    goto :goto_0

    .line 2034
    .end local v0    # "dynamic":Z
    :cond_2
    const/4 v1, 0x1

    .local v1, "showHeaders":Z
    goto :goto_1

    .end local v1    # "showHeaders":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "showHeaders":Z
    goto :goto_1
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 2056
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-ne p1, v6, :cond_3

    const/4 v1, 0x1

    .line 2057
    .local v1, "isActive":Z
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v5

    .line 2059
    .local v5, "rowVisible":Z
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2060
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_4

    .line 2061
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2070
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 2071
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isExtraButtonOn()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2072
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Call setMode(ProgressBar.MODE_WARNING)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 2079
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get19(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2080
    return-void

    .line 2056
    .end local v1    # "isActive":Z
    .end local v5    # "rowVisible":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2062
    .restart local v1    # "isActive":Z
    .restart local v5    # "rowVisible":Z
    :cond_4
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v6, :cond_1

    .line 2063
    :cond_5
    if-nez p2, :cond_6

    .line 2064
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 2066
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 2075
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->semSetMode(I)V

    goto :goto_2

    .line 2082
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    .line 2084
    .local v4, "progress":I
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 2085
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v2

    .line 2092
    .local v2, "level":I
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_c

    const/4 v0, 0x1

    .line 2093
    .local v0, "inGracePeriod":Z
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 2094
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    if-eqz v0, :cond_d

    .line 2095
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_9

    .line 2096
    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "inGracePeriod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    .line 2098
    const-wide/16 v10, 0x3e8

    .line 2097
    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2099
    return-void

    .line 2086
    .end local v0    # "inGracePeriod":Z
    .end local v2    # "level":I
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_b

    .line 2087
    move v2, v4

    .restart local v2    # "level":I
    goto :goto_3

    .line 2089
    .end local v2    # "level":I
    :cond_b
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v2

    .restart local v2    # "level":I
    goto :goto_3

    .line 2092
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "inGracePeriod":Z
    goto :goto_4

    .line 2101
    :cond_d
    if-ne p3, v2, :cond_e

    .line 2102
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    .line 2103
    return-void

    .line 2107
    :cond_e
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_10

    .line 2109
    :cond_f
    move v3, p3

    .line 2124
    .local v3, "newProgress":I
    :goto_5
    if-eq v4, v3, :cond_17

    .line 2125
    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v6, :cond_19

    if-eqz v5, :cond_19

    .line 2127
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2128
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get1(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    if-ne v6, v3, :cond_16

    .line 2129
    return-void

    .line 2108
    .end local v3    # "newProgress":I
    :cond_10
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_f

    .line 2111
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_11

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_15

    .line 2112
    :cond_11
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v6, v6, -0x1

    if-ne p3, v6, :cond_15

    .line 2113
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_12

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v6, :cond_13

    .line 2114
    :cond_12
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_14

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    .line 2113
    if-eqz v6, :cond_14

    .line 2115
    :cond_13
    mul-int/lit8 v3, p3, 0x6a

    .restart local v3    # "newProgress":I
    goto :goto_5

    .line 2117
    .end local v3    # "newProgress":I
    :cond_14
    mul-int/lit8 v3, p3, 0x64

    .restart local v3    # "newProgress":I
    goto :goto_5

    .line 2120
    .end local v3    # "newProgress":I
    :cond_15
    mul-int/lit8 v3, p3, 0x64

    .restart local v3    # "newProgress":I
    goto :goto_5

    .line 2132
    :cond_16
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v6, :cond_18

    .line 2133
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const-string/jumbo v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v3, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 2134
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2139
    :goto_6
    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set1(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 2140
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2141
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 2055
    :cond_17
    :goto_7
    return-void

    .line 2136
    :cond_18
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2137
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_6

    .line 2144
    :cond_19
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 2145
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2147
    :cond_1a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_7
.end method

.method private updateVolumeRowforZenModeH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 2185
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    packed-switch v0, :pswitch_data_0

    .line 2184
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2194
    :pswitch_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2195
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setRowDisableMode(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 2185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWindowWidthH()V
    .locals 7

    .prologue
    const v6, 0x7f0d037f

    .line 885
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 886
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 887
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 889
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 890
    const v5, 0x7f0d01fe

    .line 889
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 892
    .local v2, "max":I
    if-le v3, v2, :cond_0

    .line 893
    move v3, v2

    .line 895
    :cond_0
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->M_LATTE:Z

    if-eqz v4, :cond_4

    .line 896
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 897
    const v5, 0x7f0d037e

    .line 896
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 918
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_2

    .line 919
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWindowWidth lp.width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mCurrentWindowWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 920
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    .line 919
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_2
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    if-eq v4, v5, :cond_3

    .line 922
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    .line 884
    :cond_3
    return-void

    .line 898
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v4, :cond_6

    .line 899
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-nez v4, :cond_5

    .line 900
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 903
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 907
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 908
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    .line 909
    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    .line 910
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 911
    const v5, 0x7f0d0380

    .line 910
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 913
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 914
    const v5, 0x7f0d0381

    .line 913
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0
.end method


# virtual methods
.method public ZenModeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    .line 1317
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dnd mode Changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    if-nez v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected dismissH(I)V
    .locals 9
    .param p1, "reason"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1439
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissH reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    if-nez v0, :cond_0

    .line 1442
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPrevSystemRendererDisabled:Z

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 1445
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1446
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    if-eq p1, v4, :cond_2

    .line 1447
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 1448
    if-ne p1, v3, :cond_5

    .line 1449
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    .line 1450
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SafetyWarning dismiss cancelled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    .line 1459
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    .line 1460
    if-ne p1, v3, :cond_7

    .line 1461
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1462
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1465
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    .line 1466
    return-void

    .line 1452
    :cond_5
    :try_start_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_6

    .line 1453
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SafetyWarning dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1445
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1460
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 1468
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1469
    return-void

    .line 1471
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1473
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v0, :cond_a

    .line 1475
    return-void

    .line 1476
    :cond_a
    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    .line 1478
    if-eq p1, v4, :cond_b

    const/16 v0, 0x9

    if-ne p1, v0, :cond_f

    .line 1479
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    .line 1480
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissLockScreenDialog()V

    .line 1481
    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    .line 1497
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 1498
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 1497
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1499
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v0, :cond_c

    .line 1500
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1502
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamTypeForLogging(I)V

    .line 1503
    const-string/jumbo v1, "com.android.systemui.volume"

    const-string/jumbo v2, "FWVP"

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->isChangedFromKey()J

    move-result-wide v4

    move-object v0, p0

    .line 1503
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1506
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1508
    const/16 v0, 0x20

    .line 1507
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 1509
    .local v6, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1510
    const-class v0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1511
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1512
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0f04f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1511
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1515
    .end local v6    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v8, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v7}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 1438
    return-void

    .line 1483
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissLockScreenDialog()V

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eqz v0, :cond_12

    .line 1485
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    .line 1486
    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    goto/16 :goto_2

    .line 1488
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$12;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    goto/16 :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    const-string/jumbo v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1062
    const-string/jumbo v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1064
    const-string/jumbo v0, "  mExpandButtonAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1066
    const-string/jumbo v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1068
    const-string/jumbo v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1070
    const-string/jumbo v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1072
    const-string/jumbo v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1074
    const-string/jumbo v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1076
    const-string/jumbo v0, "  mCollapseTime: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1078
    const-string/jumbo v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1058
    return-void
.end method

.method public isExtraButtonOn()Z
    .locals 6

    .prologue
    .line 3274
    const/4 v2, 0x0

    .line 3276
    .local v2, "rtvalue":Z
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3277
    .local v0, "extraButtonOn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3279
    .local v1, "extraButtonOnDevice":Ljava/lang/String;
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3283
    const/4 v2, 0x1

    .line 3288
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    return v2

    .line 3285
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 875
    const-string/jumbo v1, "sysui_show_full_zen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowFullZen:Z

    .line 874
    :cond_1
    return-void
.end method

.method public playSoundH()V
    .locals 7

    .prologue
    .line 1265
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1266
    :cond_0
    return-void

    .line 1267
    :cond_1
    monitor-enter p0

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v0, :cond_2

    .line 1270
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1272
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playSoundH with stream : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 1276
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_4

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_4

    .line 1279
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->releaseSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    .line 1264
    return-void

    .line 1267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1415
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    .line 1416
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 1417
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    .line 1418
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    .line 1417
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1419
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    .line 1420
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    .line 1414
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_0

    .line 960
    return-void

    .line 961
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    .line 962
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 958
    return-void
.end method

.method public setRowDisableMode(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    const/4 v2, 0x0

    .line 974
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 975
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 976
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 977
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 978
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 979
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 982
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 983
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 984
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 985
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 986
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 972
    return-void
.end method

.method public setShowHeaders(Z)V
    .locals 2
    .param p1, "showHeaders"    # Z

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-ne p1, v0, :cond_0

    .line 953
    return-void

    .line 954
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    .line 955
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 951
    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    .line 967
    return-void

    .line 968
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    .line 969
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    .line 965
    return-void
.end method

.method public stopSoundH()V
    .locals 2

    .prologue
    .line 1293
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    return-void
.end method

.method public themeChanged()V
    .locals 4

    .prologue
    .line 1299
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "themeChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    .line 1303
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1304
    .local v0, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto :goto_0

    .line 1298
    .end local v0    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_0
    return-void
.end method
