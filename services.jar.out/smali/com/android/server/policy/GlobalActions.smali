.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$10;,
        Lcom/android/server/policy/GlobalActions$11;,
        Lcom/android/server/policy/GlobalActions$12;,
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;,
        Lcom/android/server/policy/GlobalActions$6;,
        Lcom/android/server/policy/GlobalActions$7;,
        Lcom/android/server/policy/GlobalActions$8;,
        Lcom/android/server/policy/GlobalActions$9;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$BugReportAction;,
        Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/server/policy/GlobalActions$ExtractColor;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$RebootAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$UIUpdateHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BIXBY_GLOBAL_ACTIONS:Ljava/lang/String; = "com.intent.action.BIXBY_GLOBAL_ACTIONS"

.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final FORCE_RESTART_TIME:I = 0x7

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_SUBSCREEN:Ljava/lang/String; = "subscreen"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_CONFIRM_LANDSCAPE:I = 0x9

.field private static final MESSAGE_HIDE_CONFIRM_PORTRAIT:I = 0x8

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_ONCLICK_ITEM_WITH_BIXBY:I = 0xb

.field private static final MESSAGE_ONCLICK_WITH_FMMLOCK:I = 0xa

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final MESSAGE_SHOW_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_SHOW_CONFIRM_PORTRAIT:I = 0x6

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SIM_CDMA:I = 0x0

.field private static final SIM_GSM:I = 0x1

.field private static final SURVEY_LOG:Z

.field static SelectedItem:Landroid/view/View; = null

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final TW_GLOBALACTIONS_MSG_DELAY:I = 0x96

.field private static final isForceRestartSupport:Z

.field static mAccessibiltyShortcutEnabled:Z

.field private static mBugReportStatusViewColorWhite:I

.field private static mClearCoverWidth:I

.field private static mCountyCode:Ljava/lang/String;

.field private static mCoverViewListView:Landroid/widget/ListView;

.field static mCurrentDensity:I

.field private static mHasVibrator:Z

.field private static mIsAirplaneConfirmDialogExist:Z

.field private static mIsBugReportEnable:Z

.field private static mIsCancelEnable:Z

.field private static mIsClearCover:Z

.field private static mIsConfirmDlg:Z

.field private static mIsConfirmLandDlg:Z

.field private static mIsCoverOpen:Z

.field private static mIsFirstCreated:Z

.field private static mIsMiniCoverOpened:Z

.field private static mIsMiniDialogMode:Z

.field private static mIsSafemodeSupport:Z

.field static mIsSelectedItemTagForSecure:I

.field private static mMessageViewColorWhite:I

.field private static mNewFeatureForM:Z

.field private static mNewFeatureForMListView:Landroid/widget/ListView;

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static final mProductName:Ljava/lang/String;

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSViewCoverHeight:I

.field private static mSViewCoverWidth:I

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field public static mSilentModeView:Landroid/view/View;

.field private static mStatusHeight:I

.field private static mStatusViewColorWhite:I

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsNeedWhiteTheme:Z

.field private static sIsSafeModeEnabled:Z

.field private static sIsSecondConfirming:Z

.field static sIsSelectedItemTagForBixby:I

.field private static sSupportBlackWhiteTheme:Z


# instance fields
.field final DO_NOT_MOVE:I

.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field current_x:F

.field current_x_land:F

.field current_y:F

.field current_y_land:F

.field displayheight:I

.field displaywidth:I

.field private isDataToggleSupport:Z

.field isShopDemo:Z

.field private isVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mAirplaneStringId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mBikeModeDialog:Landroid/app/AlertDialog;

.field private mBikeModeObserver:Landroid/database/ContentObserver;

.field mBikeModeStringId:I

.field private mBixbyReceiver:Landroid/content/BroadcastReceiver;

.field mBottomViewDoubleItemWidth:I

.field mBottomViewSingleCancelItemWidth:I

.field mBottomViewSingleItemHeight:I

.field mBottomViewSingleItemWidth:I

.field private mBottomlayout:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field mColorHSV:[F

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

.field mConfirmPowerOffIconResId:I

.field mConfirmRestartIconResId:I

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentBG:Landroid/graphics/Bitmap;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mDataNetworkIconResId:I

.field private mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mDataNetworkStringId:I

.field private mDescriptionlayout:Landroid/widget/LinearLayout;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mEmergencyIconResId:I

.field private mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mEmergencyStringId:I

.field private mForceRestartlayout:Landroid/widget/LinearLayout;

.field private mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

.field private mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsDisableConfirm:Z

.field private mIsItemLongpressed:Z

.field private mIsScreenOFF:Z

.field private mIsSecureKeyguard:Z

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field mIsSupportedBlur:Z

.field private mIsWaitingForEcmExit:Z

.field mItemConfirmMessageWidth:I

.field mItemDivider:I

.field mItemDividerLand:I

.field mItemHeight:I

.field mItemHeightWithStatus:I

.field mItemLandscapeDivider:I

.field mItemMaxWidth:I

.field mItemMaxWidthLand:I

.field mItemPortraitDivider:I

.field mItemPortraitDividerOverFour:I

.field mItemPortraitDividerSViewCover:I

.field mItemWidth:I

.field mItemWidthLand:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private mLDUWarning:Ljava/lang/String;

.field private mLandscapeLinearLayout:Landroid/widget/LinearLayout;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field mMessageViewPaddingBottom:I

.field mMessageViewPaddingTop:I

.field private mPhoneCount:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPowerOffIconResId:I

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field private mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field mRestartIconResId:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field mSafeModeIconResId:I

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSecondAnimatedText:Landroid/widget/TextView;

.field private mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedItemNumbyBixby:I

.field private mShowNavigationBar:Z

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private mTempStringArray:[Ljava/lang/String;

.field private mTrueStringArray:[Ljava/lang/String;

.field private mUnableAirplanemode:Ljava/lang/String;

.field private mUnableEmergencyforFMM:Ljava/lang/String;

.field private mUnablePowerOff:Ljava/lang/String;

.field private mUnablePowerOffForFMM:Ljava/lang/String;

.field private mUnablePowerOffForSecureLock:Ljava/lang/String;

.field private mUnableRestartForFMM:Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private powermanager:Landroid/os/PowerManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get12()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -get27()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic -get28()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    return v0
.end method

.method static synthetic -get29()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get30()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return v0
.end method

.method static synthetic -get31()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic -get32(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsItemLongpressed:Z

    return v0
.end method

.method static synthetic -get33()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return v0
.end method

.method static synthetic -get34()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return v0
.end method

.method static synthetic -get35()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    return v0
.end method

.method static synthetic -get36(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get39(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/server/policy/GlobalActions;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get42(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get44(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get45(Lcom/android/server/policy/GlobalActions;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic -get46()I
    .locals 1

    sget v0, Lcom/android/server/policy/GlobalActions;->mMessageViewColorWhite:I

    return v0
.end method

.method static synthetic -get47()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    return v0
.end method

.method static synthetic -get48()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get49(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get50()Landroid/app/AlertDialog$Builder;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic -get51(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/knox/custom/ProKioskManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    return-object v0
.end method

.method static synthetic -get52()I
    .locals 1

    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic -get53()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic -get54(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get55()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get56()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get57(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic -get58()I
    .locals 1

    sget v0, Lcom/android/server/policy/GlobalActions;->mStatusViewColorWhite:I

    return v0
.end method

.method static synthetic -get59(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get60(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get61(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get62(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get63(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get64(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get65(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get66(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic -get67(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get68()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get69()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get70()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    return v0
.end method

.method static synthetic -get71()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic -get72()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set10(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return p0
.end method

.method static synthetic -set11(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set15(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic -set16(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic -set18(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic -set19(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set20(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set5(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic -set6(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return p0
.end method

.method static synthetic -set7(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return p0
.end method

.method static synthetic -set8(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsItemLongpressed:Z

    return p1
.end method

.method static synthetic -set9(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "i"    # I
    .param p3, "isPort"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1
    .param p1, "itemResID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isActionAvailable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/GlobalActions;I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .param p3, "Arg"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isPort"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 0
    .param p1, "action"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/GlobalActions;->confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ac"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p3, "needFMMlockCheck"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->confirmedAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/GlobalActions;I)V
    .locals 0
    .param p1, "itemResID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->doActionByBixby(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "isOnClick"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "isOnClick"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onToggleDatamode()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isPort"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->performItemLongClickForSafemode(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "whichItem"    # I
    .param p2, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1
    .param p1, "slotidx"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isUSA()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    .line 269
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 270
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 271
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    .line 272
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    .line 273
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    .line 274
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Framework_SupportRebootWithSafemode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    .line 302
    sput v1, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    .line 304
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    .line 305
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 306
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    .line 312
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    .line 313
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    .line 314
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    .line 320
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 323
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForMListView:Landroid/widget/ListView;

    .line 340
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    .line 341
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    .line 344
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    .line 345
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    .line 348
    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 349
    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    .line 350
    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    .line 351
    sput v1, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    .line 352
    sput v1, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    .line 354
    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    .line 355
    const-string/jumbo v2, "ro.build.scafe.shot"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mScafeShot:Ljava/lang/String;

    .line 356
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mProductName:Ljava/lang/String;

    .line 357
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    .line 358
    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    .line 368
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->isForceRestartSupport:Z

    .line 373
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    .line 387
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 390
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    .line 404
    const-string/jumbo v2, "americano"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mocha"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    .line 405
    sput v1, Lcom/android/server/policy/GlobalActions;->mCurrentDensity:I

    .line 443
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 444
    sput-object v4, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 446
    sput v1, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    .line 447
    sput v1, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    .line 458
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    .line 462
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    .line 463
    sput v1, Lcom/android/server/policy/GlobalActions;->mMessageViewColorWhite:I

    .line 464
    sput v1, Lcom/android/server/policy/GlobalActions;->mStatusViewColorWhite:I

    .line 466
    sput v1, Lcom/android/server/policy/GlobalActions;->mBugReportStatusViewColorWhite:I

    .line 5288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const v7, 0x112006a

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 267
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 276
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 278
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 279
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 285
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 292
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    .line 300
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 301
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    .line 303
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 316
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 321
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 324
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    .line 325
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    .line 326
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 327
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .line 328
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 329
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 330
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 331
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    .line 332
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    .line 333
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 334
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    .line 335
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    .line 337
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 338
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverColor:I

    .line 342
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 360
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    .line 361
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    .line 362
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 372
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 380
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    .line 381
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    .line 383
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 384
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    .line 385
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v4, "temp"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    .line 386
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v4, "true"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    .line 393
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 394
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    .line 395
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    .line 396
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    .line 397
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    .line 398
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    .line 400
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    .line 406
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    .line 407
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    .line 408
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    .line 409
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    .line 410
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    .line 411
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    .line 412
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x:F

    .line 413
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 414
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    .line 415
    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    .line 416
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    .line 417
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    .line 418
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    .line 419
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    .line 420
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    .line 421
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    .line 422
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    .line 423
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    .line 424
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    .line 425
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    .line 426
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    .line 427
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    .line 428
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    .line 429
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    .line 430
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemConfirmMessageWidth:I

    .line 431
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    .line 432
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    .line 433
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mSafeModeIconResId:I

    .line 434
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    .line 435
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    .line 436
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    .line 437
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    .line 438
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    .line 439
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    .line 440
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    .line 441
    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    .line 442
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    .line 445
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    .line 448
    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->DO_NOT_MOVE:I

    .line 449
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 450
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    .line 451
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    .line 452
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    .line 453
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForSecureLock:Ljava/lang/String;

    .line 454
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    .line 455
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    .line 459
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowNavigationBar:Z

    .line 460
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCurrentBG:Landroid/graphics/Bitmap;

    .line 461
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    .line 465
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsItemLongpressed:Z

    .line 925
    new-instance v1, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 3581
    new-instance v1, Lcom/android/server/policy/GlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3587
    new-instance v1, Lcom/android/server/policy/GlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3604
    new-instance v1, Lcom/android/server/policy/GlobalActions$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4581
    new-instance v1, Lcom/android/server/policy/GlobalActions$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4633
    new-instance v1, Lcom/android/server/policy/GlobalActions$6;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    .line 4646
    new-instance v1, Lcom/android/server/policy/GlobalActions$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    .line 4750
    new-instance v1, Lcom/android/server/policy/GlobalActions$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 4764
    new-instance v1, Lcom/android/server/policy/GlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4806
    new-instance v1, Lcom/android/server/policy/GlobalActions$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 4822
    new-instance v1, Lcom/android/server/policy/GlobalActions$11;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 4829
    new-instance v1, Lcom/android/server/policy/GlobalActions$12;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    .line 4870
    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 5300
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    .line 473
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 475
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 476
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 478
    const-string/jumbo v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 477
    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 482
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 483
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    .line 491
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 490
    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    .line 492
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 494
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->powermanager:Landroid/os/PowerManager;

    .line 496
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 498
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 502
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 504
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "bikemode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "globalaction"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 504
    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 507
    const-string/jumbo v4, "isBikeMode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    .line 506
    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 508
    const v1, 0x10408a5

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 511
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    .line 513
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 514
    const v4, 0x1120084

    .line 513
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    .line 518
    const-string/jumbo v1, "TMB"

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    .line 525
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowNavigationBar:Z

    .line 528
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    .line 530
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->registerBixbyReceiver()V

    .line 531
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->initStrings()V

    .line 532
    invoke-direct {p0, v3}, Lcom/android/server/policy/GlobalActions;->initValueForCreate(Z)V

    .line 471
    return-void

    :cond_2
    move v1, v2

    .line 511
    goto :goto_0

    :cond_3
    move v1, v3

    .line 513
    goto :goto_1
.end method

.method private actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 9
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isPort"    # Z

    .prologue
    const/4 v8, 0x1

    .line 2390
    move-object v0, p1

    .line 2391
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    move-object v4, p2

    .line 2392
    .local v4, "tempView":Landroid/view/View;
    const v6, 0x10203d9

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 2394
    .local v5, "v":Landroid/widget/FrameLayout;
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 2395
    :cond_0
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 2397
    :cond_1
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2398
    .local v1, "imageView":Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2399
    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0x10203d7

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2401
    .local v3, "statusView":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2402
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/GlobalActions;->isActionAvailable(I)Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 2403
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    .line 2406
    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 2408
    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    if-nez v6, :cond_4

    invoke-direct {p0, v5}, Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p3, :cond_4

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    if-eqz v6, :cond_6

    .line 2410
    :cond_4
    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    if-nez v6, :cond_5

    invoke-direct {p0, v5}, Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p3, :cond_7

    .line 2413
    :cond_5
    invoke-direct {p0, p2, p1, v8}, Lcom/android/server/policy/GlobalActions;->confirmedAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    .line 2389
    :goto_0
    return-void

    .line 2409
    :cond_6
    invoke-direct {p0, p2, v8}, Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V

    goto :goto_0

    .line 2410
    :cond_7
    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    if-nez v6, :cond_5

    .line 2411
    invoke-direct {p0, p2, v8}, Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
    .locals 8
    .param p1, "iconDraw"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "messageChars"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2980
    .local p5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2981
    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/GlobalActions$38;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$38;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    .line 2980
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .locals 2
    .param p1, "valueToCheck"    # I
    .param p2, "actionToAdd"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p4, "ifEnabledMoveIncrementPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/policy/GlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 2967
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2968
    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string/jumbo v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    .line 2969
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2970
    if-eqz p4, :cond_0

    .line 2971
    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    .line 2973
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2976
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3374
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 3375
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3376
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 3377
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 3378
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3379
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3380
    if-nez v6, :cond_2

    .line 3381
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    :goto_1
    const/4 v7, 0x1

    .line 3382
    .local v7, "isCurrentUser":Z
    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3384
    :goto_3
    new-instance v0, Lcom/android/server/policy/GlobalActions$43;

    .line 3386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3387
    if-eqz v7, :cond_5

    const-string/jumbo v1, " \u2714"

    .line 3386
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3385
    const v2, 0x108044c

    move-object v1, p0

    .line 3384
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$43;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 3410
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3381
    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v7    # "isCurrentUser":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isCurrentUser":Z
    goto :goto_2

    .end local v7    # "isCurrentUser":Z
    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 3383
    .restart local v7    # "isCurrentUser":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 3386
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v1, "Primary"

    goto :goto_4

    .line 3387
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_5

    .line 3373
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "isCurrentUser":Z
    .end local v9    # "user$iterator":Ljava/util/Iterator;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    return-void
.end method

.method private adjustForceRestartView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5826
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->isForceRestartSupport:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v3, :cond_4

    .line 5827
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v4, 0x10203cd

    invoke-virtual {v3, v4}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 5828
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v4, 0x10203ce

    invoke-virtual {v3, v4}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5829
    .local v2, "tvForceRestartMessage":Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowNavigationBar:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 5830
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5831
    .local v1, "naviBarHeight":I
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-nez v3, :cond_1

    .line 5832
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v6, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5835
    .end local v1    # "naviBarHeight":I
    :cond_1
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 5836
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060153

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5838
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x1040141

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5839
    .local v0, "forceRestartString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 5840
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5842
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 5843
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5825
    .end local v0    # "forceRestartString":Ljava/lang/String;
    .end local v2    # "tvForceRestartMessage":Landroid/widget/TextView;
    :cond_4
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 2

    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6321
    if-nez p1, :cond_0

    .line 6322
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v5, "captureScreen() : mContext is NULL!!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6323
    const/4 v0, 0x0

    return-object v0

    .line 6327
    :cond_0
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6328
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 6330
    .local v10, "mDisplay":Landroid/view/Display;
    invoke-virtual {v10, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 6333
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 6334
    .local v13, "screenWidth":I
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 6337
    .local v12, "screenHeight":I
    move v1, v13

    .line 6338
    .local v1, "lcdWidth":I
    move v2, v12

    .line 6340
    .local v2, "lcdHeight":I
    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 6341
    .local v7, "currentRotation":I
    packed-switch v7, :pswitch_data_0

    .line 6353
    :goto_0
    :pswitch_0
    const/4 v11, 0x0

    .line 6354
    .local v11, "screenBitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0x4e20

    .line 6355
    .local v3, "minLayer":I
    const v4, 0x30d40

    .line 6358
    .local v4, "maxLayer":I
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 6363
    .end local v11    # "screenBitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v11, :cond_1

    .line 6364
    const-string/jumbo v0, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureScreen : Could not capture the screen! screenBitmap == null, lcdWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lcdHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6365
    const/4 v0, 0x0

    return-object v0

    .line 6344
    .end local v3    # "minLayer":I
    .end local v4    # "maxLayer":I
    :pswitch_1
    move v1, v12

    .line 6345
    move v2, v13

    .line 6346
    goto :goto_0

    .line 6359
    .restart local v3    # "minLayer":I
    .restart local v4    # "maxLayer":I
    .restart local v11    # "screenBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 6360
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureScreen : failed to access screenshot API : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6368
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v11

    .line 6341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 4903
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4904
    const-string/jumbo v3, "airplane_mode_on"

    .line 4905
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 4902
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4908
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 4909
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4910
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4911
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4912
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4913
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/GlobalActions$44;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$44;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 4920
    const-wide/16 v4, 0x3e8

    .line 4913
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4929
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_1

    .line 4930
    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4901
    :cond_1
    return-void

    .line 4905
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 4923
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4924
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4925
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4926
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 4930
    :cond_4
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private checkAirplaneModeOnOff()V
    .locals 5

    .prologue
    .line 4885
    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "===== Start checkAirplaneModeOnOff ====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4889
    const-string/jumbo v2, "airplane_mode_on"

    .line 4890
    const/4 v3, 0x0

    .line 4887
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4890
    const/4 v2, 0x1

    .line 4887
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 4891
    .local v0, "airplaneModeOn":Z
    :goto_0
    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4894
    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4895
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4884
    return-void

    .line 4887
    .end local v0    # "airplaneModeOn":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "airplaneModeOn":Z
    goto :goto_0

    .line 4892
    :cond_1
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private clearCustomDialogItems()Z
    .locals 4

    .prologue
    .line 3027
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3028
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3029
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3030
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/GlobalActions$Action;

    .line 3031
    .local v1, "obj":Lcom/android/server/policy/GlobalActions$Action;
    instance-of v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_0

    .line 3032
    check-cast v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .end local v1    # "obj":Lcom/android/server/policy/GlobalActions$Action;
    iget-boolean v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_0

    .line 3033
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3027
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_1
    monitor-exit v3

    .line 3038
    const/4 v2, 0x1

    return v2
.end method

.method private clearSCoverRequestStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 5302
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    return-void

    .line 5303
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5304
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5305
    :cond_1
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5306
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5308
    .local v1, "sender":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_0

    .line 5310
    .end local v1    # "sender":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 5301
    return-void
.end method

.method private confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 21
    .param p1, "action"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    .line 3629
    const/4 v5, 0x0

    .line 3630
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v15, 0x0

    .line 3632
    .local v15, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v14, 0x0

    .line 3633
    .local v14, "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    const/4 v7, 0x0

    .line 3634
    .local v7, "dialog":Landroid/app/AlertDialog;
    const/16 v16, 0x0

    .line 3635
    .local v16, "positiveButtonStringId":I
    const/4 v3, 0x0

    .line 3636
    .local v3, "abuilder":Landroid/app/AlertDialog$Builder;
    const/4 v13, 0x0

    .line 3637
    .local v13, "isStateOff":Z
    const/4 v9, 0x0

    .line 3638
    .local v9, "isActionAirplaneModeOn":Z
    const/4 v12, 0x0

    .line 3639
    .local v12, "isSetAirplaneOnMessageVZW":Z
    const/4 v11, 0x0

    .line 3640
    .local v11, "isSetAirplaneOnMessageCHINA":Z
    const/4 v10, 0x0

    .line 3641
    .local v10, "isRunnigWithoutConfirmMessage":Z
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 3642
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 3643
    const v16, 0x1040630

    .line 3644
    const/4 v13, 0x1

    .line 3649
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 3650
    const/4 v9, 0x1

    .line 3651
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3658
    .end local v15    # "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    :goto_1
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_0

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_c

    .line 3668
    :cond_0
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_f

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_f

    .line 3669
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .end local v3    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x10304fa

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3673
    .local v3, "abuilder":Landroid/app/AlertDialog$Builder;
    :goto_2
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    :cond_1
    if-eqz v9, :cond_11

    if-eqz v13, :cond_11

    .line 3675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 3676
    const-string/jumbo v18, "layout_inflater"

    .line 3675
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 3677
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x1090142

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 3678
    .local v6, "content":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 3679
    const/4 v12, 0x1

    .line 3680
    const-string/jumbo v17, "GlobalActions"

    const-string/jumbo v18, "confirmDialog : set airplane mode on message for VZW"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :cond_2
    :goto_3
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3686
    const v17, 0x102050d

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 3687
    const v17, 0x102000b

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    .line 3688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3694
    .end local v6    # "content":Landroid/view/View;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 3695
    const v16, 0x10407bb

    .line 3709
    :goto_5
    move/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3710
    const v17, 0x1040009

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3711
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 3713
    .end local v3    # "abuilder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "dialog":Landroid/app/AlertDialog;
    .end local v14    # "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    :goto_6
    new-instance v17, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    .line 3715
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_3

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_16

    .line 3735
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 3736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3737
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v17, :cond_18

    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v17, :cond_18

    .line 3738
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x833

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 3745
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x112000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_4

    .line 3746
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 3748
    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3750
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->checkOnAirplaneConfirmShow()V

    .line 3751
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    move/from16 v17, v0

    if-nez v17, :cond_19

    if-nez v12, :cond_5

    if-eqz v11, :cond_19

    .line 3752
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    .line 3753
    const/4 v10, 0x1

    .line 3758
    :goto_8
    sget-boolean v17, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v17, :cond_6

    .line 3759
    const-string/jumbo v17, "GlobalActions"

    .line 3760
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "in confirmDialog action = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3762
    const-string/jumbo v19, " resON = "

    .line 3760
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3764
    const-string/jumbo v19, "resOFF = "

    .line 3760
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3766
    const-string/jumbo v19, " config_sf_slowBlur = "

    .line 3760
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 3768
    const v20, 0x112000d

    .line 3767
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 3760
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3769
    const-string/jumbo v19, " resTitle = "

    .line 3760
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3769
    const-string/jumbo v19, " mAirplaneModeOn = "

    .line 3760
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v19, v0

    .line 3760
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3770
    const-string/jumbo v19, " mDataModeToggle = "

    .line 3760
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v19, v0

    .line 3760
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3759
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 3774
    :cond_7
    :goto_9
    if-nez v10, :cond_8

    .line 3775
    sget-object v17, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v17

    .line 3776
    const/16 v18, 0x1

    :try_start_0
    sput-boolean v18, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v17

    .line 3628
    :cond_8
    return-void

    .line 3646
    .local v3, "abuilder":Landroid/app/AlertDialog$Builder;
    .restart local v7    # "dialog":Landroid/app/AlertDialog;
    .restart local v14    # "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    .restart local v15    # "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_9
    const v16, 0x104062f

    goto/16 :goto_0

    .line 3652
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 3653
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .local v15, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    goto/16 :goto_1

    .line 3655
    .local v15, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_b
    const-string/jumbo v17, "GlobalActions"

    const-string/jumbo v18, "Cannot find ClickListener."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3659
    .end local v15    # "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_c
    new-instance v17, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v18

    .line 3661
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v19, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    move/from16 v17, p3

    .line 3659
    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v18

    .line 3662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v19, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 3663
    const v17, 0x10407bb

    .line 3659
    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    .line 3666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    .line 3665
    const v19, 0x1040009

    .line 3659
    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v14

    .local v14, "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    goto/16 :goto_6

    .local v14, "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    :cond_d
    move/from16 v17, p4

    .line 3661
    goto :goto_a

    :cond_e
    move/from16 v17, v16

    .line 3664
    goto :goto_b

    .line 3671
    :cond_f
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .end local v3    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v3, "abuilder":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_2

    .line 3681
    .restart local v6    # "content":Landroid/view/View;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 3682
    const/4 v11, 0x1

    .line 3683
    const-string/jumbo v17, "GlobalActions"

    const-string/jumbo v18, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3691
    .end local v6    # "content":Landroid/view/View;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    move/from16 v17, p3

    :goto_c
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    :cond_12
    move/from16 v17, p4

    goto :goto_c

    .line 3697
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 3698
    const-string/jumbo v17, "VZW"

    sget-object v18, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 3699
    const v16, 0x104000a

    goto/16 :goto_5

    .line 3701
    :cond_14
    const v16, 0x1040630

    goto/16 :goto_5

    .line 3704
    :cond_15
    const v16, 0x104062f

    goto/16 :goto_5

    .line 3716
    .end local v3    # "abuilder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "dialog":Landroid/app/AlertDialog;
    .end local v14    # "mConfirmDialogSViewCover":Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
    :cond_16
    if-eqz v14, :cond_7

    .line 3717
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 3718
    const/16 v18, 0x833

    .line 3717
    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 3720
    const v18, 0x112000d

    .line 3719
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_17

    .line 3721
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 3722
    const/16 v18, 0x4

    .line 3721
    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 3724
    :cond_17
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 3726
    .local v4, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3727
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3728
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3729
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 3730
    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->show()V

    .line 3731
    const-string/jumbo v17, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 3732
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    goto/16 :goto_9

    .line 3742
    .end local v4    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x96b

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_7

    .line 3755
    :cond_19
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 3775
    :catchall_0
    move-exception v18

    monitor-exit v17

    throw v18
.end method

.method private confirmedAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ac"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p3, "needFMMlockCheck"    # Z

    .prologue
    .line 2454
    const v8, 0x1020006

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2455
    .local v3, "imageView":Landroid/widget/ImageView;
    const v8, 0x102000b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2456
    .local v5, "messageView":Landroid/widget/TextView;
    const v8, 0x10203d7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2458
    .local v6, "statusView":Landroid/widget/TextView;
    move-object v0, p2

    .line 2460
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    if-eqz p3, :cond_0

    .line 2461
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/policy/GlobalActions;->isSecurePoweroff(I)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    .line 2464
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    .line 2466
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2467
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v8, v9, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-eq v8, v9, :cond_3

    .line 2468
    invoke-interface {p2}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 2469
    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v8, :cond_2

    .line 2472
    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v8, p1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    .line 2474
    :goto_0
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2453
    :goto_1
    return-void

    .line 2470
    :cond_2
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v8, p1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    goto :goto_0

    .line 2476
    :cond_3
    const/4 v4, 0x0

    .line 2477
    .local v4, "ll":Landroid/widget/LinearLayout;
    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v8, :cond_4

    sget-boolean v8, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v8, :cond_6

    .line 2480
    :cond_4
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v9, 0x10203c6

    invoke-virtual {v8, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ll":Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 2484
    .local v4, "ll":Landroid/widget/LinearLayout;
    :goto_2
    sget v8, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    if-eqz v8, :cond_7

    .line 2486
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v8}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 2487
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_5

    .line 2488
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2489
    .local v7, "tempView":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 2490
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2491
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2486
    .end local v7    # "tempView":Landroid/view/View;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2478
    .end local v2    # "i":I
    .local v4, "ll":Landroid/widget/LinearLayout;
    :cond_6
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v9, 0x10203c6

    invoke-virtual {v8, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "ll":Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .local v4, "ll":Landroid/widget/LinearLayout;
    goto :goto_2

    .line 2497
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2498
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2499
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string/jumbo v9, "alpha"

    const/16 v10, 0x99

    const/16 v11, 0xff

    filled-new-array {v10, v11}, [I

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2500
    .local v1, "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    .line 2501
    new-instance v8, Lcom/android/server/policy/GlobalActions$34;

    invoke-direct {v8, p0, p2}, Lcom/android/server/policy/GlobalActions$34;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;)V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 34

    .prologue
    .line 994
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    .line 998
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    .line 1000
    new-instance v4, Lcom/android/server/policy/GlobalActions$13;

    .line 1001
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v5, :cond_4

    const v6, 0x1080a2f

    .line 1003
    :goto_0
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v5, :cond_6

    const v7, 0x1080a2f

    .line 1005
    :goto_1
    const v8, 0x10407d8

    .line 1006
    const v9, 0x10407d9

    .line 1007
    const v10, 0x10407da

    move-object/from16 v5, p0

    .line 1000
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1126
    new-instance v4, Lcom/android/server/policy/GlobalActions$14;

    .line 1127
    const v6, 0x1080a3d

    .line 1128
    const v7, 0x1080a3e

    .line 1129
    const v8, 0x1040145

    .line 1130
    const v9, 0x1040146

    .line 1131
    const v10, 0x1040147

    move-object/from16 v5, p0

    .line 1126
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1291
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    .line 1293
    new-instance v4, Lcom/android/server/policy/GlobalActions$15;

    .line 1294
    const v6, 0x1080a45

    .line 1295
    const v7, 0x1080a44

    .line 1296
    const v8, 0x10407af

    .line 1297
    const v9, 0x10407b0

    .line 1298
    const v10, 0x10407b1

    move-object/from16 v5, p0

    .line 1293
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1349
    new-instance v4, Lcom/android/server/policy/GlobalActions$16;

    .line 1350
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v5, :cond_8

    const v6, 0x1080a31

    .line 1352
    :goto_2
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v5, :cond_a

    const v7, 0x1080a31

    .line 1354
    :goto_3
    const v8, 0x10407c4

    .line 1355
    const v9, 0x10407c2

    .line 1356
    const v10, 0x10407c3

    move-object/from16 v5, p0

    .line 1349
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1460
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1461
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x104090d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1462
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x104090e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1464
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    .line 1465
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1466
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1467
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 1468
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 1469
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1470
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/server/policy/GlobalActions$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$17;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1496
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/server/policy/GlobalActions$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$18;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1505
    new-instance v4, Lcom/android/server/policy/GlobalActions$19;

    .line 1506
    const v6, 0x10803fb

    .line 1507
    const v7, 0x10803fb

    .line 1508
    const v8, 0x104090a

    .line 1509
    const v9, 0x104090b

    .line 1510
    const v10, 0x104090b

    move-object/from16 v5, p0

    .line 1505
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$19;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1596
    new-instance v5, Lcom/android/server/policy/GlobalActions$20;

    .line 1597
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v4, :cond_c

    const v4, 0x1080a3a

    .line 1599
    :goto_4
    const v6, 0x10406f3

    .line 1596
    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v6}, Lcom/android/server/policy/GlobalActions$20;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .line 1645
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1646
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1645
    if-eqz v4, :cond_0

    .line 1647
    new-instance v4, Lcom/android/server/policy/GlobalActions$21;

    .line 1648
    const v6, 0x1080a3f

    .line 1649
    const v7, 0x1080a3f

    .line 1650
    const v8, 0x10408a5

    .line 1651
    const v9, 0x10408a6

    .line 1652
    const v10, 0x10408a7

    move-object/from16 v5, p0

    .line 1647
    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$21;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1709
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 1713
    const/4 v12, 0x1

    .line 1715
    .local v12, "add":Z
    const/4 v4, 0x0

    sput v4, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    .line 1716
    const-string/jumbo v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedState"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1719
    new-instance v4, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v6, 0x40

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v6, 0x80

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1724
    new-instance v4, Lcom/android/server/policy/GlobalActions$BugReportAction;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v6, 0x100

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1726
    const-string/jumbo v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v4, :cond_1

    .line 1728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    :cond_1
    const/4 v12, 0x0

    .line 1736
    :cond_2
    if-eqz v12, :cond_21

    .line 1738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1739
    const v5, 0x107005c

    .line 1738
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 1741
    .local v20, "defaultActions":[Ljava/lang/String;
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 1743
    .local v13, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_5
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_20

    .line 1744
    aget-object v11, v20, v23

    .line 1745
    .local v11, "actionKey":Ljava/lang/String;
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1743
    :cond_3
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 1002
    .end local v11    # "actionKey":Ljava/lang/String;
    .end local v12    # "add":Z
    .end local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "defaultActions":[Ljava/lang/String;
    .end local v23    # "i":I
    :cond_4
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_5

    const v6, 0x1080a2e

    goto/16 :goto_0

    :cond_5
    const v6, 0x1080a41

    goto/16 :goto_0

    .line 1004
    :cond_6
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_7

    const v7, 0x1080a2e

    goto/16 :goto_1

    :cond_7
    const v7, 0x1080a40

    goto/16 :goto_1

    .line 1351
    :cond_8
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_9

    const v6, 0x1080a30

    goto/16 :goto_2

    :cond_9
    const v6, 0x1080a47

    goto/16 :goto_2

    .line 1353
    :cond_a
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_b

    const v7, 0x1080a30

    goto/16 :goto_3

    :cond_b
    const v7, 0x1080a48

    goto/16 :goto_3

    .line 1598
    :cond_c
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_d

    const v4, 0x1080a37

    goto/16 :goto_4

    :cond_d
    const v4, 0x1080a43

    goto/16 :goto_4

    .line 1749
    .restart local v11    # "actionKey":Ljava/lang/String;
    .restart local v12    # "add":Z
    .restart local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "defaultActions":[Ljava/lang/String;
    .restart local v23    # "i":I
    :cond_e
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_f

    .line 1750
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1751
    const-string/jumbo v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1750
    if-nez v4, :cond_3

    .line 1752
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1750
    if-nez v4, :cond_3

    .line 1757
    :cond_f
    invoke-static {}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1758
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1759
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "Removed Emergency mode button because of Knox creation."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1764
    :cond_10
    const-string/jumbo v4, "power"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    :cond_11
    :goto_7
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1766
    :cond_12
    const-string/jumbo v4, "airplane"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1768
    :cond_13
    const-string/jumbo v4, "subscreen"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1772
    const-string/jumbo v4, "datamode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1774
    :cond_14
    const-string/jumbo v4, "bugreport"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1776
    const-string/jumbo v5, "bugreport_in_power_menu"

    const/4 v6, 0x0

    .line 1775
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_17

    .line 1776
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v4

    .line 1775
    if-eqz v4, :cond_17

    .line 1777
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_16

    .line 1778
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v4, :cond_15

    .line 1779
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    .line 1781
    :cond_15
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    .line 1784
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/GlobalActions$BugReportAction;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1787
    :cond_17
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    .line 1789
    :cond_18
    const-string/jumbo v4, "restart"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1791
    :cond_19
    const-string/jumbo v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1793
    :cond_1a
    const-string/jumbo v4, "silent"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1794
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v4, :cond_11

    .line 1795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1797
    :cond_1b
    const-string/jumbo v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1798
    const-string/jumbo v4, "fw.power_user_switcher"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 1801
    :cond_1c
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1805
    :cond_1d
    const-string/jumbo v4, "voiceassist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1807
    :cond_1e
    const-string/jumbo v4, "assist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1810
    :cond_1f
    const-string/jumbo v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid global action key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1815
    .end local v11    # "actionKey":Ljava/lang/String;
    :cond_20
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 1818
    .end local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "defaultActions":[Ljava/lang/String;
    .end local v23    # "i":I
    :cond_21
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1819
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1818
    if-eqz v4, :cond_22

    .line 1820
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1823
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->clearCustomDialogItems()Z

    .line 1824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v22

    .line 1825
    .local v22, "fromDB":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    if-eqz v22, :cond_23

    .line 1826
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "item$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/knox/custom/PowerItem;

    .line 1827
    .local v24, "item":Lcom/samsung/android/knox/custom/PowerItem;
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 1828
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1829
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1830
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/custom/PowerItem;->getIntentAction()I

    move-result v8

    .line 1831
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    .line 1827
    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z

    goto :goto_8

    .line 1837
    .end local v22    # "fromDB":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    .end local v24    # "item":Lcom/samsung/android/knox/custom/PowerItem;
    .end local v25    # "item$iterator":Ljava/util/Iterator;
    :cond_23
    new-instance v4, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 1839
    new-instance v28, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 1841
    .local v28, "params":Lcom/android/internal/app/AlertController$AlertParams;
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_24

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2e

    .line 1842
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1843
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1844
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 1857
    :goto_9
    new-instance v21, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    .line 1858
    .local v21, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "Create GlobalActionsDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_38

    .line 1861
    const/16 v30, 0x0

    .line 1862
    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    const/16 v31, 0x0

    .line 1863
    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1864
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_25

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2f

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2f

    .line 1865
    :cond_25
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    .line 1866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203cf

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 1867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x102006f

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    .line 1868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203d4

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    .line 1869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203d5

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 1870
    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203d6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .line 1871
    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203c8

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203ca

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .line 1873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203cb

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 1874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203cc

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    .line 1886
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$22;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$22;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x104013a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1898
    .local v18, "bugReportString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const v6, 0x1040140

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1900
    .local v17, "bugReportStatus":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1901
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1902
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v4, :cond_26

    .line 1903
    sget v4, Lcom/android/server/policy/GlobalActions;->mBugReportStatusViewColorWhite:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1906
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$23;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$23;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1944
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-nez v4, :cond_27

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-eqz v4, :cond_30

    .line 1947
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustBottomView()V

    .line 1949
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustForceRestartView()V

    .line 1951
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createPortraitGlobalActionsDialog()V

    .line 1953
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_28

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_34

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_34

    .line 1954
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createLandscapeGlobalActionsDialog()V

    .line 1955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_29

    .line 1956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1958
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2a

    .line 1959
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1961
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v5, 0x10203c6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1962
    .local v14, "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1963
    .local v27, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1964
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v4, :cond_31

    .line 1965
    const v4, 0x106014f

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1969
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_33

    .line 1970
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v4, :cond_32

    .line 1971
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x4d

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1972
    .local v15, "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 1981
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 2088
    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v17    # "bugReportStatus":Ljava/lang/String;
    .end local v18    # "bugReportString":Ljava/lang/String;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :goto_e
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 2092
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2b

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2d

    .line 2093
    :cond_2b
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_2c

    .line 2094
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 2095
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 2096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050224

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 2097
    .local v16, "bottomPadding":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v7

    move/from16 v0, v16

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 2098
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 2099
    new-instance v5, Lcom/android/server/policy/GlobalActions$27;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$27;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 2098
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2109
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x96b

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2110
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2115
    .end local v16    # "bottomPadding":I
    :cond_2c
    const-string/jumbo v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2d

    .line 2116
    new-instance v4, Lcom/android/server/policy/GlobalActions$28;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$28;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2143
    :cond_2d
    return-object v21

    .line 1846
    .end local v21    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    :cond_2e
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 1847
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1848
    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_9

    .line 1876
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    :cond_2f
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    .line 1877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203cf

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 1878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x102006f

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    .line 1879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203d4

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    .line 1880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203d5

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .line 1881
    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203d6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .line 1882
    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203c8

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203cb

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    .line 1884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203cc

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    goto/16 :goto_a

    .line 1945
    .restart local v17    # "bugReportStatus":Ljava/lang/String;
    .restart local v18    # "bugReportString":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 1967
    .restart local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_31
    const v4, 0x106014e

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_c

    .line 1974
    :cond_32
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x80

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1975
    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_d

    .line 1978
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_33
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x26

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1979
    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_d

    .line 1983
    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203c6

    invoke-virtual {v4, v5}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1984
    .restart local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1985
    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1986
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v4, :cond_35

    .line 1987
    const v4, 0x106014f

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1991
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_37

    .line 1992
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v4, :cond_36

    .line 1993
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x4d

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1994
    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 2003
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_e

    .line 1989
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_35
    const v4, 0x106014e

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_f

    .line 1996
    :cond_36
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x80

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1997
    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_10

    .line 2000
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_37
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x0

    const/16 v7, 0x26

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 2001
    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_10

    .line 2005
    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v17    # "bugReportStatus":Ljava/lang/String;
    .end local v18    # "bugReportString":Ljava/lang/String;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :cond_38
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_39

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_3a

    .line 2085
    :cond_39
    const v4, 0x1040135

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_e

    .line 2006
    :cond_3a
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "mIsCoverOpen  is false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 2008
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x833

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2009
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/LayoutInflater;

    .line 2011
    .local v26, "lf":Landroid/view/LayoutInflater;
    const/16 v32, 0x0

    .line 2012
    .local v32, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3b

    .line 2013
    const v4, 0x1090071

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 2014
    .local v32, "v":Landroid/view/View;
    new-instance v4, Lcom/android/server/policy/GlobalActions$24;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$24;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2077
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isMiniCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2078
    new-instance v33, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2079
    .local v33, "vglp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_e

    .line 2025
    .end local v33    # "vglp":Landroid/view/ViewGroup$LayoutParams;
    .local v32, "v":Landroid/view/View;
    :cond_3b
    const v4, 0x1090072

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 2026
    .local v32, "v":Landroid/view/View;
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_3d

    .line 2027
    const-string/jumbo v4, "americano"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string/jumbo v4, "mocha"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2028
    :cond_3c
    const v4, 0x10203a8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 2039
    .local v19, "crossBtn":Landroid/view/View;
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2040
    new-instance v4, Lcom/android/server/policy/GlobalActions$25;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$25;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2055
    .end local v19    # "crossBtn":Landroid/view/View;
    :cond_3d
    const v4, 0x102037e

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 2056
    const v4, 0x10203e0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 2057
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2058
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 2059
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2061
    :cond_3e
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/server/policy/GlobalActions$26;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$26;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2069
    const v4, 0x1020016

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 2070
    .local v29, "titleView":Landroid/widget/TextView;
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104011d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 2030
    .end local v29    # "titleView":Landroid/widget/TextView;
    :cond_3f
    const v4, 0x102006f

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .restart local v19    # "crossBtn":Landroid/view/View;
    goto/16 :goto_12

    .line 2073
    .end local v19    # "crossBtn":Landroid/view/View;
    .restart local v29    # "titleView":Landroid/widget/TextView;
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040135

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 2081
    .end local v29    # "titleView":Landroid/widget/TextView;
    :cond_41
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_e
.end method

.method private createLandscapeGlobalActionsDialog()V
    .locals 2

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2542
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2543
    const v1, 0x1050214

    .line 2542
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    .line 2549
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v1, 0x10203c9

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 2551
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$35;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$35;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2596
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$36;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$36;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2604
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    .line 2540
    return-void

    .line 2545
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2546
    const v1, 0x1050215

    .line 2545
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    goto :goto_0
.end method

.method private createPortraitGlobalActionsDialog()V
    .locals 2

    .prologue
    const v1, 0x10203c7

    .line 2147
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_1

    .line 2150
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    .line 2152
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$29;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$29;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2196
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$30;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$30;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2204
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    .line 2146
    return-void

    .line 2148
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    goto :goto_0
.end method

.method private doActionByBixby(I)V
    .locals 4
    .param p1, "itemResID"    # I

    .prologue
    const/4 v3, 0x1

    .line 2418
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPowerOffIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRestartIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "itemResID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getActionWithTag(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2422
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getActionWithTag(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 2423
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_1

    .line 2424
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    .line 2425
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    .line 2417
    :cond_1
    :goto_0
    return-void

    .line 2427
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private doAnimation(Landroid/view/View;FFFIZ)V
    .locals 34
    .param p1, "v"    # Landroid/view/View;
    .param p2, "transX"    # F
    .param p3, "transY"    # F
    .param p4, "scaleXY"    # F
    .param p5, "duration"    # I
    .param p6, "isConfirm"    # Z

    .prologue
    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    return-void

    .line 2617
    :cond_0
    const v27, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 2618
    .local v12, "imageView":Landroid/widget/ImageView;
    const v27, 0x102000b

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 2619
    .local v17, "messageView":Landroid/widget/TextView;
    const v27, 0x10203d7

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 2620
    .local v23, "statusView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const v28, 0x10203cc

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2621
    .local v7, "descriptionView":Landroid/widget/TextView;
    const v27, 0x10203d9

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 2623
    .local v10, "imageFrameLayout":Landroid/widget/FrameLayout;
    const/4 v8, 0x0

    .line 2624
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x0

    .line 2625
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    const/4 v9, 0x0

    .line 2627
    .local v9, "forceRestartAlpha":Landroid/animation/ObjectAnimator;
    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v27, :cond_1

    if-eqz v7, :cond_1

    .line 2628
    sget v27, Lcom/android/server/policy/GlobalActions;->mStatusViewColorWhite:I

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2631
    :cond_1
    if-eqz p6, :cond_a

    .line 2632
    invoke-virtual {v12}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 2633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10407e0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2638
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v30

    const/16 v31, 0x0

    aput v30, v29, v31

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x1

    aput v30, v29, v31

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2639
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v30

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2640
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v30

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2643
    .end local v9    # "forceRestartAlpha":Landroid/animation/ObjectAnimator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setClickable(Z)V

    .line 2655
    :goto_1
    const-wide/16 v28, 0x190

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    .line 2658
    .local v26, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x0

    .line 2659
    .local v16, "ll":Landroid/widget/LinearLayout;
    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v27, :cond_4

    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v27, :cond_c

    .line 2662
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v27, v0

    const v28, 0x10203c6

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "ll":Landroid/widget/LinearLayout;
    check-cast v16, Landroid/widget/LinearLayout;

    .line 2666
    .local v16, "ll":Landroid/widget/LinearLayout;
    :goto_2
    const/16 v24, 0x0

    .line 2667
    .local v24, "translateX":Landroid/animation/ObjectAnimator;
    const/16 v25, 0x0

    .line 2668
    .local v25, "translateY":Landroid/animation/ObjectAnimator;
    const/16 v18, 0x0

    .line 2670
    .local v18, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_d

    .line 2671
    const-string/jumbo v27, "translationX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput p2, v28, v29

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 2672
    .local v24, "translateX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v27, "translationY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput p3, v28, v29

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    .line 2673
    .local v25, "translateY":Landroid/animation/ObjectAnimator;
    const-string/jumbo v27, "translationY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3fd999999999999aL    # 0.4

    mul-double v30, v30, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2681
    .local v18, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    :goto_3
    const-string/jumbo v27, "scaleX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput p4, v28, v29

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 2682
    .local v19, "scaleX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v27, "scaleY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput p4, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 2684
    .local v21, "scaleY":Landroid/animation/ObjectAnimator;
    const/16 v20, 0x0

    .line 2685
    .local v20, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    const/16 v22, 0x0

    .line 2687
    .local v22, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    const v27, 0x10203da

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 2688
    .local v13, "imageViewConfirm":Landroid/widget/ImageView;
    const v27, 0x10203db

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2690
    .local v14, "imageViewSafeMode":Landroid/widget/ImageView;
    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v27, :cond_f

    invoke-virtual {v12}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    if-eqz v27, :cond_f

    .line 2691
    if-eqz p6, :cond_e

    .line 2692
    const v27, 0x10407e2

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2693
    const v27, 0x10407e3

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2694
    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2703
    :goto_4
    const/4 v15, 0x0

    .line 2704
    .local v15, "imageViewhide":Landroid/animation/ObjectAnimator;
    const/4 v11, 0x0

    .line 2705
    .local v11, "imageIconViewhide":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_11

    .line 2706
    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v27, :cond_10

    invoke-virtual {v12}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    if-eqz v27, :cond_10

    .line 2707
    const-string/jumbo v27, "alpha"

    const/16 v28, 0x0

    const/16 v29, 0xff

    filled-new-array/range {v28 .. v29}, [I

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 2708
    .local v15, "imageViewhide":Landroid/animation/ObjectAnimator;
    const-string/jumbo v27, "alpha"

    const/16 v28, 0xff

    const/16 v29, 0x0

    filled-new-array/range {v28 .. v29}, [I

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 2712
    .end local v11    # "imageIconViewhide":Landroid/animation/ObjectAnimator;
    :goto_5
    const-string/jumbo v27, "scaleX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const v29, 0x3f6b851f    # 0.92f

    const/16 v30, 0x0

    aput v29, v28, v30

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 2713
    .local v20, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    const-string/jumbo v27, "scaleY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const v29, 0x3f99999a    # 1.2f

    const/16 v30, 0x0

    aput v29, v28, v30

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 2724
    .local v22, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    :goto_6
    const-wide/16 v28, 0xc8

    move-wide/from16 v0, v28

    invoke-virtual {v15, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2727
    const/4 v5, 0x0

    .line 2728
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_16

    .line 2729
    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v27, :cond_13

    .line 2730
    const v27, 0x106014f

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2734
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 2735
    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v27, :cond_14

    .line 2736
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x4d

    const/16 v30, 0x80

    filled-new-array/range {v29 .. v30}, [I

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2756
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    :goto_8
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2757
    .local v4, "Aniset":Landroid/animation/AnimatorSet;
    new-instance v27, Lcom/android/server/policy/GlobalActions$37;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/GlobalActions$37;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2784
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2788
    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, -0x3e8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 2789
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v24, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2791
    :cond_5
    if-eqz v9, :cond_6

    .line 2792
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v9, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2794
    :cond_6
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, -0x3e8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    .line 2795
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v25, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2797
    :cond_7
    if-eqz v11, :cond_8

    .line 2798
    const-wide/16 v28, 0xc8

    move-wide/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2799
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v11, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2802
    :cond_8
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2803
    new-instance v27, Landroid/view/animation/PathInterpolator;

    const v28, 0x3e2e147b    # 0.17f

    const v29, 0x3e2e147b    # 0.17f

    const v30, 0x3e4ccccd    # 0.2f

    const/high16 v31, 0x3f800000    # 1.0f

    invoke-direct/range {v27 .. v31}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2804
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 2615
    return-void

    .line 2634
    .end local v4    # "Aniset":Landroid/animation/AnimatorSet;
    .end local v5    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v13    # "imageViewConfirm":Landroid/widget/ImageView;
    .end local v14    # "imageViewSafeMode":Landroid/widget/ImageView;
    .end local v15    # "imageViewhide":Landroid/animation/ObjectAnimator;
    .end local v16    # "ll":Landroid/widget/LinearLayout;
    .end local v18    # "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .end local v19    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v20    # "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .end local v21    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v22    # "scaleYMessageView":Landroid/animation/ObjectAnimator;
    .end local v24    # "translateX":Landroid/animation/ObjectAnimator;
    .end local v25    # "translateY":Landroid/animation/ObjectAnimator;
    .end local v26    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    .restart local v9    # "forceRestartAlpha":Landroid/animation/ObjectAnimator;
    :cond_9
    invoke-virtual {v12}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10407e1

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2646
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v30

    const/16 v31, 0x0

    aput v30, v29, v31

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v30, v29, v31

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2647
    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v30

    const/16 v31, 0x0

    aput v30, v29, v31

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x1

    aput v30, v29, v31

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2648
    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    .line 2649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v30

    const/16 v31, 0x0

    aput v30, v29, v31

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x1

    aput v30, v29, v31

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2651
    .end local v9    # "forceRestartAlpha":Landroid/animation/ObjectAnimator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_1

    .line 2660
    .local v16, "ll":Landroid/widget/LinearLayout;
    .restart local v26    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v27, v0

    const v28, 0x10203c6

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16    # "ll":Landroid/widget/LinearLayout;
    check-cast v16, Landroid/widget/LinearLayout;

    .local v16, "ll":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 2675
    .local v18, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .local v24, "translateX":Landroid/animation/ObjectAnimator;
    .local v25, "translateY":Landroid/animation/ObjectAnimator;
    :cond_d
    const-string/jumbo v27, "x"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput p2, v28, v29

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 2676
    .local v24, "translateX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v27, "y"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput p3, v28, v29

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    .line 2677
    .local v25, "translateY":Landroid/animation/ObjectAnimator;
    const-string/jumbo v27, "translationY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v29, v28, v30

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .local v18, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    goto/16 :goto_3

    .line 2696
    .restart local v13    # "imageViewConfirm":Landroid/widget/ImageView;
    .restart local v14    # "imageViewSafeMode":Landroid/widget/ImageView;
    .restart local v19    # "scaleX":Landroid/animation/ObjectAnimator;
    .local v20, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .restart local v21    # "scaleY":Landroid/animation/ObjectAnimator;
    .local v22, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    :cond_e
    const v27, 0x1040137

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2697
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 2700
    :cond_f
    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 2710
    .restart local v11    # "imageIconViewhide":Landroid/animation/ObjectAnimator;
    .local v15, "imageViewhide":Landroid/animation/ObjectAnimator;
    :cond_10
    const-string/jumbo v27, "alpha"

    const/16 v28, 0x0

    const/16 v29, 0xff

    filled-new-array/range {v28 .. v29}, [I

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v13, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .local v15, "imageViewhide":Landroid/animation/ObjectAnimator;
    goto/16 :goto_5

    .line 2715
    .local v15, "imageViewhide":Landroid/animation/ObjectAnimator;
    :cond_11
    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v27, :cond_12

    invoke-virtual {v12}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    if-eqz v27, :cond_12

    .line 2716
    const-string/jumbo v27, "alpha"

    const/16 v28, 0xff

    const/16 v29, 0x0

    filled-new-array/range {v28 .. v29}, [I

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 2717
    .local v15, "imageViewhide":Landroid/animation/ObjectAnimator;
    const-string/jumbo v27, "alpha"

    const/16 v28, 0x0

    const/16 v29, 0xff

    filled-new-array/range {v28 .. v29}, [I

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 2721
    .end local v11    # "imageIconViewhide":Landroid/animation/ObjectAnimator;
    :goto_9
    const-string/jumbo v27, "scaleX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    aput v29, v28, v30

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 2722
    .local v20, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    const-string/jumbo v27, "scaleY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    aput v29, v28, v30

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .local v22, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    goto/16 :goto_6

    .line 2719
    .restart local v11    # "imageIconViewhide":Landroid/animation/ObjectAnimator;
    .local v15, "imageViewhide":Landroid/animation/ObjectAnimator;
    .local v20, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .local v22, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    :cond_12
    const-string/jumbo v27, "alpha"

    const/16 v28, 0xff

    const/16 v29, 0x0

    filled-new-array/range {v28 .. v29}, [I

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v13, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .local v15, "imageViewhide":Landroid/animation/ObjectAnimator;
    goto :goto_9

    .line 2732
    .end local v11    # "imageIconViewhide":Landroid/animation/ObjectAnimator;
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    .local v20, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .local v22, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    :cond_13
    const v27, 0x106014e

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 2738
    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x80

    const/16 v30, 0xbf

    filled-new-array/range {v29 .. v30}, [I

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    goto/16 :goto_8

    .line 2741
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_15
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x0

    const/16 v30, 0x73

    filled-new-array/range {v29 .. v30}, [I

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    goto/16 :goto_8

    .line 2744
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 2745
    sget-boolean v27, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v27, :cond_17

    .line 2746
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x80

    const/16 v30, 0x4d

    filled-new-array/range {v29 .. v30}, [I

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    goto/16 :goto_8

    .line 2748
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_17
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    const-string/jumbo v28, "alpha"

    const/16 v29, 0xbf

    const/16 v30, 0x80

    filled-new-array/range {v29 .. v30}, [I

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    goto/16 :goto_8

    .line 2752
    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_18
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x73

    const/16 v30, 0x0

    filled-new-array/range {v29 .. v30}, [I

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    goto/16 :goto_8
.end method

.method private getActionWithTag(I)Landroid/view/View;
    .locals 6
    .param p1, "tag"    # I

    .prologue
    const/4 v5, 0x0

    .line 2435
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_2

    .line 2436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2437
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2438
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2443
    .local v2, "selected":Landroid/view/View;
    :goto_1
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2444
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2445
    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    .line 2446
    return-object v2

    .line 2440
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "selected":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "selected":Landroid/view/View;
    goto :goto_1

    .line 2436
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2450
    .end local v0    # "i":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "selected":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3276
    new-instance v0, Lcom/android/server/policy/GlobalActions$40;

    const v1, 0x1080372

    .line 3277
    const v2, 0x1040149

    .line 3276
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$40;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentNW()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5380
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getCurrentNW()] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "CURRENT_NETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5381
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 3362
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3363
    :catch_0
    move-exception v0

    .line 3364
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3330
    new-instance v0, Lcom/android/server/policy/GlobalActions$42;

    const v1, 0x108002f

    .line 3331
    const v2, 0x104014b

    .line 3330
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$42;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 5543
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 5546
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5547
    const/4 v1, 0x0

    return v1

    .line 5549
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 5556
    new-instance v0, Lcom/android/server/policy/GlobalActions$46;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/GlobalActions$46;-><init>(Lcom/android/server/policy/GlobalActions;I)V

    .line 5607
    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSCoverState()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 912
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    .line 914
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0

    .line 917
    :cond_0
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "state is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return v2

    .line 921
    :cond_1
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return v2
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3244
    new-instance v0, Lcom/android/server/policy/GlobalActions$39;

    const v1, 0x10804bb

    .line 3245
    const v2, 0x1040148

    .line 3244
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$39;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 3303
    new-instance v0, Lcom/android/server/policy/GlobalActions$41;

    const v1, 0x10804d2

    .line 3304
    const v2, 0x104014a

    .line 3303
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$41;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 739
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    .line 741
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSCoverState()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMobileKeyboard()Z

    move-result v3

    :goto_0
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    .line 742
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isClearCover()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    .line 743
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v3, :cond_2

    .line 756
    :cond_0
    const-string/jumbo v3, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v5, "getPowerMenuLockedState"

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 757
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 756
    if-eqz v3, :cond_3

    .line 758
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void

    :cond_1
    move v3, v4

    .line 741
    goto :goto_0

    .line 745
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 746
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->notifyCocktailBarGlobalActions()V

    .line 748
    return-void

    .line 764
    :cond_3
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v5, "handleShow() : Call createDialog()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 766
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    .line 769
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 770
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .line 769
    if-eqz v3, :cond_4

    .line 771
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-eqz v3, :cond_b

    .line 775
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_e

    .line 776
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 781
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1040135

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 783
    iput-boolean v4, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 785
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 786
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1050227

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    .line 787
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1050228

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    .line 788
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1050225

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    .line 789
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1050017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    .line 791
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v5, "handleShow() : call mDialog.show()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    .line 793
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/high16 v5, 0x10000

    invoke-virtual {v3, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 795
    sput-boolean v7, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    .line 796
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_5

    .line 797
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-nez v3, :cond_5

    .line 798
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    .line 799
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "handleShow(), mini dialog showed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_5
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleShow() : mIsCoverOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v3, :cond_c

    .line 840
    :cond_6
    :goto_1
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v3, :cond_7

    .line 841
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 844
    :cond_7
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v3, :cond_a

    .line 845
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 846
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 847
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 848
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 849
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 850
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 851
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 852
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 853
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v3, :cond_d

    .line 854
    const v3, 0x3ecccccd    # 0.4f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 855
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 859
    :goto_2
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v3, :cond_8

    .line 860
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 863
    :cond_8
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 864
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 866
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v3, :cond_a

    .line 867
    const/16 v1, 0x200

    .line 868
    .local v1, "systemUiFlags":I
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-nez v3, :cond_9

    .line 869
    const/16 v1, 0x210

    .line 871
    :cond_9
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 875
    .end local v1    # "systemUiFlags":I
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground()V

    .line 738
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    return-void

    .line 772
    :cond_b
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    goto :goto_3

    .line 835
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 836
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    sget v5, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    sget v6, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 837
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_1

    .line 857
    .restart local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const/high16 v3, 0x3f400000    # 0.75f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_2

    .line 878
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Can not show dialog as it is not well formed properly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private hideQuickpanelBackground()V
    .locals 1

    .prologue
    .line 5290
    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 5289
    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 5294
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 5295
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    return-void

    .line 5296
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5297
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5298
    sget-object v1, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5293
    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 952
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 953
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 957
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_1
    return-void
.end method

.method private initLandscapeAddView()V
    .locals 4

    .prologue
    .line 2608
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    .line 2610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2611
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2607
    :cond_0
    return-void
.end method

.method private initPortraitAddView()V
    .locals 4

    .prologue
    .line 2525
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v1, :cond_1

    .line 2528
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 2529
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    .line 2535
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2536
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2535
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2526
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    .line 2531
    :cond_2
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    .line 2524
    .restart local v0    # "i":I
    :cond_3
    return-void
.end method

.method private initValueForCreate(Z)V
    .locals 10
    .param p1, "callFromConstructor"    # Z

    .prologue
    const v9, 0x1080a3c

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 539
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 540
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    .line 541
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    .line 542
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v3, Lcom/android/server/policy/GlobalActions;->mCurrentDensity:I

    .line 543
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "shopdemo"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    .line 545
    const v3, 0x1050213

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    .line 546
    const v3, 0x1050214

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    .line 547
    const v3, 0x1050211

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    .line 548
    const v3, 0x1050212

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    .line 549
    const v3, 0x1050217

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    .line 550
    const v3, 0x1050218

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    .line 551
    const v3, 0x1050222

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    .line 552
    const v3, 0x1050223

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    .line 553
    const v3, 0x105021d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    .line 554
    const v3, 0x105021e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    .line 555
    const v3, 0x105021f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    .line 556
    const v3, 0x1050220

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    .line 558
    const v3, 0x1050219

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    .line 559
    const v3, 0x105021a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    .line 560
    const v3, 0x105021b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    .line 561
    const v3, 0x105021c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    .line 562
    const v3, 0x1060150

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mMessageViewColorWhite:I

    .line 563
    const v3, 0x1060151

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mStatusViewColorWhite:I

    .line 564
    const v3, 0x106014b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/server/policy/GlobalActions;->mBugReportStatusViewColorWhite:I

    .line 567
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v3, :cond_5

    .line 568
    if-nez p1, :cond_0

    .line 569
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/policy/GlobalActions;->captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCurrentBG:Landroid/graphics/Bitmap;

    .line 571
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_2

    .line 572
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    invoke-direct {v2, v5, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 576
    .local v2, "targetRegion":Landroid/graphics/Rect;
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCurrentBG:Landroid/graphics/Bitmap;

    invoke-static {v3, v2}, Lcom/android/server/policy/GlobalActions$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    .line 577
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    if-nez v3, :cond_3

    .line 578
    sput-boolean v5, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    .line 589
    .end local v2    # "targetRegion":Landroid/graphics/Rect;
    :cond_0
    :goto_2
    const v3, 0x1080a36

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    .line 590
    const v3, 0x1080a35

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    .line 591
    const v3, 0x1080a3a

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    .line 592
    const v3, 0x1080a39

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    .line 593
    const v3, 0x1080a31

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    .line 594
    iput v9, p0, Lcom/android/server/policy/GlobalActions;->mSafeModeIconResId:I

    .line 595
    const v3, 0x1080a2f

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    .line 606
    :goto_3
    const v3, 0x10407c4

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    .line 607
    const v3, 0x1040145

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    .line 608
    const v3, 0x10407d8

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    .line 610
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    .line 611
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 612
    sput v5, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    .line 613
    sput v5, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    .line 614
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    .line 616
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 618
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iput-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    .line 538
    return-void

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v3, v5

    .line 543
    goto/16 :goto_0

    .line 574
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    invoke-direct {v2, v5, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v2    # "targetRegion":Landroid/graphics/Rect;
    goto :goto_1

    .line 580
    :cond_3
    const-string/jumbo v3, "GlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Whole Area Hue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Saturation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Brightness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v3, v3, v4

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v3, v3, v8

    const v6, 0x3f6147ae    # 0.88f

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_4

    .line 582
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    goto/16 :goto_2

    .line 584
    :cond_4
    sput-boolean v5, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    goto/16 :goto_2

    .line 597
    .end local v2    # "targetRegion":Landroid/graphics/Rect;
    :cond_5
    const v3, 0x1080a33

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    .line 598
    const v3, 0x1080a34

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    .line 599
    const v3, 0x1080a37

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    .line 600
    const v3, 0x1080a38

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    .line 601
    const v3, 0x1080a30

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    .line 602
    iput v9, p0, Lcom/android/server/policy/GlobalActions;->mSafeModeIconResId:I

    .line 603
    const v3, 0x1080a2e

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    goto/16 :goto_3
.end method

.method private isActionAvailable(I)Z
    .locals 5
    .param p1, "itemResID"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5651
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    if-eqz v0, :cond_6

    .line 5658
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSKTCarrierLockPlusEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_2

    .line 5659
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_8

    .line 5661
    :cond_2
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_3

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    if-eqz v0, :cond_c

    .line 5663
    :cond_3
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-eq p1, v0, :cond_4

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    if-eqz v0, :cond_d

    .line 5664
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5668
    :cond_5
    :goto_0
    return v4

    .line 5652
    :cond_6
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_7

    .line 5653
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5655
    :cond_7
    return v4

    .line 5660
    :cond_8
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-eq p1, v0, :cond_2

    .line 5671
    :cond_9
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_a

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_e

    .line 5672
    :cond_a
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v1, "isPowerOffAllowed"

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5673
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_b

    .line 5674
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "power or restart : restricted by MDM "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5676
    :cond_b
    return v4

    .line 5662
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5665
    :cond_d
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-ne p1, v0, :cond_5

    .line 5666
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5679
    :cond_e
    return v3
.end method

.method private isCHINA()Z
    .locals 3

    .prologue
    .line 5472
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5475
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string/jumbo v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5477
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 5479
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isClearCover()Z
    .locals 2

    .prologue
    .line 5485
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5486
    const/4 v0, 0x1

    return v0

    .line 5488
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 3369
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3370
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5514
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5515
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .param p3, "Arg"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5410
    const-string/jumbo v7, ""

    .line 5411
    .local v7, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5412
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 5413
    .local v6, "cr":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 5414
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v3, "temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5415
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5422
    .end local v6    # "cr":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 5424
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5425
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 5427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5430
    :cond_1
    return-object v7

    .line 5417
    .restart local v6    # "cr":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    goto :goto_0

    .line 5426
    .end local v6    # "cr":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 5427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5426
    throw v0
.end method

.method private isFMMlocked()Z
    .locals 2

    .prologue
    .line 5683
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isGlobalActionConfirming()Z
    .locals 2

    .prologue
    .line 4936
    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 4937
    :try_start_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 4936
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;

    .prologue
    .line 5434
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5435
    const/4 v0, -0x1

    return v0

    .line 5437
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isMSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5647
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiniCoverClosed()Z
    .locals 2

    .prologue
    .line 5493
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 5494
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5495
    const/4 v0, 0x1

    return v0

    .line 5497
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMobileKeyboard()Z
    .locals 2

    .prologue
    .line 5502
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 5503
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 5505
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSKTCarrierLockPlusEnabled()Z
    .locals 2

    .prologue
    .line 5687
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isSecurePoweroff(I)Z
    .locals 4
    .param p1, "selectedItem"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5692
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    return v2

    .line 5694
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimLock()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 5696
    :cond_2
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_function_val"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 5699
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v0, :cond_5

    .line 5706
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_6

    .line 5707
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "isFMMlocked true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5708
    sput p1, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    .line 5709
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->sendBendedPendingIntent()V

    .line 5710
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5711
    return v3

    .line 5700
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForSecureLock:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5701
    return v3

    .line 5713
    :cond_6
    return v2
.end method

.method private isSimCardInserted(I)Z
    .locals 8
    .param p1, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5733
    const-string/jumbo v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5734
    .local v3, "simMode":Ljava/lang/String;
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5735
    if-nez p1, :cond_0

    .line 5736
    return v5

    .line 5738
    :cond_0
    return v4

    .line 5742
    :cond_1
    const-string/jumbo v6, "ril.ICC_TYPE"

    const-string/jumbo v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5743
    .local v1, "iccTemp":Ljava/lang/String;
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5744
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 5745
    return v5

    .line 5750
    :cond_2
    const/4 v2, 0x0

    .line 5751
    .local v2, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 5759
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_3

    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5760
    :cond_3
    return v5

    .line 5753
    .restart local v2    # "key":Ljava/lang/String;
    :pswitch_0
    aget-object v2, v0, v5

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 5756
    .local v2, "key":Ljava/lang/String;
    :pswitch_1
    aget-object v2, v0, v4

    .local v2, "key":Ljava/lang/String;
    goto :goto_0

    .line 5762
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    return v4

    :cond_5
    move v4, v5

    goto :goto_1

    .line 5751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimLock()Z
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4943
    const/4 v3, 0x0

    .line 4945
    .local v3, "SimStateResult":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 4946
    .local v2, "SimState":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 4947
    .local v1, "PhoneCount":I
    new-array v0, v1, [I

    .line 4949
    .local v0, "MSimServiceState":[I
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMSim()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4950
    const/4 v4, 0x0

    .end local v3    # "SimStateResult":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_5

    .line 4951
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    aput v5, v0, v4

    .line 4952
    aget v5, v0, v4

    if-eq v5, v7, :cond_0

    .line 4953
    aget v5, v0, v4

    if-ne v5, v8, :cond_1

    :cond_0
    move v5, v6

    .line 4952
    :goto_1
    or-int/2addr v3, v5

    .line 4950
    .local v3, "SimStateResult":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4954
    .end local v3    # "SimStateResult":Z
    :cond_1
    aget v5, v0, v4

    if-ne v5, v9, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 4957
    .end local v4    # "i":I
    .local v3, "SimStateResult":Z
    :cond_3
    if-eq v2, v7, :cond_4

    .line 4958
    if-ne v2, v8, :cond_6

    .line 4957
    :cond_4
    const/4 v3, 0x1

    .line 4961
    .end local v3    # "SimStateResult":Z
    :cond_5
    :goto_2
    return v3

    .line 4959
    .restart local v3    # "SimStateResult":Z
    :cond_6
    if-ne v2, v9, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private isSimReady()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4966
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 4968
    .local v0, "SimState":I
    const-string/jumbo v5, "ro.config.donot_nosim"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 4971
    .local v4, "lSimValue":Z
    if-eqz v0, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 4973
    .local v3, "finalSimState":Z
    :goto_0
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 4974
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4975
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x10407cf

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4976
    const v5, 0x10407d0

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4977
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4978
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4980
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 4984
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x96b

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 4987
    new-instance v5, Lcom/android/server/policy/GlobalActions$45;

    invoke-direct {v5, p0}, Lcom/android/server/policy/GlobalActions$45;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4996
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4997
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 4999
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 5000
    sget-object v5, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 5001
    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 5003
    return v7

    .line 4971
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "finalSimState":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "finalSimState":Z
    goto :goto_0

    .line 5000
    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 5005
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    return v8
.end method

.method private isSingleActionItem(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2956
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2957
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2959
    .local v1, "imageViewTag":I
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v1, v2, :cond_1

    .line 2960
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 2962
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isTSafeLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5519
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    return v2

    .line 5520
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->hasTSafeLock()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 5522
    :cond_1
    const-string/jumbo v0, "off_menu_setting"

    .line 5523
    .local v0, "OFF_MENU_SETTING":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isUSA()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5442
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5444
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string/jumbo v1, "usa"

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5445
    return v3

    .line 5446
    :cond_0
    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5447
    const-string/jumbo v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5447
    const-string/jumbo v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5447
    const-string/jumbo v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5448
    const-string/jumbo v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5448
    const-string/jumbo v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5448
    const-string/jumbo v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5449
    const-string/jumbo v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5449
    const-string/jumbo v1, "SPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5449
    const-string/jumbo v1, "CSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5450
    const-string/jumbo v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5450
    const-string/jumbo v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-nez v1, :cond_1

    .line 5450
    const-string/jumbo v1, "CRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5446
    if-eqz v1, :cond_2

    .line 5451
    :cond_1
    return v3

    .line 5453
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 5509
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5510
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 20
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "i"    # I
    .param p3, "isPort"    # Z

    .prologue
    .line 2208
    move-object/from16 v8, p1

    .line 2209
    .local v8, "action":Lcom/android/server/policy/GlobalActions$Action;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v5, v7, v3}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v6

    .line 2211
    .local v6, "view":Landroid/view/View;
    const v2, 0x1020006

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2212
    .local v4, "imageView":Landroid/widget/ImageView;
    const v2, 0x10203da

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 2213
    .local v10, "imageViewConfirm":Landroid/widget/ImageView;
    const v2, 0x10203db

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 2215
    .local v11, "imageViewSafeMode":Landroid/widget/ImageView;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2216
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v2, v3, :cond_4

    .line 2217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    sget v5, Lcom/android/server/policy/GlobalActions;->mCurrentDensity:I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2218
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2219
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/GlobalActions;->mSafeModeIconResId:I

    sget v5, Lcom/android/server/policy/GlobalActions;->mCurrentDensity:I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2222
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2223
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2230
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2232
    if-eqz p3, :cond_5

    .line 2233
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2234
    .local v12, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2235
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v12, v3, v5, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2244
    :cond_1
    :goto_1
    invoke-virtual {v6, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2245
    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    .line 2246
    const v2, 0x10203d9

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 2247
    .local v9, "imageFrameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v17, v6

    .line 2248
    .local v17, "tempView":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 2249
    if-eqz p3, :cond_2

    .line 2250
    const v2, 0x10203d7

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2251
    .local v16, "statusView":Landroid/widget/TextView;
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v2, :cond_6

    .line 2260
    .end local v16    # "statusView":Landroid/widget/TextView;
    :cond_2
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2261
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2262
    new-instance v2, Lcom/android/server/policy/GlobalActions$31;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/GlobalActions$31;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/ImageView;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2273
    new-instance v2, Lcom/android/server/policy/GlobalActions$32;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/GlobalActions$32;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/ImageView;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2312
    new-instance v2, Lcom/android/server/policy/GlobalActions$33;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/policy/GlobalActions$33;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityManager;

    .line 2331
    .local v14, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/server/policy/GlobalActions;->mCurrentDensity:I

    const v5, 0x108034c

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2336
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v18, 0x258

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ebd70a4    # 0.37f

    const/4 v7, 0x0

    const v18, 0x3e99999a    # 0.3f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v5, v7, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2338
    .end local v14    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_3
    return-object v6

    .line 2224
    .end local v9    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v12    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "tempView":Landroid/view/View;
    :cond_4
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v2, v3, :cond_0

    .line 2225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    sget v5, Lcom/android/server/policy/GlobalActions;->mCurrentDensity:I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2226
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2227
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 2238
    :cond_5
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2239
    .restart local v12    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v12, v3, v5, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 2252
    .restart local v9    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v16    # "statusView":Landroid/widget/TextView;
    .restart local v17    # "tempView":Landroid/view/View;
    :cond_6
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 2253
    .local v13, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    iget v15, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2254
    .local v15, "marginTopPixelSize":I
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    if-nez v2, :cond_2

    .line 2255
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_2

    .line 2334
    .end local v13    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "marginTopPixelSize":I
    .end local v16    # "statusView":Landroid/widget/TextView;
    .restart local v14    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/server/policy/GlobalActions;->mCurrentDensity:I

    const v5, 0x108034d

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3
.end method

.method private notifyCocktailBarGlobalActions()V
    .locals 4

    .prologue
    .line 966
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    .line 967
    .local v1, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_0

    .line 968
    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "notifyCocktailBarGlobalActions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 971
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 972
    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 965
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4874
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    return-void

    .line 4877
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4878
    const-string/jumbo v3, "airplane_mode_on"

    .line 4876
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 4880
    .local v0, "airplaneModeOn":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4881
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4872
    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    .line 4876
    goto :goto_0

    .line 4880
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private onClickForHideLandscapeConfirmDialog(Z)V
    .locals 12
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 2850
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    .line 2852
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v2, "HideConfirmLandscape"

    invoke-virtual {v0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2854
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 2855
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2856
    .local v1, "view":Landroid/view/View;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2857
    const v0, 0x10203d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2858
    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2859
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2860
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2861
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2862
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2864
    const-wide/16 v2, 0x12c

    .line 2862
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2854
    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2867
    :cond_0
    const v0, 0x10203d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2868
    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2869
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2872
    :cond_1
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2873
    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 2874
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    invoke-virtual {v9, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2876
    :cond_2
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2877
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    .line 2881
    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_3
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_4

    .line 2882
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 2883
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    .line 2847
    :cond_4
    return-void
.end method

.method private onClickForHidePortraitConfirmDialog(Z)V
    .locals 12
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 2810
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_1

    .line 2811
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v2, "HideConfirmPortrait"

    invoke-virtual {v0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2814
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2815
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2816
    .local v1, "view":Landroid/view/View;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2817
    const v0, 0x10203d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2818
    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2819
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2820
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2821
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2822
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2824
    const-wide/16 v2, 0x12c

    .line 2822
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2814
    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2827
    :cond_2
    const v0, 0x10203d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2828
    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2829
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2832
    :cond_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2833
    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 2834
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    invoke-virtual {v9, v6, v6, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2836
    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2837
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    .line 2841
    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_6

    .line 2842
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 2843
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    .line 2807
    :cond_6
    return-void
.end method

.method private onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    const/4 v5, 0x0

    const v4, 0x3fa66666    # 1.3f

    const/4 v6, 0x1

    .line 2928
    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 2929
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2930
    .local v11, "messageView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2931
    .local v12, "statusView":Landroid/widget/TextView;
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .line 2932
    .local v7, "center_x":F
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v0

    int-to-float v8, v0

    .line 2933
    .local v8, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 2934
    .local v10, "location":[I
    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2935
    aget v0, v10, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    .line 2936
    aget v0, v10, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    .line 2938
    const-string/jumbo v0, "ksh current x ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2941
    .local v9, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllViewForLand(Landroid/view/View;)V

    .line 2942
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v1, "ConfirmLandscape"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2944
    if-eqz p2, :cond_0

    .line 2945
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    const/16 v5, 0x12c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    .line 2950
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    .line 2952
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 2927
    return-void

    .line 2947
    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_0
.end method

.method private onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    .line 2888
    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    .line 2889
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2890
    .local v12, "messageView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2891
    .local v13, "statusView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .line 2892
    .local v7, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 2893
    .local v10, "location":[I
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_2

    .line 2894
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2898
    :goto_0
    const/4 v0, 0x1

    aget v0, v10, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 2900
    const-string/jumbo v0, "ksh current y ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2904
    .local v9, "imageView":Landroid/widget/ImageView;
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_3

    .line 2907
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    .line 2908
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const-string/jumbo v1, "ConfirmPortrait"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 2911
    :goto_1
    if-eqz p2, :cond_4

    .line 2912
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/16 v5, 0x12c

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    .line 2917
    :goto_2
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .line 2919
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_5

    .line 2924
    :cond_1
    :goto_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 2887
    return-void

    .line 2896
    .end local v9    # "imageView":Landroid/widget/ImageView;
    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    goto/16 :goto_0

    .line 2905
    .restart local v9    # "imageView":Landroid/widget/ImageView;
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    goto :goto_1

    .line 2914
    :cond_4
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_2

    .line 2920
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 2921
    .local v8, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2922
    .local v11, "marginTopPixelSize":I
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    int-to-float v1, v11

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    goto :goto_3
.end method

.method private onToggleDatamode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3610
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v0, :cond_0

    .line 3611
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 3612
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 3613
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    .line 3615
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    .line 3616
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    .line 3617
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_2

    .line 3618
    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 3619
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3624
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    .line 3625
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3609
    :cond_1
    return-void

    .line 3618
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 3622
    :cond_2
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0
.end method

.method private performItemLongClickForSafemode(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 1
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isPort"    # Z

    .prologue
    .line 2342
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    .line 2343
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    if-eqz v0, :cond_1

    .line 2345
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/policy/GlobalActions;->setSafemodeIcon(Landroid/view/View;)V

    .line 2341
    :goto_0
    return-void

    .line 2348
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private prepareDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3441
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 3445
    .local v0, "dataModeOn":Z
    if-eqz v0, :cond_a

    .line 3446
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3451
    :goto_0
    const-string/jumbo v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3452
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3455
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    if-eqz v2, :cond_1

    .line 3456
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 3459
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3460
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_2

    .line 3461
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3478
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3479
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_3

    .line 3480
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3484
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_4

    .line 3485
    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v3, "getSealedState"

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3486
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3497
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3498
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3502
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bikemode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3503
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "globalaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 3502
    if-eqz v2, :cond_5

    .line 3504
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_5

    .line 3505
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isBikeMode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 3506
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3507
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_5

    .line 3508
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3519
    :cond_5
    :goto_3
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_6

    .line 3520
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3527
    :cond_6
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareDialog : mIsCoverOpen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_7

    .line 3529
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v2, :cond_e

    .line 3533
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x96b

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3547
    :cond_7
    :goto_4
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_8

    .line 3548
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3552
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_9

    .line 3553
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3554
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3558
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_9
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3559
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3562
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3563
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3565
    const-string/jumbo v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3566
    const-string/jumbo v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3567
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3575
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3577
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->registerSecureLockReceiver()V

    .line 3416
    return-void

    .line 3448
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_a
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_0

    .line 3488
    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_1

    .line 3497
    :cond_c
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_2

    .line 3511
    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 3512
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_5

    .line 3513
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_3

    .line 3536
    :cond_e
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3538
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    .line 3539
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 3540
    :cond_f
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_7

    .line 3541
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106014c

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_4
.end method

.method private registerBixbyReceiver()V
    .locals 3

    .prologue
    .line 5808
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5809
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.intent.action.BIXBY_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5810
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5807
    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5611
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 5612
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    .line 5613
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 5615
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    .line 5616
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v3, :cond_4

    .line 5617
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 5619
    .local v2, "subIdtemp":[I
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5620
    if-eqz v2, :cond_0

    .line 5621
    aget v1, v2, v6

    .line 5622
    .local v1, "subId":I
    if-lez v1, :cond_1

    .line 5623
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 5624
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5633
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    aput v6, v3, v0

    .line 5616
    .end local v1    # "subId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5626
    .restart local v1    # "subId":I
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5630
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v8, v3, v0

    goto :goto_1

    .line 5626
    :cond_3
    if-nez v0, :cond_2

    .line 5627
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 5628
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 5610
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_4
    return-void
.end method

.method private registerSecureLockReceiver()V
    .locals 3

    .prologue
    .line 5802
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5803
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5804
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5801
    return-void
.end method

.method private restoreQuickpanelBackground()V
    .locals 1

    .prologue
    .line 5314
    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    .line 5313
    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5318
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 5319
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5320
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5321
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5322
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5323
    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5324
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5317
    return-void
.end method

.method private sendBendedPendingIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5718
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 5720
    .local v2, "km":Landroid/app/KeyguardManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5721
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 5723
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5724
    .local v0, "fillInIntent":Landroid/content/Intent;
    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5726
    const-string/jumbo v4, "dismissType"

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5728
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "sendBendedPendingIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    invoke-virtual {v2, v3, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 5717
    return-void
.end method

.method private setSafemodeIcon(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2353
    const v13, 0x10203d9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 2356
    .local v4, "imageFrameLayout":Landroid/widget/FrameLayout;
    const v13, 0x102000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2357
    .local v11, "messageView":Landroid/widget/TextView;
    const v13, 0x10203d7

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2358
    .local v12, "statusView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    const v14, 0x10203cc

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2361
    .local v3, "descriptionView":Landroid/widget/TextView;
    const v13, 0x1020006

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2362
    .local v5, "imageView":Landroid/widget/ImageView;
    const v13, 0x10203da

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 2363
    .local v6, "imageViewConfirm":Landroid/widget/ImageView;
    const v13, 0x10203db

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2366
    .local v9, "imageViewSafeMode":Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getAlpha()F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_0

    return-void

    .line 2368
    :cond_0
    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 2370
    const v13, 0x10407e2

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 2371
    const v13, 0x10407e3

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    .line 2372
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2374
    const-string/jumbo v13, "alpha"

    const/4 v14, 0x0

    const/16 v15, 0xff

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-static {v9, v13, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2375
    .local v10, "imageViewShow":Landroid/animation/ObjectAnimator;
    const-string/jumbo v13, "alpha"

    const/16 v14, 0xff

    const/4 v15, 0x0

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-static {v5, v13, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2376
    .local v7, "imageViewHide":Landroid/animation/ObjectAnimator;
    const-string/jumbo v13, "alpha"

    const/16 v14, 0xff

    const/4 v15, 0x0

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-static {v6, v13, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2378
    .local v8, "imageViewHideConfirm":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0xc8

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2379
    const-wide/16 v14, 0xc8

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2380
    const-wide/16 v14, 0xc8

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2382
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2383
    .local v2, "Aniset":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2384
    const-wide/16 v14, 0x12c

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2385
    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v14, 0x3e2e147b    # 0.17f

    const v15, 0x3e2e147b    # 0.17f

    const v16, 0x3e4ccccd    # 0.2f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v17}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2386
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2352
    return-void
.end method

.method private unRegisterBixbyReceiver()V
    .locals 2

    .prologue
    .line 5820
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5821
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5819
    :cond_0
    return-void
.end method

.method private unRegisterSecureLockReceiver()V
    .locals 2

    .prologue
    .line 5814
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5815
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5813
    :cond_0
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 5639
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 5640
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 5641
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5639
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5638
    :cond_1
    return-void
.end method

.method private updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 13
    .param p1, "whichItem"    # I
    .param p2, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 6007
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6008
    .local v9, "whichItemString":Ljava/lang/String;
    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq p2, v10, :cond_0

    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne p2, v10, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 6010
    .local v6, "on":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 6011
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 6016
    .local v0, "actionsLayout":Landroid/view/ViewGroup;
    :goto_1
    if-eqz v0, :cond_c

    .line 6017
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6018
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_c

    .line 6019
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 6021
    .local v8, "view":Landroid/view/View;
    const v10, 0x1020006

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 6022
    .local v4, "imageView":Landroid/widget/ImageView;
    const v10, 0x102000b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 6023
    .local v5, "messageView":Landroid/widget/TextView;
    const v10, 0x10203d7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 6024
    .local v7, "statusView":Landroid/widget/TextView;
    const v10, 0x10203d9

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 6027
    .local v3, "imageFrameLayout":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 6029
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6030
    if-eqz v7, :cond_2

    .line 6031
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 6032
    if-eqz v6, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_3
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 6043
    :cond_1
    :goto_4
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6044
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 6045
    const-string/jumbo v11, ", "

    .line 6044
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 6046
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10407e4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 6044
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 6047
    const-string/jumbo v11, ", "

    .line 6044
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 6048
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 6044
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6018
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 6008
    .end local v0    # "actionsLayout":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v6    # "on":Z
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "on":Z
    goto/16 :goto_0

    .line 6013
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .restart local v0    # "actionsLayout":Landroid/view/ViewGroup;
    goto/16 :goto_1

    .line 6032
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v5    # "messageView":Landroid/widget/TextView;
    .restart local v7    # "statusView":Landroid/widget/TextView;
    .restart local v8    # "view":Landroid/view/View;
    :cond_5
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_3

    .line 6033
    :cond_6
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 6034
    if-eqz v6, :cond_7

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_5
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_7
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_5

    .line 6035
    :cond_8
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 6036
    if-eqz v6, :cond_9

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_6
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_6

    .line 6037
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "bikemode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6038
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "globalaction"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 6037
    if-eqz v10, :cond_1

    .line 6039
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 6037
    if-eqz v10, :cond_1

    .line 6040
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v10, :cond_1

    .line 6041
    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_7
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_7

    .line 6004
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_c
    return-void
.end method

.method private virtualDismissInSCover()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5327
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 5328
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5329
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5330
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5331
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5332
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5333
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5334
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5336
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5337
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5339
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5340
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5342
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5343
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 5344
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5326
    :cond_5
    return-void
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5348
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 5349
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5350
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5351
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5352
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5353
    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5354
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5355
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 5356
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5347
    :cond_2
    return-void
.end method


# virtual methods
.method adjustBottomView()V
    .locals 14

    .prologue
    const v13, 0x10203d3

    const v11, 0x10203d2

    const v10, 0x10203d0

    const/16 v9, 0x8

    const/4 v12, 0x0

    .line 5849
    const/4 v6, 0x0

    .line 5850
    .local v6, "showfl":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    .line 5851
    .local v3, "hidefl":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    .line 5852
    .local v2, "dividerfl":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 5853
    .local v1, "dividerSViewfl":Landroid/widget/FrameLayout;
    const/4 v4, 0x0

    .line 5854
    .local v4, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v7, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-eqz v7, :cond_1

    .line 5923
    .end local v1    # "dividerSViewfl":Landroid/widget/FrameLayout;
    .end local v2    # "dividerfl":Landroid/widget/FrameLayout;
    .end local v3    # "hidefl":Landroid/widget/FrameLayout;
    .end local v4    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "showfl":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/server/policy/GlobalActions$47;

    invoke-direct {v8, p0}, Lcom/android/server/policy/GlobalActions$47;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5848
    return-void

    .line 5855
    .restart local v1    # "dividerSViewfl":Landroid/widget/FrameLayout;
    .restart local v2    # "dividerfl":Landroid/widget/FrameLayout;
    .restart local v3    # "hidefl":Landroid/widget/FrameLayout;
    .restart local v4    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "showfl":Landroid/widget/FrameLayout;
    :cond_1
    sget-boolean v7, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v7, :cond_4

    sget-boolean v7, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v7, :cond_4

    .line 5856
    :cond_2
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v7, v11}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "dividerfl":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 5857
    .local v2, "dividerfl":Landroid/widget/FrameLayout;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v7, v10}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 5858
    .local v3, "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5859
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5860
    iget-boolean v7, p0, Lcom/android/server/policy/GlobalActions;->mShowNavigationBar:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    .line 5861
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 5862
    .local v5, "naviBarHeight":I
    iget v7, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    int-to-double v8, v7

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 5863
    .local v0, "bottomViewHeight":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1

    invoke-direct {v4, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5864
    .local v4, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v12, v12, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5865
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5866
    sget-boolean v7, Lcom/android/server/policy/GlobalActions;->isForceRestartSupport:Z

    if-eqz v7, :cond_0

    .line 5867
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v8, 0x10203cd

    invoke-virtual {v7, v8}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 5868
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 5871
    .end local v0    # "bottomViewHeight":I
    .end local v5    # "naviBarHeight":I
    .local v4, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iget v8, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5872
    .local v4, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v7, v13}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "showfl":Landroid/widget/FrameLayout;
    check-cast v6, Landroid/widget/FrameLayout;

    .line 5873
    .local v6, "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 5876
    .local v2, "dividerfl":Landroid/widget/FrameLayout;
    .local v3, "hidefl":Landroid/widget/FrameLayout;
    .local v4, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .local v6, "showfl":Landroid/widget/FrameLayout;
    :cond_4
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iget v8, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5877
    .local v4, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v7, v11}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "dividerSViewfl":Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .line 5878
    .local v1, "dividerSViewfl":Landroid/widget/FrameLayout;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v7, v10}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 5879
    .local v3, "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5880
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v7, v13}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "showfl":Landroid/widget/FrameLayout;
    check-cast v6, Landroid/widget/FrameLayout;

    .line 5881
    .local v6, "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5882
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public airplaneModeClickAction(Z)V
    .locals 5
    .param p1, "isShowingConfirmMessage"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3783
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    .line 3784
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    .line 3785
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_4

    .line 3786
    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 3787
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3792
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    .line 3793
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3796
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_1

    .line 3797
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_5

    .line 3798
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3800
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 3801
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3802
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3803
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_3

    .line 3812
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3813
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3782
    :cond_3
    return-void

    .line 3786
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 3790
    :cond_4
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0

    .line 3806
    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3807
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bottomViewOnTouch(IZZ)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "isPortrait"    # Z
    .param p3, "isConfirm"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5949
    if-nez p1, :cond_4

    .line 5950
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 5953
    :cond_0
    if-eqz p3, :cond_3

    .line 5954
    if-eqz p2, :cond_2

    .line 5955
    invoke-direct {p0, v2}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    .line 5962
    :goto_0
    return v2

    .line 5951
    :cond_1
    return v2

    .line 5957
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    goto :goto_0

    .line 5960
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5966
    :cond_4
    if-ne p1, v2, :cond_5

    .line 5967
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_5

    .line 5968
    if-eqz p3, :cond_7

    .line 5969
    if-eqz p2, :cond_6

    .line 5970
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 5974
    :goto_1
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    .line 5981
    :cond_5
    :goto_2
    return v1

    .line 5972
    :cond_6
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    goto :goto_1

    .line 5976
    :cond_7
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 5977
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method calculateDescritionViewHeight(Landroid/view/View;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "diff"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 5788
    const v2, 0x10203d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5789
    .local v1, "statusView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5790
    .local v0, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5791
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 5792
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5793
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5798
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 5787
    return-void

    .line 5795
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5796
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public checkOnAirplaneConfirmShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "checkOnAirplaneConfirmShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 635
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    .line 639
    :goto_0
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOnAirplaneConfirmShow : mShowOnAirplaneConfirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void

    .line 637
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    goto :goto_0
.end method

.method public hasTSafeLock()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5527
    const/4 v3, 0x0

    .line 5528
    .local v3, "result":Z
    const-string/jumbo v0, "com.skt.t_smart_charge"

    .line 5530
    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5531
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 5532
    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 5533
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 5538
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 5533
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 5535
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 5536
    .local v1, "ex":Ljava/lang/Exception;
    return v7
.end method

.method public initStrings()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x10407b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForSecureLock:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 5385
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    if-eqz v2, :cond_0

    .line 5386
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5387
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5388
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5389
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5392
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5393
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5394
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5395
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5396
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5397
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 5398
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5384
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method isDialogPowerOptionHidden()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5368
    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedState"

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5369
    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedPowerDialogOptionMode"

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 5370
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5374
    :cond_1
    return v0
.end method

.method isDialogShowing()Z
    .locals 1

    .prologue
    .line 5363
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5941
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 5942
    return v1

    .line 5944
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5985
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 5986
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5988
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aget v4, v0, v6

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 5989
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    aget v4, v0, v7

    int-to-float v4, v4

    sub-float v2, v3, v4

    .line 5990
    .local v2, "y":F
    cmpg-float v3, v1, v5

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 5991
    :cond_0
    return v6

    .line 5990
    :cond_1
    cmpg-float v3, v2, v5

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_0

    .line 5993
    return v7
.end method

.method item_xposition(I)I
    .locals 2
    .param p1, "item_width"    # I

    .prologue
    .line 5766
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 5767
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5768
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    .line 5773
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 5770
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    goto :goto_0
.end method

.method item_yposition(I)I
    .locals 2
    .param p1, "item_height"    # I

    .prologue
    .line 5777
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 5778
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5779
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    .line 5784
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 5781
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3873
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v0, :cond_1

    .line 3874
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    if-nez v0, :cond_0

    .line 3876
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3878
    :cond_0
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 3868
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 3831
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 3833
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3840
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_1

    .line 3842
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3849
    :cond_1
    :goto_1
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_2

    .line 3850
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_3

    .line 3851
    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3852
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 3859
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unRegisterSecureLockReceiver()V

    .line 3860
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unRegisterBixbyReceiver()V

    .line 3862
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 3863
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 3864
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    .line 3830
    return-void

    .line 3834
    :catch_0
    move-exception v0

    .line 3836
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3843
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 3845
    .restart local v0    # "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3851
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 3855
    :cond_3
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_2
.end method

.method public requestUpdateWindowBlur(F)V
    .locals 2
    .param p1, "blurValue"    # F

    .prologue
    .line 5997
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_0

    .line 5998
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5999
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 6000
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5996
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 9
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 647
    const-string/jumbo v3, "com.android.service.GlobalAction"

    const-string/jumbo v5, "0001"

    const-string/jumbo v6, "null"

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 649
    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 650
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 649
    const/4 v7, 0x1

    .line 648
    invoke-virtual {v3, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 652
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 653
    new-instance v3, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    invoke-direct {v3, p0, v8}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 659
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    return-void

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->initStrings()V

    .line 667
    invoke-direct {p0, v4}, Lcom/android/server/policy/GlobalActions;->initValueForCreate(Z)V

    .line 671
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 673
    .local v0, "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 674
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-void

    .line 679
    .end local v0    # "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_1
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 680
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 681
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    .line 683
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 685
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-nez v3, :cond_2

    .line 687
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 688
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    const-string/jumbo v3, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 689
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 690
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState()Z

    move-result v5

    or-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 691
    const-string/jumbo v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .end local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    :cond_2
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 698
    const-string/jumbo v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "device provision check : mDeviceProvisioned ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_6

    .line 700
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v3, :cond_5

    .line 701
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 706
    :goto_1
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    .line 707
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    .line 708
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSafeModeEnabled:Z

    .line 710
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v3, :cond_3

    .line 711
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 646
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v3, v4

    .line 681
    goto/16 :goto_0

    .line 703
    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 704
    iput-object v8, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    goto :goto_1

    .line 716
    :cond_6
    const-string/jumbo v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    if-eqz v3, :cond_7

    .line 718
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v5, "showDialog() : call checkAirplaneModeOnOff"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->checkAirplaneModeOnOff()V

    .line 720
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    .line 722
    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto :goto_2
.end method

.method public showErrorMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5404
    if-eqz p1, :cond_0

    .line 5405
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5403
    :cond_0
    return-void
.end method
