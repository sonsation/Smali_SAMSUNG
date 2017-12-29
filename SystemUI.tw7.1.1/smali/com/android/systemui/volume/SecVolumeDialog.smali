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

.field private static final VOICE_ENABLE_URI:Landroid/net/Uri;

.field private static final mHardwareAccelerated:Z

.field private static mIsSafetyWarningShowing:Z

.field private static final mPrevSystemRendererDisabled:Z

.field private static sIsDexMode:Z


# instance fields
.field private final DISABLED_ALPHA_VALUE:F

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveChildIndex:I

.field private mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

.field private mActiveStream:I

.field private mActiveStreamChanged:Z

.field private mAfterHeight:I

.field private mApp:Lcom/android/systemui/SystemUIApplication;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mBTDeviceName:Ljava/lang/String;

.field private mBTScoDeviceName:Ljava/lang/String;

.field private mBixbyStatus:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverOpened:Z

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private mCurrentWindowWidth:I

.field private mDefaulVolumeControlHeader:Landroid/widget/TextView;

.field private mDefaultVolumeControlSwitch:Landroid/widget/Switch;

.field private mDensity:I

.field private final mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

.field private mDialogDndView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDownY:F

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

.field private mHfp:Landroid/bluetooth/BluetoothHeadset;

.field private mHovering:Z

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

.field private mIsSafeMediaVolumeDeviceOn:Z

.field private mIsSafeMediaVolumeDeviceOnForMultiSound:Z

.field private mIsScrollFinished:Z

.field private mIsShowingSCoverWarning:Z

.field private mIsSwipe:Z

.field private mIsTalkbackEnabled:Z

.field private mIsTraking:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

.field private mLockScreenDialogContentView:Landroid/view/ViewGroup;

.field private mMaxSmartViewVol:I

.field private mMinSmartViewVol:I

.field private mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mOrientation:I

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mPinDevice:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousBixbyStatus:I

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressDefaultColor:Landroid/content/res/ColorStateList;

.field private mRemoteControlMaxVolume:I

.field private final mResources:Landroid/content/res/Resources;

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

.field private mScrollDialogView:Landroid/view/ViewGroup;

.field private mScrollY:I

.field private mScrollableDistance:I

.field private mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private mShowHeaders:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mSmartViewMuteToast:Landroid/widget/Toast;

.field private mSmartViewRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

.field private mSmartViewTouchToast:Landroid/widget/Toast;

.field private mSmartViewisMute:Z

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSwipeDistance:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDefaultColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mTouchDown:Z

.field private mUpY:F

.field private mVisibleRowIndex:I

.field private final mVoiceCapable:Z

.field private mVolumeDnDToast:Landroid/widget/Toast;

.field private mVolumeLimiterDialog:Landroid/app/AlertDialog;

.field private mVolumePanelBgColor:Landroid/content/res/ColorStateList;

.field private mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

.field private mZenMode:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDensity:I

    return v0
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

.method static synthetic -get16(Lcom/android/systemui/volume/SecVolumeDialog;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDownY:F

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsScrollFinished:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSwipe:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsTalkbackEnabled:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsTraking:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMaxSmartViewVol:I

    return v0
.end method

.method static synthetic -get29(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMinSmartViewVol:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    return v0
.end method

.method static synthetic -get30(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mOrientation:I

    return v0
.end method

.method static synthetic -get32(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -get34(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object v0
.end method

.method static synthetic -get37(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/Scover;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScrollDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScrollY:I

    return v0
.end method

.method static synthetic -get41(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScrollableDistance:I

    return v0
.end method

.method static synthetic -get42(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/media/SemSoundAssistantManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    return-object v0
.end method

.method static synthetic -get45(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewisMute:Z

    return v0
.end method

.method static synthetic -get46(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -get49(Lcom/android/systemui/volume/SecVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSwipeDistance:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get50(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTouchDown:Z

    return v0
.end method

.method static synthetic -get51(Lcom/android/systemui/volume/SecVolumeDialog;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mUpY:F

    return v0
.end method

.method static synthetic -get52(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic -get53()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/SecVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

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

.method static synthetic -set10(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsScrollFinished:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSwipe:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsTalkbackEnabled:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsTraking:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMaxSmartViewVol:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMinSmartViewVol:I

    return p1
.end method

.method static synthetic -set18(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mOrientation:I

    return p1
.end method

.method static synthetic -set19(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set20(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -set22(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScrollY:I

    return p1
.end method

.method static synthetic -set23(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewMuteToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set24(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewTouchToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set25(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewisMute:Z

    return p1
.end method

.method static synthetic -set26(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTouchDown:Z

    return p1
.end method

.method static synthetic -set27(Lcom/android/systemui/volume/SecVolumeDialog;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mUpY:F

    return p1
.end method

.method static synthetic -set28(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/SecVolumeDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    return p1
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

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDensity:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/volume/SecVolumeDialog;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDownY:F

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandCollapseAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->playSoundH()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshMorebuttonTintColor()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->setDialogWindowGravity()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/volume/SecVolumeDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/volume/SecVolumeDialog;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/volume/SecVolumeDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->showSmartViewMuteToast()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/SeekBar;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->showSmartViewTouchToast()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->showVolumeLimiterDialog()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->stopSoundH()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->themeChanged()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic -wrap3(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->ZenModeChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->doRefresh()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->expandCollapseDialog()V

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

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    sput-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    sget-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPrevSystemRendererDisabled:Z

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    const-string/jumbo v0, "latte"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->M_LATTE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VOLUMEPANEL_IN_CLEARCOVER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

    const-string/jumbo v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/SecVolumeDialog$H;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsTalkbackEnabled:Z

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    const v6, 0x3ecccccd    # 0.4f

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->DISABLED_ALPHA_VALUE:F

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    const-string/jumbo v6, "Ringtone"

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMinSmartViewVol:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMaxSmartViewVol:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewisMute:Z

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSwipe:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsTraking:Z

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPreviousBixbyStatus:I

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/SecVolumeDialog$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/SecVolumeDialog$2;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/SecVolumeDialog$3;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/SecVolumeDialog$4;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/SecVolumeDialog$5;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    new-instance v6, Lcom/android/systemui/volume/SpTexts;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    const-string/jumbo v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112005d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const/4 v7, 0x0

    invoke-direct {p0, v6, p2, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->setDialogWindowAttributes(Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;IZ)V

    const-string/jumbo v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPowerManager:Landroid/os/PowerManager;

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const/4 v7, 0x1

    invoke-direct {p0, v6, p2, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->setDialogWindowAttributes(Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;IZ)V

    new-instance v6, Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->initDialog()V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->init()V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {p3, v6, v7}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    invoke-virtual {p3}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "sysui_show_full_zen"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, p0, v7}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDensity:I

    iget v6, v2, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mOrientation:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateDefaultTintColor()V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v6, Lcom/android/systemui/volume/SecVolumeDialog$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/SecVolumeDialog$6;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->initCoverManager(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->registerBroadcastReceiver()V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/SystemUIApplication;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6, v7}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$7;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v1, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v1, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "display"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    iput-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialog$8;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v6, v5, v7}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    return-void
.end method

.method private ZenModeChanged()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

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

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private addExistingRows()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

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

    if-lez v7, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->addSpacer(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addRow(IIIZ)V
    .locals 6

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->addSpacer(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    :cond_1
    return-void
.end method

.method private addRow_lockscreen(IIIZ)V
    .locals 6

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->initRow_lockscreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSpacer(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x1020000

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0d0360

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private computeTimeoutH()I
    .locals 3

    const/16 v2, 0x1388

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    monitor-exit v0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_4

    :cond_3
    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    :cond_5
    const/16 v0, 0x5dc

    return v0

    :cond_6
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v0, 0xbb8

    return v0
.end method

.method private createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 3

    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createAlphaAnimSet(I)Landroid/animation/AnimatorSet;
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-eq v8, v9, :cond_0

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    const/4 v8, 0x3

    if-ne p1, v8, :cond_1

    invoke-direct {p0, v7, v10, v11}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v6, v10, v11}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v7, v11, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v6, v11, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_3

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_2
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v3

    :cond_3
    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_2
.end method

.method private createCollapseExpandAnim()Landroid/animation/AnimatorSet;
    .locals 15

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

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

    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/android/systemui/volume/SecVolumeDialog$16;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/SecVolumeDialog$16;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x0

    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    :goto_0
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    const/4 v3, 0x4

    :goto_1
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/systemui/volume/SecVolumeDialog;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v10, :cond_3

    const/4 v10, 0x0

    return-object v10

    :cond_1
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    iget v12, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d0360

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    mul-int/2addr v11, v12

    add-int v1, v10, v11

    const/4 v3, 0x3

    goto :goto_1

    :cond_3
    new-instance v10, Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTop(I)V

    :goto_2
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    const-string/jumbo v11, "translationY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    int-to-float v13, v6

    const/4 v14, 0x0

    aput v13, v12, v14

    int-to-float v13, v1

    const/4 v14, 0x1

    aput v13, v12, v14

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->createAlphaAnimSet(I)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v10, :cond_6

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    if-eqz v10, :cond_6

    if-eqz v0, :cond_6

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_3
    iget-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v10, :cond_7

    const-wide/16 v10, 0x258

    invoke-virtual {v4, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_4
    new-instance v10, Lcom/android/systemui/volume/SecVolumeDialog$17;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/SecVolumeDialog$17;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4

    :cond_5
    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v11}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTop(I)V

    goto :goto_2

    :cond_6
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_7
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0401c4

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0401c2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private doRefresh()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mGhostView:Landroid/view/View;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->removeCachedBitmap()V

    return-void
.end method

.method private expandCollapseDialog()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandCollapseAnimating:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    const v2, 0x7f0f05b4

    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandedWindowHeightH()V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->createCollapseExpandAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const v2, 0x7f0f05b3

    goto :goto_1
.end method

.method private findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v3, v4, :cond_0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveChildIndex:I

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    return-object v3
.end method

.method private getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

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

    return-object v1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IllegalArgumentException happens in getBitmapDrawableFromView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method private getConservativeCollapseDuration()J
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/lit8 v3, v0, 0x64

    add-int/lit8 v1, v3, -0x1

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    if-ne p1, v0, :cond_1

    div-int/lit8 v2, v0, 0x64

    goto :goto_0

    :cond_1
    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getImpliedMediaVolumeLevel(I)I
    .locals 1

    div-int/lit8 p0, p0, 0xa

    mul-int/lit8 v0, p0, 0xa

    return v0
.end method

.method private getSmartViewDeviceName()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3

    :cond_4
    return-object v3
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initCoverManager: initCoverManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initCoverManager fail NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initDialog()V
    .locals 14

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHovering:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f04018e

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f13049e

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScrollDialogView:Landroid/view/ViewGroup;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f13049f

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$9;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScrollDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$10;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f1304a0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f1304a1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f0400db

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f130339

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialogContentView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/SecVolumeDialog$11;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->setContext(Landroid/content/Context;)V

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x3

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x5

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x1

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x4

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x0

    const v1, 0x10809fb

    const v2, 0x10809fb

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x6

    const v1, 0x10809f9

    const v2, 0x10809f9

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/16 v0, 0xd

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/16 v0, 0xa

    const v1, 0x7f0207dd

    const v2, 0x7f0207df

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/16 v0, 0xb

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x3

    const v1, 0x7f0207e5

    const v2, 0x7f0207e1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    const/16 v0, 0xb

    const v1, 0x7f0207e5

    const v2, 0x7f0207e1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f1304a3

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    const v0, 0x7f130565

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    const v1, 0x7f130564

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_9

    const/4 v0, 0x1

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f1304a2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    const v0, 0x7f130561

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    const v0, 0x7f130562

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    const v0, 0x7f130561

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDefaulVolumeControlHeader:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    const v1, 0x7f130560

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f130562

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v12}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    const v1, 0x7f0401cb

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setContentView(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x5

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x3

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x1

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x4

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x0

    const v1, 0x10809fb

    const v2, 0x10809fb

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x6

    const v1, 0x10809f9

    const v2, 0x10809f9

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/16 v0, 0xd

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/16 v0, 0xa

    const v1, 0x7f0207dd

    const v2, 0x7f0207df

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/16 v0, 0xb

    const v1, 0x1080a10

    const v2, 0x10809fd

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    const/4 v0, 0x3

    const v1, 0x7f0207e5

    const v2, 0x7f0207e1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    const/16 v0, 0xb

    const v1, 0x7f0207e5

    const v2, 0x7f0207e1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow_lockscreen(IIIZ)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->addExistingRows()V

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x2

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x2

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d03eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSwipeDistance:I

    return-void
.end method

.method private initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04018f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1304a5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f13033b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$12;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog$12;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetMode(I)V

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f13033a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-static {p1, v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/volume/SecVolumeDialog$13;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$13;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsDLNAStatus:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v5, "mivo"

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    :goto_3
    if-eqz v0, :cond_c

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v2, v4, 0x64

    :goto_4
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_2
    :goto_5
    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    const/16 v4, 0xb

    if-ne p2, v4, :cond_4

    :cond_3
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->setImpliedEarProtectLevel(II)V

    :cond_4
    return-void

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_3

    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_b

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_3

    :cond_b
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    goto :goto_3

    :cond_c
    mul-int/lit8 v2, v1, 0x64

    goto :goto_4

    :cond_d
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsDLNAStatus:Z

    if-nez v4, :cond_e

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v4, :cond_f

    :cond_e
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v5, "mavo"

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_f
    :goto_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->semSetMin(I)V

    goto :goto_5

    :cond_10
    const/4 v3, 0x0

    goto :goto_6
.end method

.method private initRow_lockscreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static {p1, p3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static {p1, p4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static {p1, p5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400dc

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f13033b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f13033a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x64

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    if-eq p2, v5, :cond_0

    const/16 v1, 0xb

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->setImpliedEarProtectLevelforLockScreenDialog(II)V

    :cond_1
    return-void
.end method

.method private initTrackingValues()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set19(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsTraking:Z

    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

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

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private isAttached()Z
    .locals 1

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

.method private isBixbyServiceOn()Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v10

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->VOICE_ENABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "bixby_voice_isenable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBixbyServiceOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v8, v9, :cond_1

    move v0, v9

    :goto_0
    return v0

    :cond_1
    move v0, v10

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isBixbyServiceOn FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method public static isDexMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    return v0
.end method

.method private isExtraButtonOn()Z
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

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

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInLockScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

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

.method public static isSafeWarningVisible()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    return v0
.end method

.method private isUserInCall()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUserInCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_1

    move p2, v0

    goto :goto_0
.end method

.method private makeSound()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundID:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    goto :goto_0
.end method

.method private onDismissLockScreenDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SystemUIApplication or StatusBar is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Set KeyguardStatubar Visibility : TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    :cond_2
    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mLockScreenDialog is dismissing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    return-void
.end method

.method private onDismissSafeVolumeWarning()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismiss warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onShowLockScreenDialog()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->getQuickSettingPanelExpandState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SystemUIApplication;

    iput-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mApp:Lcom/android/systemui/SystemUIApplication;

    const-class v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v5}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    :cond_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "The LockScreenDialog is not shown because StatusBar is expanded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    return v6

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "RemoteException when call the getPanelExpandState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Set KeyguardStatubar Visibility : FALSE & Show the mLockScreenDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setForceKeyguardStatusBarVisibility(Z)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->show()V

    const/4 v4, 0x1

    return v4

    :cond_6
    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "The LockScreenDialog is not shown because ActiveStream is not music OR LCD_OFF Status"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    return v6
.end method

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 14

    const/4 v13, 0x3

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-boolean v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    sget-boolean v7, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v7, :cond_3

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

    :cond_3
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    if-eqz v0, :cond_5

    iput-boolean v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPendingStateChanged:Z

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    iget-object v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    iget-boolean v7, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v7, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->findRow(I)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    if-nez v7, :cond_6

    iget v7, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRemoteControlMaxVolume:I

    const v7, 0x7f020265

    const v8, 0x7f020266

    invoke-direct {p0, v6, v7, v8, v11}, Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    if-ne v1, v7, :cond_9

    iput v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    :cond_9
    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    iget v8, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v7, v8, :cond_b

    iput-boolean v11, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    iget v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    :goto_3
    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v7, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v7

    if-eqz v7, :cond_d

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-eq v7, v13, :cond_a

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_d

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowsLockScreen:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v7, v8, :cond_c

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateLockScreenVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_4

    :cond_b
    iput-boolean v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    goto :goto_3

    :cond_c
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_d
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_6

    :cond_e
    return-void
.end method

.method private playSoundH()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->isChangedFromKey()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Do not play the sound because the volume dialog is not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    :cond_3
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

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_4

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

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->releaseSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->makeSound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 5

    if-nez p1, :cond_1

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

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

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    :cond_3
    return-void
.end method

.method private refreshIconTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V
    .locals 3

    const/16 v2, 0x8

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v0, :cond_0

    goto :goto_1

    :pswitch_3
    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_4
    if-nez p2, :cond_4

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    if-lt p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_5
    if-nez p2, :cond_9

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v2, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    if-lt p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v0, v2, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_b

    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    :pswitch_6
    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    :pswitch_7
    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

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
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private refreshLockScreenDialogResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 10

    const v9, 0x7f0b0131

    const v8, 0x7f0b012d

    const/16 v7, 0xb

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "white_lockscreen_statusbar"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update LockScreen Dialog TintColor as Light Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b012e

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v7, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b012f

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0130

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update LockScreen Dialog TintColor as Dark Theme"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v9, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v9, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0132

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v5, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v2, :cond_6

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v7, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v2, :cond_3

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0133

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0134

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    goto :goto_0
.end method

.method private refreshMorebuttonTintColor()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDefaulVolumeControlHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDefaulVolumeControlHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private refreshSliderResourceDefaultTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_2
    return-void
.end method

.method private refreshSliderResourceTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshSliderResourceTintColor #1 mThumbColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshSliderResourceTintColor #2 mProgressColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set6(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshSliderResourceTintColor #3 mProgressBgColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set4(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_2
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseSound()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method private removeCachedBitmap()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    return-void
.end method

.method private setDialogWindowAttributes(Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;IZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x10c0128

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v5}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez p3, :cond_2

    const-class v2, Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0361

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->setDialogWindowGravity()V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d03f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d03f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    if-nez v2, :cond_1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_2
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setDialogWindowGravity()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x53

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    const/16 v2, 0x55

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3

    const/4 v2, -0x1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbar - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mEarProtectLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbar - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mEarProtectLevelForMultiSound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setDualColorSeekbarforLockScreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3

    const/4 v2, -0x1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbarforLockScreen - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mEarProtectLevelforLockScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualColorSeekbarforLockScreen - mAudioManager.semGetEarProtectLimit() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mEarProtectLevelForMultiSound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setExpandedH(Z)V
    .locals 8

    const/16 v7, 0xd

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExpandedH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isUserInCall()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-ne v1, v6, :cond_2

    invoke-direct {p0, v6, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    invoke-direct {p0, v4, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    :cond_2
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    if-nez v1, :cond_3

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    invoke-direct {p0, v6, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    :cond_3
    :goto_2
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isBixbyServiceOn()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v7, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateRowsH()V

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateExpandButtonH()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v6, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    invoke-direct {p0, v4, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v7, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto :goto_3
.end method

.method private setImpliedEarProtectLevel(II)V
    .locals 2

    div-int/lit8 v1, p2, 0x64

    add-int/lit8 v0, v1, -0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevel:I

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    goto :goto_0

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

    div-int/lit8 v1, p2, 0x64

    add-int/lit8 v0, v1, -0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelForMultiSound:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLevelforLockScreen:I

    goto :goto_0
.end method

.method private setRowDisableMode(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    return-void
.end method

.method public static setSafetyWarningVisible(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    return-void

    :cond_1
    return-void
.end method

.method private setStreamTypeForLogging(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v0, "System"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "Media"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "Bixby Voice"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "Notification"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showH(I)V
    .locals 12

    const/16 v11, 0x96e

    const/16 v10, 0x7e4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->SHOW_VOLUMEPANEL_IN_CLEARCOVER:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v4, :cond_7

    :cond_0
    const/4 v2, 0x1

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    if-nez v4, :cond_1

    sput-boolean v8, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    :cond_1
    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    invoke-static {v4}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    if-ne v4, v9, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->showVolumeDnDToast()V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v4}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    if-eqz v4, :cond_8

    :cond_4
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showH r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mShowing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v4, v8}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v4, v9}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v4

    if-eqz v4, :cond_6

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v4, :cond_9

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v4, v7}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    return-void

    :cond_8
    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SafetyWarningDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :cond_b
    monitor-exit v5

    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandCollapseAnimating:Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mLockScreenDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPreviousBixbyStatus:I

    if-eq v4, v5, :cond_f

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    if-ne v4, v8, :cond_f

    invoke-virtual {v3, v11}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1, v11}, Landroid/view/Window;->setType(I)V

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPreviousBixbyStatus:I

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showH change window type to SEM_TYPE_BIXBY_CLIENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_0
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->sIsDexMode:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDefaultVolumeControlSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_d
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v4, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isInLockScreen()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onShowLockScreenDialog()Z

    move-result v2

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsScrollFinished:Z

    if-eqz v2, :cond_e

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v7, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v4, v8}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    :cond_e
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_f
    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPreviousBixbyStatus:I

    if-eq v4, v5, :cond_c

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    if-nez v4, :cond_c

    invoke-virtual {v3, v10}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1, v10}, Landroid/view/Window;->setType(I)V

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPreviousBixbyStatus:I

    sget-object v4, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showH change window type to TYPE_VOLUME_OVERLAY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_10
    const/4 v0, 0x0

    goto :goto_1

    :cond_11
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v4}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    goto :goto_2
.end method

.method private showSafetyWarningH(I)V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x1

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    const/high16 v7, 0x10000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "SafetyWarning dismissed by FLAG_DISMISS_UI_WARNINGS"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v8

    :goto_0
    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-eq v7, v12, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_5

    :cond_4
    :goto_1
    monitor-exit v8

    return-void

    :cond_5
    :try_start_2
    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "show warning popup on the s view cover and than return"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->sendCoverWarningMsgIntent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_6
    :try_start_3
    new-instance v7, Lcom/android/systemui/volume/SecVolumeDialog$15;

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v10}, Lcom/android/systemui/volume/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v10

    invoke-direct {v7, p0, v9, v10}, Lcom/android/systemui/volume/SecVolumeDialog$15;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    if-ne v7, v11, :cond_9

    const/16 v7, 0x96e

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v7, :cond_c

    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v7}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v7, :cond_8

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-eq v7, v12, :cond_8

    sget-object v7, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Show warning popup on the s view cover"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/4 v9, 0x6

    if-ne v7, v9, :cond_d

    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f0401c4

    invoke-direct {v5, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "visibility"

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "type"

    const-string/jumbo v9, "volume"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "remote"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v7, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v7, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v7, 0x7f130552

    invoke-virtual {v5, v7, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f130553

    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsShowingSCoverWarning:Z

    :cond_8
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v8

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    goto/16 :goto_0

    :cond_9
    :try_start_4
    iget-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-nez v7, :cond_a

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v7, v12, :cond_b

    :cond_a
    const/16 v7, 0x7e4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_2

    :cond_b
    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_2

    :cond_c
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    goto/16 :goto_3

    :cond_d
    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    if-ne v7, v12, :cond_e

    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f0401c3

    invoke-direct {v5, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_e
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f0401c2

    invoke-direct {v5, v7, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4
.end method

.method private showSmartViewMuteToast()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewMuteToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const v4, 0x7f0f05da

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewMuteToast:Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewMuteToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showSmartViewTouchToast()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewTouchToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const v4, 0x7f0f05d9

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewTouchToast:Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSmartViewTouchToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showVolumeDnDToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0f07a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeDnDToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showVolumeLimiterDialog()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f05d4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f05d5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$18;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    const v3, 0x7f0f05d7

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/systemui/volume/SecVolumeDialog$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumeDialog$19;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mBixbyStatus:I

    if-ne v2, v4, :cond_2

    const/16 v2, 0x96e

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/volume/SecVolumeDialog$20;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/SecVolumeDialog$20;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x7e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private stopSoundH()V
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private themeChanged()V
    .locals 4

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "themeChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->initDialog()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateTintColor()V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private trimObsoleteH()V
    .locals 4

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateDefaultTintColor()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDefaultTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0124

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0125

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0126

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b012b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockDefaultColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b012c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonDefaultColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    iget-wide v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_1
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v6, :cond_1

    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_0

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

    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0d0363

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 8

    const/4 v5, 0x2

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateExpandButtonH"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string/jumbo v4, "rotation"

    new-array v5, v5, [F

    aput v6, v5, v2

    aput v7, v5, v3

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0f05b4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const-string/jumbo v4, "rotation"

    new-array v5, v5, [F

    aput v7, v5, v2

    aput v6, v5, v3

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_1

    :cond_5
    const v1, 0x7f0f05b3

    goto :goto_2
.end method

.method private updateExpandedWindowHeightH()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v5}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, -0x2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-le v5, v1, :cond_2

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v5, v1

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScrollableDistance:I

    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsScrollFinished:Z

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
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

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iput v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mScrollableDistance:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsScrollFinished:Z

    goto :goto_1
.end method

.method private updateLockScreenVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLockScreenVolumeRowH s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ss.level : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", row.lastAudibleLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", row.ss.muted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-lez v3, :cond_3

    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    :cond_3
    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v3, -0x1

    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    :cond_4
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsSafeMediaVolumeDeviceOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v3, :cond_7

    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->updateLockScreenVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    sget-object v3, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsSafeMediaVolumeDeviceOnForMultiSound : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    iget v2, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    goto :goto_2
.end method

.method private updateLockScreenVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V
    .locals 5

    const/16 v4, 0xb

    const/4 v3, 0x3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v0, p2, 0x64

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setDualColorSeekbarforLockScreen(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v4, :cond_3

    :cond_0
    move v0, p2

    :cond_1
    :goto_0
    if-eq v1, v0, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v2, :cond_5

    :cond_4
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v2, :cond_1

    :cond_5
    mul-int/lit8 v0, p2, 0x6a

    goto :goto_0
.end method

.method private updateRowsH()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateRowsH"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->trimObsoleteH()V

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v8, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

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

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    :cond_4
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-ne v3, v8, :cond_d

    const/4 v0, 0x1

    :goto_1
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    const/16 v10, 0xa

    if-ne v8, v10, :cond_6

    if-eqz v0, :cond_e

    :cond_6
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    const/16 v10, 0xb

    if-ne v8, v10, :cond_7

    if-eqz v0, :cond_11

    :cond_7
    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v5

    if-eqz v0, :cond_13

    iput v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVisibleRowIndex:I

    :cond_8
    :goto_3
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    if-eqz v8, :cond_9

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V

    :cond_9
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    if-eqz v8, :cond_b

    :cond_a
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v10

    if-eqz v5, :cond_14

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    :goto_4
    invoke-static {v10, v8}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    if-eqz v0, :cond_b

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setAlpha(F)V

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v8, :cond_5

    if-eqz v5, :cond_5

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    :cond_c
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0d0360

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_e
    sget-boolean v8, Lcom/android/systemui/volume/VolumeDialogController;->mIsDLNAStatus:Z

    if-nez v8, :cond_f

    sget-boolean v8, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->semGetScreenSharingStatus()I

    move-result v8

    const/4 v10, 0x7

    if-eq v8, v10, :cond_10

    :cond_f
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v14}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    :cond_10
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    :cond_11
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    if-eqz v8, :cond_12

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v14}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    :cond_12
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamImportantH(IZ)V

    goto/16 :goto_2

    :cond_13
    if-eqz v5, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_14
    move v8, v9

    goto/16 :goto_4

    :cond_15
    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-nez v8, :cond_17

    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mRowHeight:I

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget-boolean v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v8, :cond_16

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v2, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v8}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v13, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v7, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_16
    :goto_5
    iput-boolean v9, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStreamChanged:Z

    return-void

    :cond_17
    iget v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAfterHeight:I

    goto :goto_5
.end method

.method private updateTintColor()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0116

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconActiveColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b011d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b011e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x1060141

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x1060142

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x106013d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x106013c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mProgressBgColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0117

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconMutedColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateVolumeRowFocusable(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsTalkbackEnabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    goto :goto_0
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    if-nez v26, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    sget-boolean v29, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v29, :cond_2

    sget-object v29, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "updateVolumeRowH s="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ", ss.level : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ", row.lastAudibleLevel : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ", row.ss.muted : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v31

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v29, v0

    if-lez v29, :cond_3

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    :cond_3
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v29, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/16 v29, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    const/16 v21, 0x1

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    const/16 v17, 0x1

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    const/16 v24, 0x1

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    const/4 v15, 0x1

    :goto_3
    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    const/16 v22, 0x1

    :goto_4
    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    const/16 v18, 0x1

    :goto_5
    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    const/16 v25, 0x1

    :goto_6
    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v29, v0

    if-nez v29, :cond_19

    const/16 v20, 0x1

    :goto_7
    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v29, v0

    if-nez v29, :cond_1b

    const/16 v16, 0x1

    :goto_8
    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v29, v0

    if-nez v29, :cond_1d

    const/16 v23, 0x1

    :goto_9
    if-eqz v21, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1f

    const/16 v19, 0x1

    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    if-eqz v29, :cond_21

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_22

    const/4 v12, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_24

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_23

    const/4 v14, 0x1

    :goto_c
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v15, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    sget-object v29, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "mIsSafeMediaVolumeDeviceOn : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/bluetooth/BluetoothA2dp;->semGetActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-eqz v13, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x7f0f05d8

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    :cond_5
    :goto_d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v29, v0

    if-nez v29, :cond_2e

    move-object/from16 v0, v26

    iget-boolean v10, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    if-eqz v29, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v30

    if-eqz v10, :cond_2f

    const/16 v29, 0x0

    :goto_f
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_10
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v30

    if-eqz v10, :cond_31

    const/high16 v29, 0x3f800000    # 1.0f

    :goto_11
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-nez v22, :cond_7

    if-eqz v18, :cond_32

    :cond_7
    const v11, 0x1080a18

    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    move/from16 v0, v29

    if-eq v11, v0, :cond_8

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_8
    const v29, 0x1080a18

    move/from16 v0, v29

    if-ne v11, v0, :cond_37

    const/16 v29, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set11(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    :goto_13
    const/4 v10, 0x0

    if-eqz v10, :cond_41

    if-eqz v21, :cond_3e

    if-eqz v22, :cond_3c

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v32, v31, v33

    const v32, 0x7f0f05c8

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_14
    if-nez v18, :cond_9

    if-eqz v16, :cond_42

    :cond_9
    move v9, v14

    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0xa

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    sget-boolean v29, Lcom/android/systemui/volume/VolumeDialogController;->mIsDLNAStatus:Z

    if-nez v29, :cond_a

    sget-boolean v29, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v29, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-virtual/range {v29 .. v30}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v29

    if-nez v29, :cond_b

    const/4 v9, 0x0

    :cond_b
    if-nez v9, :cond_43

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    const v30, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_c
    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    if-nez v20, :cond_44

    if-nez v22, :cond_44

    if-eqz v21, :cond_44

    :cond_d
    if-eqz v12, :cond_45

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v29, v0

    add-int/lit8 v28, v29, 0x1

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->refreshIconTintColor(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v9, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0f05d2

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    const v30, 0x7f130561

    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0f05d3

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDefaultVolumeControlView:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    const v30, 0x7f130562

    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v29

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    move/from16 v29, v0

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0f07a8

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogDndView:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    const v30, 0x7f130565

    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog;->updateVolumeRowforZenModeH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    :cond_e
    return-void

    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_2

    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_14
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_17
    const/16 v25, 0x0

    goto/16 :goto_6

    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_6

    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_1a
    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_1c
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_1d
    const/16 v23, 0x0

    goto/16 :goto_9

    :cond_1e
    const/16 v23, 0x0

    goto/16 :goto_9

    :cond_1f
    const/16 v19, 0x0

    goto/16 :goto_a

    :cond_20
    const/16 v19, 0x0

    goto/16 :goto_a

    :cond_21
    const/4 v12, 0x1

    goto/16 :goto_b

    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_23
    const/4 v14, 0x0

    goto/16 :goto_c

    :cond_24
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_25

    const/4 v14, 0x1

    goto/16 :goto_c

    :cond_25
    const/4 v14, 0x0

    goto/16 :goto_c

    :cond_26
    if-eqz v6, :cond_27

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    :cond_27
    sget-object v29, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "mBTDeviceName = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTDeviceName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_d

    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0xa

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2a

    sget-boolean v29, Lcom/android/systemui/volume/VolumeDialogController;->mIsDLNAStatus:Z

    if-nez v29, :cond_29

    sget-boolean v29, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v29, :cond_5

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_d

    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v29, v0

    if-eqz v29, :cond_2b

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0xb

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    sget-object v29, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "mIsSafeMediaVolumeDeviceOnForMultiSound : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPinDevice:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    move-result-object v3

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_d

    :cond_2b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v29

    if-nez v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHfp:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v29

    if-eqz v29, :cond_2c

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBtScoDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    sget-object v29, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "mBTScoDeviceName = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mBTScoDeviceName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_d

    :cond_2e
    const/4 v10, 0x1

    goto/16 :goto_e

    :cond_2f
    const/16 v29, 0x1

    goto/16 :goto_f

    :cond_30
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_10

    :cond_31
    const/high16 v29, 0x3f000000    # 0.5f

    goto/16 :goto_11

    :cond_32
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v29, v0

    if-eqz v29, :cond_33

    const v11, 0x10809f9

    goto/16 :goto_12

    :cond_33
    if-nez v20, :cond_34

    if-nez v16, :cond_34

    if-nez v19, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v29, v0

    if-eqz v29, :cond_35

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v29, v0

    if-nez v29, :cond_35

    :cond_34
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    goto/16 :goto_12

    :cond_35
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v29, v0

    if-nez v29, :cond_34

    :cond_36
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v11

    goto/16 :goto_12

    :cond_37
    const v29, 0x10809fd

    move/from16 v0, v29

    if-eq v11, v0, :cond_38

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get9(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    move/from16 v0, v29

    if-ne v11, v0, :cond_39

    :cond_38
    const/16 v29, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set11(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    goto/16 :goto_13

    :cond_39
    const v29, 0x10809f9

    move/from16 v0, v29

    if-eq v11, v0, :cond_3a

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v29

    move/from16 v0, v29

    if-ne v11, v0, :cond_3b

    :cond_3a
    const/16 v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set11(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    goto/16 :goto_13

    :cond_3b
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set11(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    goto/16 :goto_13

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v29

    if-eqz v29, :cond_3d

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v32, v31, v33

    const v32, 0x7f0f05c9

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    :cond_3d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v32, v31, v33

    const v32, 0x7f0f05ca

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    :cond_3e
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v29, v0

    if-nez v29, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    move/from16 v29, v0

    if-eqz v29, :cond_40

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v29, v0

    if-nez v29, :cond_40

    :cond_3f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v32, v31, v33

    const v32, 0x7f0f05c8

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    :cond_40
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v32, v31, v33

    const v32, 0x7f0f05ca

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    :cond_41
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    :cond_42
    if-nez v25, :cond_9

    if-nez v23, :cond_9

    const/4 v9, 0x1

    goto/16 :goto_15

    :cond_43
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v29

    if-nez v29, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_16

    :cond_44
    const/16 v28, 0x0

    goto/16 :goto_17

    :cond_45
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v28, v0

    goto/16 :goto_17
.end method

.method private updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v0, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    if-eqz v2, :cond_3

    move v1, v0

    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get3(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set3(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;ZI)V
    .locals 12

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-ne p1, v6, :cond_5

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->isVisibleH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v5

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v6, :cond_1

    :cond_0
    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setDualColorSeekbar(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->isExtraButtonOn()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Call setMode(ProgressBar.MODE_WARNING)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->semSetMode(I)V

    :cond_4
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsTalkbackEnabled:Z

    if-eqz v6, :cond_8

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get19(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_9

    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->semSetMode(I)V

    goto :goto_2

    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_a

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_c

    :cond_a
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I

    move-result v2

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_e

    const/4 v0, 0x1

    :goto_5
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v6, :cond_f

    if-eqz v5, :cond_f

    if-eqz v0, :cond_f

    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "inGracePeriod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_c
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_d

    move v2, v4

    goto :goto_4

    :cond_d
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v2

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    :cond_f
    if-ne p3, v2, :cond_10

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v6, :cond_10

    if-eqz v5, :cond_10

    return-void

    :cond_10
    mul-int/lit8 v3, p3, 0x64

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_11

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_13

    :cond_11
    move v3, p3

    :cond_12
    :goto_6
    if-eq v4, v3, :cond_18

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v6, :cond_1a

    if-eqz v5, :cond_1a

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get1(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    if-ne v6, v3, :cond_17

    return-void

    :cond_13
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_11

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_14

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_12

    :cond_14
    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mEarProtectLimit:I

    add-int/lit8 v6, v6, -0x1

    if-ne p3, v6, :cond_12

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_15

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOn:Z

    if-nez v6, :cond_16

    :cond_15
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_12

    iget-boolean v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafeMediaVolumeDeviceOnForMultiSound:Z

    if-eqz v6, :cond_12

    :cond_16
    mul-int/lit8 v3, p3, 0x6a

    goto :goto_6

    :cond_17
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v6, :cond_19

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

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_7
    invoke-static {p1, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set1(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    :cond_18
    :goto_8
    return-void

    :cond_19
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_7

    :cond_1a
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_1b

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1b
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_8
.end method

.method private updateVolumeRowforZenModeH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mZenMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->setRowDisableMode(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    goto :goto_0

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

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d0241

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-le v3, v2, :cond_0

    move v3, v2

    :cond_0
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumeDialog;->M_LATTE:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d03e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_2

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

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCurrentWindowWidth:I

    :cond_3
    return-void

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d03e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d03e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d03e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected dismissH(I)V
    .locals 9

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

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

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mHardwareAccelerated:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mPrevSystemRendererDisabled:Z

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_5

    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SafetyWarning dismiss cancelled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    if-ne p1, v3, :cond_7

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mVolumeLimiterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    return-void

    :cond_5
    :try_start_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SafetyWarning dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    sget-object v0, Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    iput-boolean v7, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eq p1, v4, :cond_b

    const/16 v0, 0x9

    if-ne p1, v0, :cond_f

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDialog:Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissLockScreenDialog()V

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->initTrackingValues()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->setStreamTypeForLogging(I)V

    const-string/jumbo v1, "com.android.systemui.volume"

    const-string/jumbo v2, "FWVP"

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExtraForRingerMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->isChangedFromKey()Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/16 v4, 0x3e8

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialog;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x20

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0f05cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v8, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v7}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    return-void

    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->onDismissLockScreenDialog()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$14;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_10
    const-wide/16 v4, 0x0

    goto :goto_3
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

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

    const-string/jumbo v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mExpandButtonAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButtonAnimationRunning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mCollapseTime: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mCollapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAccessibility:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-get0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialog;->computeTimeoutH()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

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

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mAutomute:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setShowHeaders(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mShowHeaders:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    return-void
.end method
