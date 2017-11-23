.class public Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;
    }
.end annotation


# static fields
.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE:I

.field private static SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTCALL:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mHdrSummary:Ljava/lang/String;

.field private static mHongbaoAssistantEnabled:Z

.field private static mHongbaoEnabled:Z

.field public static final mMotionFeatures:[Ljava/lang/String;

.field private static mSupportMcc:[Ljava/lang/String;

.field private static sIsSupportNightClock:Z


# instance fields
.field edit:Landroid/content/SharedPreferences$Editor;

.field private mAccelerateHongbaoReceiving:Landroid/preference/Preference;

.field private mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAppLock:Landroid/preference/PreferenceScreen;

.field private final mAppLockObserver:Landroid/database/ContentObserver;

.field private mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

.field private mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

.field private mCategoryFour:Landroid/preference/PreferenceCategory;

.field private mCategoryThree:Landroid/preference/PreferenceCategory;

.field private mCategoryTwo:Landroid/preference/PreferenceCategory;

.field private mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDock:Landroid/preference/Preference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFestivalEffect:Landroid/preference/PreferenceScreen;

.field private mGalaxyLabs:Landroid/preference/Preference;

.field private mGameHome:Landroid/preference/PreferenceScreen;

.field private mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

.field private mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mHongbaoAssistantObserver:Landroid/database/ContentObserver;

.field private mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

.field private mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

.field private mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mMultiWindowPref:Landroid/preference/PreferenceScreen;

.field private mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mOneHandedOperationObserver:Landroid/database/ContentObserver;

.field private mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mQuickCameraLaunch:Landroid/preference/SwitchPreference;

.field private mQuickDial:Landroid/preference/SwitchPreference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mScreenRecorder:Landroid/preference/PreferenceScreen;

.field private mSendSOSMessage:Landroid/preference/Preference;

.field private mSendSOSMessageObserver:Landroid/database/ContentObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private mSmartCaptureObserver:Landroid/database/ContentObserver;

.field private mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSpen:Landroid/preference/Preference;

.field private mSwipeToCallObserver:Landroid/database/ContentObserver;

.field private mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTouchSensitivityObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    return v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 166
    const-string/jumbo v3, "pick_up_to_call_out_switch"

    aput-object v3, v0, v2

    const-string/jumbo v3, "pick_up_switch"

    aput-object v3, v0, v1

    const-string/jumbo v3, "merged_mute_or_pause_switch"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string/jumbo v3, "palm_swipe_switch"

    const/4 v4, 0x3

    aput-object v3, v0, v4

    .line 165
    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    .line 243
    const-string/jumbo v0, "hongbao"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    .line 244
    const-string/jumbo v4, "CscFeature_RIL_ConfigKeepRrcConnection"

    .line 243
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 243
    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    .line 247
    const-string/jumbo v0, "hongbao_assistant"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    .line 248
    const-string/jumbo v4, "CscFeature_RIL_ConfigKeepRrcConnection"

    .line 247
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    .line 247
    :cond_0
    sput-boolean v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    .line 277
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 278
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 277
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    .line 279
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string/jumbo v1, "nightclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    .line 2433
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 2445
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 91
    return-void

    :cond_1
    move v0, v2

    .line 245
    goto :goto_0

    :cond_2
    move v0, v2

    .line 243
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 261
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 263
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    .line 273
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 274
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 275
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 290
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    .line 309
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    .line 328
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;

    .line 329
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 328
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    .line 446
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    .line 458
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

    .line 473
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    .line 489
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    .line 501
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    .line 512
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    .line 519
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 541
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    .line 555
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    .line 570
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    .line 579
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    .line 1823
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2632
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 91
    return-void
.end method

.method private appLockSummaryUpdate()V
    .locals 4

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "app_lock_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2071
    .local v0, "appLockState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1ad8

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 2068
    :goto_0
    return-void

    .line 2074
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1ad9

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method public static checkMccSmartCall(Ljava/lang/String;)Z
    .locals 6
    .param p0, "simMcc"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1928
    const/4 v1, 0x0

    .line 1930
    .local v1, "mSupportSmartCall":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1931
    return v2

    .line 1933
    :cond_0
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_2

    .line 1934
    :cond_1
    return v2

    .line 1936
    :cond_2
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 1937
    .local v0, "mMcc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1938
    const/4 v1, 0x0

    .line 1940
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1941
    const/4 v1, 0x1

    .line 1945
    .end local v0    # "mMcc":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "Usefulfeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkMccSmartCall : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return v1

    .line 1936
    .restart local v0    # "mMcc":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static checkSmartSwitchSupport(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 942
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 943
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 944
    const-string/jumbo v2, "Usefulfeature"

    const-string/jumbo v3, "DeviceOwner"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "functions":Ljava/lang/String;
    const-string/jumbo v2, "Usefulfeature"

    const-string/jumbo v3, "SS is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v2, 0x0

    return v2
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2337
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2339
    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 2336
    :cond_0
    return-void
.end method

.method public static getInsertedSimCard()I
    .locals 4

    .prologue
    .line 2012
    const/4 v2, 0x0

    .line 2013
    .local v2, "returnValue":I
    const/4 v0, 0x0

    .line 2014
    .local v0, "index":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 2016
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2017
    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2018
    add-int/lit8 v2, v2, 0x1

    .line 2016
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2022
    :cond_1
    return v2
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    .line 2034
    const-string/jumbo v1, "0"

    .line 2036
    .local v1, "icctype":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2037
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2038
    const-string/jumbo v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    :cond_0
    :goto_0
    return-object v1

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static getSimMcc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1964
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimMccMncReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1965
    const/4 v2, 0x0

    return-object v2

    .line 1967
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 1968
    .local v1, "simOperator":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1969
    .local v0, "mSimMcc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1970
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1972
    .end local v0    # "mSimMcc":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getSimMcc(I)Ljava/lang/String;
    .locals 4
    .param p0, "simId"    # I

    .prologue
    .line 1976
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimMccMncReady(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1977
    const/4 v2, 0x0

    return-object v2

    .line 1979
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 1980
    .local v1, "simOperator":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1981
    .local v0, "mSimMcc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1982
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1984
    .end local v0    # "mSimMcc":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getSummaryForMutePauseSwitch()I
    .locals 3

    .prologue
    .line 1889
    const/4 v0, 0x0

    .line 1890
    .local v0, "mutePauseSummaryRes":I
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    .line 1893
    const/high16 v2, 0x200000

    .line 1892
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1894
    const v0, 0x7f0b09a2

    .line 1898
    :goto_0
    return v0

    .line 1891
    :cond_0
    const v0, 0x7f0b09a4

    .line 1890
    goto :goto_0

    .line 1896
    :cond_1
    const v0, 0x7f0b09a3

    goto :goto_0
.end method

.method private static isNotSupportSamsungMessageApp()Z
    .locals 2

    .prologue
    .line 2381
    const-string/jumbo v0, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2382
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2383
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isReadyOneHandedOperationStatusEnable()Z
    .locals 15

    .prologue
    .line 2186
    const/4 v7, 0x1

    .line 2187
    .local v7, "result":Z
    const/4 v8, 0x0

    .line 2188
    .local v8, "sTalkbackEnabled":Z
    const/4 v9, 0x0

    .line 2189
    .local v9, "switchAccessEnabled":Z
    const/4 v10, 0x0

    .line 2190
    .local v10, "talkbackEnabled":Z
    const/4 v4, 0x0

    .line 2191
    .local v4, "hoverzoomEnabled":Z
    const/4 v5, 0x0

    .line 2192
    .local v5, "magnificationGesturesEnabled":Z
    const/4 v6, 0x0

    .line 2193
    .local v6, "magnifierWindowEnabled":Z
    const/4 v11, 0x0

    .line 2194
    .local v11, "universalSwitchEnabled":Z
    const/4 v0, 0x0

    .line 2195
    .local v0, "accessControlEnabled":Z
    const/4 v1, 0x0

    .line 2196
    .local v1, "assistantMenuEnabled":Z
    const/4 v3, 0x0

    .line 2197
    .local v3, "directAccessEnabled":Z
    const/4 v2, 0x0

    .line 2199
    .local v2, "autoClickPointerEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 2200
    .local v8, "sTalkbackEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    .line 2201
    .local v10, "talkbackEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isSwitchAccessEnabled(Landroid/content/Context;)Z

    move-result v9

    .line 2202
    .local v9, "switchAccessEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "com.sec.feature.overlaymagnifier"

    invoke-static {v12, v13}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2203
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v4, 0x1

    .line 2205
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 2206
    const-string/jumbo v13, "accessibility_display_magnification_enabled"

    const/4 v14, 0x0

    .line 2205
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 2206
    const/4 v13, 0x1

    .line 2205
    if-ne v12, v13, :cond_4

    const/4 v5, 0x1

    .line 2207
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 2208
    const-string/jumbo v13, "finger_magnifier"

    const/4 v14, 0x0

    .line 2207
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 2208
    const/4 v13, 0x1

    .line 2207
    if-ne v12, v13, :cond_5

    const/4 v6, 0x1

    .line 2209
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v11

    .line 2210
    .end local v11    # "universalSwitchEnabled":Z
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "access_control_use"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    const/4 v0, 0x1

    .line 2211
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "assistant_menu"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v1, 0x1

    .line 2212
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "direct_access"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v3, 0x1

    .line 2213
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_autoclick_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v2, 0x1

    .line 2215
    :goto_7
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-nez v11, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 2218
    :cond_1
    const/4 v7, 0x0

    .line 2221
    :cond_2
    return v7

    .line 2203
    .restart local v11    # "universalSwitchEnabled":Z
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2205
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 2207
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 2209
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 2210
    .end local v11    # "universalSwitchEnabled":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 2211
    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    .line 2212
    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    .line 2213
    :cond_a
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public static isSimCardInserted(I)Z
    .locals 2
    .param p0, "slotidx"    # I

    .prologue
    const/4 v1, 0x0

    .line 2026
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2027
    return v1

    .line 2029
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSimCardStatusOn(I)Z
    .locals 4
    .param p0, "simidx"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2047
    const/4 v0, 0x1

    .line 2048
    .local v0, "returnValue":Z
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2049
    return v2

    .line 2053
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2054
    const/4 v0, 0x0

    .line 2058
    :cond_1
    if-eqz v0, :cond_4

    if-ne p0, v3, :cond_4

    .line 2059
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2060
    const-string/jumbo v2, "phone2_on"

    .line 2059
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v0, 0x1

    .line 2065
    :cond_2
    :goto_0
    return v0

    .line 2059
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2061
    :cond_4
    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    .line 2062
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2063
    const-string/jumbo v2, "phone1_on"

    .line 2062
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimMccMncReady()Z
    .locals 2

    .prologue
    .line 1950
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1951
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1952
    const/4 v1, 0x0

    return v1

    .line 1953
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isSimMccMncReady(I)Z
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 1957
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1958
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1959
    const/4 v1, 0x0

    return v1

    .line 1960
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static isSupportMCC()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1866
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    .line 1867
    const-string/jumbo v5, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    .line 1866
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1868
    .local v1, "cscString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1869
    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1870
    .local v0, "cscSmartCallData":[Ljava/lang/String;
    array-length v4, v0

    if-le v4, v3, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1871
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 1874
    .end local v0    # "cscSmartCallData":[Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static isSupportMccSmartCall()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 1902
    const/4 v1, 0x0

    .line 1903
    .local v1, "mSim1Support":Z
    const/4 v3, 0x0

    .line 1905
    .local v3, "mSim2Support":Z
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSimMcc()Ljava/lang/String;

    move-result-object v4

    .line 1907
    .local v4, "mSimMcc":Ljava/lang/String;
    const-string/jumbo v7, "persist.radio.multisim.config"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1909
    .local v5, "multiSimConfig":Ljava/lang/String;
    const-string/jumbo v7, "dsds"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "tsts"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1910
    const-string/jumbo v7, "dsda"

    .line 1909
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1911
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getInsertedSimCard()I

    move-result v7

    if-le v7, v6, :cond_2

    .line 1912
    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardStatusOn(I)Z

    move-result v7

    .line 1909
    if-eqz v7, :cond_2

    .line 1913
    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardStatusOn(I)Z

    move-result v7

    .line 1909
    if-eqz v7, :cond_2

    .line 1914
    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSimMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 1915
    .local v0, "mSim1Mcc":Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSimMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 1917
    .local v2, "mSim2Mcc":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v1

    .line 1918
    .local v1, "mSim1Support":Z
    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v3

    .line 1919
    .local v3, "mSim2Support":Z
    const-string/jumbo v7, "Usefulfeature"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSupportMccSmartCall mSim1Support : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mSim2Support : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    if-nez v1, :cond_1

    .end local v3    # "mSim2Support":Z
    :goto_0
    return v3

    .restart local v3    # "mSim2Support":Z
    :cond_1
    move v3, v6

    goto :goto_0

    .line 1924
    .end local v0    # "mSim1Mcc":Ljava/lang/String;
    .end local v2    # "mSim2Mcc":Ljava/lang/String;
    .local v1, "mSim1Support":Z
    .local v3, "mSim2Support":Z
    :cond_2
    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v6

    return v6
.end method

.method private static isSupportSmartCall()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1849
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    .line 1850
    const-string/jumbo v5, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    .line 1849
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1851
    .local v2, "cscString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1852
    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1853
    .local v1, "cscSmartCallData":[Ljava/lang/String;
    aget-object v4, v1, v6

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1854
    .local v0, "cscData":[Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    .line 1855
    const-string/jumbo v5, "com.samsung.android.smartcallprovider"

    .line 1854
    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1856
    .local v3, "hasSmartCallProvider":Z
    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1857
    const-string/jumbo v4, "off"

    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "off"

    .line 1858
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1857
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1862
    .end local v0    # "cscData":[Ljava/lang/String;
    .end local v1    # "cscSmartCallData":[Ljava/lang/String;
    .end local v3    # "hasSmartCallProvider":Z
    :cond_0
    return v6

    .line 1859
    .restart local v0    # "cscData":[Ljava/lang/String;
    .restart local v1    # "cscSmartCallData":[Ljava/lang/String;
    .restart local v3    # "hasSmartCallProvider":Z
    :cond_1
    return v3
.end method

.method private makeOneHandOperationDisablePopup()V
    .locals 11

    .prologue
    .line 2225
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0c0a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2226
    .local v7, "title":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2229
    .local v6, "sb_message":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    .line 2231
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "com.sec.feature.overlaymagnifier"

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2232
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_0

    .line 2233
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    const v8, 0x7f0b0233

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2238
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2239
    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    :cond_1
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    const v8, 0x7f0b024b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.google.android.marvin.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2245
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2246
    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    :cond_3
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    const v8, 0x7f0b024a

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    const v8, 0x7f0b022f

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.universalswitch"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2255
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    const v8, 0x7f0b024c

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.accesscontrol"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2260
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    const v8, 0x7f0b02bc

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2262
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2264
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.assistantmenu"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2265
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    const v8, 0x7f0b01f2

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2267
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    :cond_7
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2270
    const v8, 0x7f0b0248

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b1700

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b1712

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2279
    .local v5, "message":Ljava/lang/String;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2280
    .local v0, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 2281
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2282
    .local v3, "dialogView":Landroid/view/ViewGroup;
    const v8, 0x7f11010e

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2283
    .local v2, "descText":Landroid/widget/TextView;
    const v8, 0x7f11010f

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2284
    .local v1, "descList":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0c0b

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2285
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2287
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 2290
    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$25;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$25;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const v10, 0x104000a

    .line 2287
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 2306
    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$26;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$26;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v10, 0x1040000

    .line 2287
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 2311
    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    .line 2287
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 2317
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 2224
    return-void
.end method

.method private makeTalkBackDisablePopup(Landroid/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2079
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    .line 2080
    const-string/jumbo v1, ""

    .line 2081
    .local v1, "function":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2082
    const v4, 0x7f0b05c9

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2086
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2087
    .local v0, "enabledTalkbackName":Ljava/lang/String;
    const v4, 0x7f0b0431

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 2088
    aput-object v0, v5, v6

    .line 2087
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2089
    .local v3, "popup_title":Ljava/lang/String;
    const v4, 0x7f0b0432

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 2090
    aput-object v0, v5, v7

    .line 2089
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2091
    .local v2, "popup_msg":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2093
    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    const v6, 0x7f0b0433

    .line 2091
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2110
    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v6, 0x1040000

    .line 2091
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 2115
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$21;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$21;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2128
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2078
    return-void

    .line 2083
    .end local v0    # "enabledTalkbackName":Ljava/lang/String;
    .end local v2    # "popup_msg":Ljava/lang/String;
    .end local v3    # "popup_title":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2084
    const v4, 0x7f0b0991

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private maketurnOffUniversalPopup(Landroid/preference/Preference;)V
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v8, 0x7f0b0246

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2132
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    .line 2133
    const-string/jumbo v0, ""

    .line 2134
    .local v0, "function":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2135
    const v3, 0x7f0b05c9

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2140
    :cond_0
    :goto_0
    const v3, 0x7f0b0431

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 2141
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2140
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2142
    .local v2, "popup_title":Ljava/lang/String;
    const v3, 0x7f0b0432

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    .line 2143
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 2142
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2144
    .local v1, "popup_msg":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2146
    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    const v5, 0x7f0b0433

    .line 2144
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2163
    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v5, 0x1040000

    .line 2144
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 2168
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2182
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 2131
    return-void

    .line 2136
    .end local v1    # "popup_msg":Ljava/lang/String;
    .end local v2    # "popup_title":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2137
    const v3, 0x7f0b0991

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setOneHandOperation(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2321
    if-ne p1, v5, :cond_0

    const/4 v0, 0x1

    .line 2322
    .local v0, "bOnehandCheck":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2323
    const-string/jumbo v4, "any_screen_enabled"

    .line 2322
    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2325
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2326
    const-string/jumbo v4, "one_handed_op_wakeup_type"

    .line 2325
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 2328
    .local v1, "bOnehandType":Z
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 2329
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 2330
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    const v2, 0x7f0b0c05

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 2331
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2332
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100188

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2333
    if-eqz v0, :cond_4

    const/16 v2, 0x3e8

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2331
    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 2320
    return-void

    .line 2321
    .end local v0    # "bOnehandCheck":Z
    .end local v1    # "bOnehandType":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "bOnehandCheck":Z
    goto :goto_0

    .line 2325
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "bOnehandType":Z
    goto :goto_1

    .line 2330
    :cond_2
    const v2, 0x7f0b0c03

    goto :goto_2

    :cond_3
    const v2, 0x7f0b041a

    goto :goto_2

    :cond_4
    move v2, v3

    .line 2333
    goto :goto_3
.end method

.method public static setSupportMccSmartCall()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1878
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 1879
    const-string/jumbo v3, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    .line 1878
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1880
    .local v1, "cscString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1881
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1882
    .local v0, "cscSmartCallData":[Ljava/lang/String;
    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1877
    .end local v0    # "cscSmartCallData":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1883
    .restart local v0    # "cscSmartCallData":[Ljava/lang/String;
    :cond_1
    aget-object v2, v0, v4

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    goto :goto_0
.end method

.method private smartCaptureDisablePopup()V
    .locals 8

    .prologue
    const v7, 0x7f0b0233

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2344
    const v2, 0x7f0b0431

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 2345
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 2344
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2346
    .local v1, "popup_title":Ljava/lang/String;
    const v2, 0x7f0b0432

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 2347
    const v4, 0x7f0b0403

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 2348
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 2346
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2350
    .local v0, "popup_msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2352
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0433

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2353
    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    .line 2350
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2364
    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v4, 0x1040000

    .line 2350
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2369
    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$30;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$30;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    .line 2350
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    .line 2343
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    .line 287
    sget v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 961
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 962
    new-instance v6, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 963
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.easyMover"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkSmartSwitchSupport(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 964
    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 966
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 967
    const-string/jumbo v7, "com.sec.android.easyMover"

    .line 966
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 968
    .local v4, "smartSwitchIntent":Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 969
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v4, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v4    # "smartSwitchIntent":Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v7, 0x7f0b0bb5

    iput v7, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 983
    :cond_0
    sget-object v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 984
    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 985
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 986
    .local v1, "easymodeIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    .line 987
    const-string/jumbo v7, "com.android.settings.Settings$EasyModeAppActivity"

    .line 986
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 989
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v7, 0x7f0b060e

    iput v7, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 992
    .end local v1    # "easymodeIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    .line 993
    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    .line 992
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 994
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_5

    .line 995
    :cond_2
    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 1009
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 959
    return-void

    .line 971
    .restart local v4    # "smartSwitchIntent":Landroid/content/Intent;
    :cond_4
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 973
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 975
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "smartSwitchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 977
    const-string/jumbo v6, "Usefulfeature"

    const-string/jumbo v7, "not found activity"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 994
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v5    # "str":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    if-eqz v6, :cond_2

    .line 997
    :cond_6
    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 998
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 999
    .local v3, "nightclockIntent":Landroid/content/Intent;
    const-string/jumbo v6, "-nightclock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1001
    const-string/jumbo v6, "com.samsung.android.app.aodservice.settings.NightClock"

    .line 1000
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v3, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 1006
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v7, 0x7f0b0407

    iput v7, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_1

    .line 1003
    :cond_7
    const-string/jumbo v6, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v3, 0x7f0b1ad9

    const v1, 0x7f0b1ad8

    const v2, 0x7f0b042a

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1395
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1397
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    .line 1398
    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    .line 1397
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1399
    iget v4, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v7, :cond_2

    .line 1400
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1401
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1402
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1403
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 1408
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1409
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1410
    const-string/jumbo v5, "surface_palm_swipe"

    .line 1409
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 1411
    .local v0, "mPalmSwipeCheck":Z
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1412
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1413
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1414
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 1409
    .end local v0    # "mPalmSwipeCheck":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "mPalmSwipeCheck":Z
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1415
    goto :goto_2

    .line 1417
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_6
    move v1, v3

    .line 1418
    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 597
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 598
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    .line 599
    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 601
    const v9, 0x7f080137

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->addPreferencesFromResource(I)V

    .line 602
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setSupportMccSmartCall()V

    .line 603
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 604
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 605
    const-string/jumbo v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v11, v2, v12, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 609
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 610
    .local v4, "isKioskContainer":Z
    const-string/jumbo v9, "pen_settings_title"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSpen:Landroid/preference/Preference;

    .line 611
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v9

    if-eqz v9, :cond_31

    .line 614
    :cond_1
    :goto_0
    const-string/jumbo v9, "dock_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/preference/Preference;

    .line 615
    const-string/jumbo v9, "smartscreen_stay"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 617
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v9

    .line 616
    if-eqz v9, :cond_2

    .line 618
    const-string/jumbo v9, "smartscreen_stay"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 620
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_3

    .line 621
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 622
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 624
    :cond_3
    const-string/jumbo v9, "game_home"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    .line 625
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_4

    .line 626
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 629
    :cond_4
    const-string/jumbo v9, "display_airmessage"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 630
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_5

    .line 631
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 632
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 633
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 636
    :cond_5
    const-string/jumbo v9, "key_festival_effect"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    .line 637
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_6

    .line 638
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 639
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v13}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 642
    :cond_6
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    .line 643
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_8

    .line 644
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 645
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0b0418

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 647
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 648
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 649
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v13}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 652
    :cond_8
    const-string/jumbo v9, "call_message_spam_filter"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    .line 653
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_9

    .line 654
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 655
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v13}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 658
    :cond_9
    const-string/jumbo v9, "category_two"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCategoryTwo:Landroid/preference/PreferenceCategory;

    .line 659
    const-string/jumbo v9, "onehand_operation_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 660
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_a

    .line 661
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 662
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 665
    :cond_a
    const-string/jumbo v9, "category_three"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCategoryThree:Landroid/preference/PreferenceCategory;

    .line 666
    const-string/jumbo v9, "quick_camera_launch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    .line 667
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_b

    .line 668
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 670
    :cond_b
    const-string/jumbo v9, "pick_up_switch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 671
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_c

    .line 672
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 673
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 675
    :cond_c
    const-string/jumbo v9, "pick_up_to_call_out_switch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 676
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_d

    .line 677
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 678
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 681
    :cond_d
    const-string/jumbo v9, "screen_recorder"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    .line 682
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_e

    .line 683
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 686
    :cond_e
    const-string/jumbo v9, "smart_capture"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 687
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_f

    .line 688
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 689
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 691
    :cond_f
    const-string/jumbo v9, "merged_mute_or_pause_switch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 692
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_10

    .line 693
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 694
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 696
    :cond_10
    const-string/jumbo v9, "palm_swipe_switch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 697
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_11

    .line 698
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 699
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 702
    :cond_11
    const-string/jumbo v9, "multi_window_setting"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    .line 704
    sget-boolean v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    if-eqz v9, :cond_32

    .line 705
    const-string/jumbo v9, "accelerate_hongbao_receiving"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    .line 706
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    if-eqz v9, :cond_12

    .line 707
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 713
    :cond_12
    :goto_1
    sget-boolean v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v9, :cond_33

    .line 714
    const-string/jumbo v9, "hongbao_assistant"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 715
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_14

    .line 716
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 717
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 719
    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 725
    :cond_14
    :goto_2
    const-string/jumbo v9, "category_four"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCategoryFour:Landroid/preference/PreferenceCategory;

    .line 727
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 728
    const-string/jumbo v9, "galaxy_labs"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 737
    :cond_15
    :goto_3
    const-string/jumbo v9, "key_applock"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    .line 738
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_16

    .line 739
    const-string/jumbo v9, "applock"

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    :goto_4
    if-nez v9, :cond_36

    .line 740
    const-string/jumbo v9, "key_applock"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 746
    :cond_16
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v9

    if-eqz v9, :cond_37

    .line 747
    const-string/jumbo v9, "key_safety_assistance"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 752
    :goto_6
    const-string/jumbo v9, "key_safety_assistance"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    .line 753
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 754
    const-string/jumbo v9, "key_safety_assistance"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 756
    :cond_17
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    if-eqz v9, :cond_18

    .line 757
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 760
    :cond_18
    const-string/jumbo v9, "hdr_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    .line 762
    const-string/jumbo v9, "hdr_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 764
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    if-eqz v9, :cond_19

    .line 765
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 767
    :cond_19
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "Galaxy Note7"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_38

    .line 768
    const v9, 0x7f0b0426

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    .line 773
    :goto_7
    const-string/jumbo v9, "direct_share"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 774
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_1a

    .line 775
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 776
    const-string/jumbo v9, "direct_share"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 782
    :cond_1a
    :goto_8
    const-string/jumbo v9, "increse_touch_sensetivity"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    .line 783
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1b

    .line 784
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 787
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 791
    :cond_1b
    :goto_9
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 792
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    .line 794
    const-string/jumbo v9, "quick_dial"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    .line 795
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1c

    .line 796
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 799
    :cond_1c
    const-string/jumbo v9, "swipe_to_call_or_send_messages"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 800
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_1d

    .line 801
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 802
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 805
    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 806
    :cond_1e
    const-string/jumbo v9, "swipe_to_call_or_send_messages"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v11, "com.samsung.android.quickassist"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 810
    const-string/jumbo v9, "quick_dial"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 813
    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v11, "com.samsung.android.game.gametools"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 814
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v9

    .line 813
    if-eqz v9, :cond_21

    .line 815
    :cond_20
    const-string/jumbo v9, "game_home"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 818
    :cond_21
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v9

    if-nez v9, :cond_22

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 819
    :cond_22
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 820
    const-string/jumbo v11, "CscFeature_Common_EnableAirMessage"

    .line 819
    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 824
    :goto_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 826
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.samsung.android.myeventcenter"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 827
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v9

    .line 824
    if-eqz v9, :cond_24

    .line 828
    :cond_23
    const-string/jumbo v9, "key_festival_effect"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 831
    :cond_24
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-nez v9, :cond_25

    .line 832
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_26

    .line 833
    :cond_25
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 834
    const-string/jumbo v11, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    .line 833
    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 835
    const-string/jumbo v11, "SMARTMANAGER"

    .line 833
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 831
    if-eqz v9, :cond_27

    .line 836
    :cond_26
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 838
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_28

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_29

    .line 839
    :cond_28
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 842
    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 843
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 844
    const-string/jumbo v11, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    .line 843
    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 845
    const-string/jumbo v11, "SMARTMANAGER"

    .line 843
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 846
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_2b

    .line 847
    :cond_2a
    const-string/jumbo v9, "call_message_spam_filter"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 850
    :cond_2b
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_2c

    if-eqz v4, :cond_2d

    .line 853
    :cond_2c
    const-string/jumbo v9, "category_two"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 854
    const-string/jumbo v9, "onehand_operation_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 858
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "double_tab_launch_component"

    .line 857
    invoke-static {v9, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    .line 859
    const-string/jumbo v9, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 860
    sget-object v11, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    .line 859
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 861
    const-string/jumbo v9, "quick_camera_launch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 864
    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    .line 865
    const-string/jumbo v11, "com.samsung.android.app.scrollcapture"

    .line 864
    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 866
    const-string/jumbo v9, "smart_capture"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 869
    :cond_2f
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v11, "com.sec.app.screenrecorder"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 870
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 874
    :goto_b
    sget-object v11, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    array-length v12, v11

    move v9, v10

    :goto_c
    if-ge v9, v12, :cond_3d

    aget-object v8, v11, v9

    .line 875
    .local v8, "motionFeature":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_30

    .line 876
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 874
    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 612
    .end local v8    # "motionFeature":Ljava/lang/String;
    :cond_31
    const-string/jumbo v9, "pen_settings_title"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    :cond_32
    const-string/jumbo v9, "accelerate_hongbao_receiving"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 722
    :cond_33
    const-string/jumbo v9, "hongbao_assistant"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 730
    :cond_34
    const-string/jumbo v9, "galaxy_labs"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    .line 731
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    if-eqz v9, :cond_15

    .line 732
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 733
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_35
    move v9, v10

    .line 739
    goto/16 :goto_4

    .line 742
    :cond_36
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v13}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_5

    .line 749
    :cond_37
    const-string/jumbo v9, "key_panic_mode"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 770
    :cond_38
    const v9, 0x7f0b0425

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto/16 :goto_7

    .line 778
    :cond_39
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 779
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_8

    .line 785
    :cond_3a
    const-string/jumbo v9, "increse_touch_sensetivity"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 821
    :cond_3b
    const-string/jumbo v9, "display_airmessage"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 871
    :cond_3c
    const-string/jumbo v9, "screen_recorder"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 879
    :cond_3d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 880
    const-string/jumbo v11, "CscFeature_Setting_ConfigMotionType"

    .line 879
    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "Motion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3e

    .line 882
    const-string/jumbo v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, "NotSupportMotion":[Ljava/lang/String;
    array-length v7, v1

    .line 884
    .local v7, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v7, :cond_3e

    .line 885
    aget-object v9, v1, v3

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 884
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 891
    .end local v1    # "NotSupportMotion":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v7    # "length":I
    :cond_3e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v11, "com.samsung.android.app.galaxylabs"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3f

    if-eqz v4, :cond_40

    .line 893
    :cond_3f
    const-string/jumbo v9, "category_four"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 894
    const-string/jumbo v9, "galaxy_labs"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 896
    :cond_40
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v9

    if-nez v9, :cond_41

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_47

    .line 897
    :cond_41
    const-string/jumbo v9, "galaxy_labs"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 898
    const-string/jumbo v9, "category_two"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 899
    const-string/jumbo v9, "category_three"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 900
    const-string/jumbo v9, "category_four"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 909
    :goto_e
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_42

    .line 910
    const-string/jumbo v9, "dock_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 913
    :cond_42
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v9

    if-nez v9, :cond_48

    .line 914
    const-string/jumbo v9, "active_key_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 921
    :cond_43
    :goto_f
    const/4 v6, 0x0

    .line 922
    .local v6, "knoxCustomSettingsState":I
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v5

    .line 923
    .local v5, "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    if-eqz v5, :cond_44

    .line 924
    invoke-virtual {v5}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v6

    .line 926
    :cond_44
    and-int/lit8 v9, v6, 0x8

    if-eqz v9, :cond_45

    .line 927
    const-string/jumbo v9, "multi_window_setting"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 932
    :cond_45
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    instance-of v9, v9, Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_46

    .line 933
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 937
    :cond_46
    new-instance v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 596
    return-void

    .line 902
    .end local v5    # "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    .end local v6    # "knoxCustomSettingsState":I
    :cond_47
    const-string/jumbo v9, "pen_settings_title"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 903
    const-string/jumbo v9, "dock_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 904
    const-string/jumbo v9, "smartscreen_stay"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 905
    const-string/jumbo v9, "key_panic_mode"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 906
    const-string/jumbo v9, "key_safety_assistance"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto :goto_e

    .line 916
    :cond_48
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v9

    if-eqz v9, :cond_43

    .line 917
    const-string/jumbo v9, "active_key_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const v11, 0x7f0b034a

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_f
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1480
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 1477
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1426
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1432
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 1435
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1437
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_e

    .line 1439
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1441
    :cond_4
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    if-eqz v0, :cond_5

    .line 1442
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 1443
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1446
    :cond_5
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v0, :cond_6

    .line 1447
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_6

    .line 1448
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1451
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_7

    .line 1452
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1454
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_8

    .line 1455
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1457
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    if-eqz v0, :cond_9

    .line 1458
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1460
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_a

    .line 1461
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1463
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_b

    .line 1464
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1466
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_c

    .line 1467
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1469
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_d

    .line 1470
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1473
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AdvancedFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 1425
    return-void

    .line 1438
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_4

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    move-object v7, p2

    .line 1595
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x1

    .line 1597
    .local v6, "value":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1598
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1599
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "double_tab_launch"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v7, p2

    .line 1600
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1601
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "UFQC"

    const/16 v10, 0x3e8

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1605
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1606
    const v8, 0x7f10018a

    .line 1605
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    .line 1607
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1608
    sget v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x3e8

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1607
    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1798
    :cond_0
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1799
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1800
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v9, "quick_dial"

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1801
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1802
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.action.quickdial"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1803
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "status"

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1804
    sget-object v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1806
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1807
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1808
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_adjust_touch"

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v7, 0x1

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1811
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1812
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "swipe_to_call_message"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1813
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1814
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1815
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1816
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_43

    const v7, 0x7f0b1ad8

    :goto_5
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1820
    :cond_3
    const/4 v7, 0x1

    return v7

    .line 1595
    .end local v6    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "value":I
    goto/16 :goto_0

    .line 1603
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "UFQC"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1608
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1609
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1610
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1611
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1612
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1613
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    const v7, 0x7f0b1ad8

    :goto_6
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1614
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1615
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    .line 1616
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x3e8

    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1614
    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1621
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "motion_pick_up"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1613
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v7

    if-eqz v7, :cond_9

    const v7, 0x7f0b09a0

    goto :goto_6

    :cond_9
    const v7, 0x7f0b099f

    goto :goto_6

    .line 1616
    :cond_a
    const/4 v7, 0x0

    goto :goto_7

    .line 1618
    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, 0x7f0b1ad8

    :goto_9
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_8

    .line 1619
    :cond_c
    const v7, 0x7f0b1ad9

    goto :goto_9

    .line 1622
    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1623
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1624
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1625
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1626
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_e

    const v7, 0x7f0b1ad8

    :goto_a
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1627
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1628
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    .line 1629
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v7, 0x3e8

    :goto_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1627
    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1634
    :goto_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1635
    const-string/jumbo v8, "motion_pick_up_to_call_out"

    .line 1634
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1626
    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v7

    if-eqz v7, :cond_f

    const v7, 0x7f0b099e

    goto :goto_a

    :cond_f
    const v7, 0x7f0b099d

    goto :goto_a

    .line 1629
    :cond_10
    const/4 v7, 0x0

    goto :goto_b

    .line 1631
    :cond_11
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_12

    const v7, 0x7f0b1ad8

    :goto_d
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_c

    .line 1632
    :cond_12
    const v7, 0x7f0b1ad9

    goto :goto_d

    .line 1636
    :cond_13
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1637
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1638
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1639
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1640
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_15

    const v7, 0x7f0b1ad8

    :goto_e
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1642
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1643
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    .line 1644
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_16

    const/16 v7, 0x3e8

    :goto_f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1642
    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1649
    :goto_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "motion_merged_mute_pause"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1650
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-nez v7, :cond_14

    .line 1651
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "motion_overturn"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1654
    :cond_14
    sget-object v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const/high16 v8, 0x200000

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1655
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "surface_palm_touch"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1641
    :cond_15
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v7

    goto :goto_e

    .line 1644
    :cond_16
    const/4 v7, 0x0

    goto :goto_f

    .line 1646
    :cond_17
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_18

    const v7, 0x7f0b1ad8

    :goto_11
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_10

    .line 1647
    :cond_18
    const v7, 0x7f0b1ad9

    goto :goto_11

    .line 1657
    :cond_19
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1658
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    .line 1659
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v7

    .line 1658
    if-eqz v7, :cond_1a

    .line 1661
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v7

    .line 1658
    if-eqz v7, :cond_1a

    .line 1662
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    .line 1663
    :cond_1a
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1664
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    .line 1666
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "surface_palm_swipe"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1667
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1668
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1669
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1670
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1c

    const v7, 0x7f0b1ad8

    :goto_12
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1672
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1673
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    .line 1674
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1d

    const/16 v7, 0x3e8

    :goto_13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1672
    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1671
    :cond_1c
    const v7, 0x7f0b042a

    goto :goto_12

    .line 1674
    :cond_1d
    const/4 v7, 0x0

    goto :goto_13

    .line 1676
    :cond_1e
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1f

    const v7, 0x7f0b1ad8

    :goto_14
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 1677
    :cond_1f
    const v7, 0x7f0b1ad9

    goto :goto_14

    .line 1680
    :cond_20
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1681
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "finger_magnifier"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_21

    move-object v7, p2

    .line 1682
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1681
    if-eqz v7, :cond_21

    .line 1683
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->smartCaptureDisablePopup()V

    goto/16 :goto_3

    .line 1685
    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "enable_smart_capture"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1686
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1687
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1688
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1689
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_22

    const v7, 0x7f0b1ad8

    :goto_15
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1691
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1692
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f100199

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    .line 1693
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_23

    const/16 v7, 0x3e8

    :goto_16
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1691
    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1690
    :cond_22
    const v7, 0x7f0b040f

    goto :goto_15

    .line 1693
    :cond_23
    const/4 v7, 0x0

    goto :goto_16

    .line 1695
    :cond_24
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_25

    const v7, 0x7f0b1ad8

    :goto_17
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 1696
    :cond_25
    const v7, 0x7f0b1ad9

    goto :goto_17

    .line 1699
    :cond_26
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1700
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1701
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1702
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_27

    const v7, 0x7f0b1ad8

    :goto_18
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1703
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_share"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1704
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1705
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_28

    const/16 v7, 0x3e8

    :goto_19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1704
    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1702
    :cond_27
    const v7, 0x7f0b041c

    goto :goto_18

    .line 1706
    :cond_28
    const/4 v7, 0x0

    goto :goto_19

    .line 1707
    :cond_29
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1708
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2a

    .line 1709
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v7

    .line 1708
    if-eqz v7, :cond_2a

    .line 1711
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v7

    .line 1708
    if-eqz v7, :cond_2a

    .line 1712
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    .line 1713
    :cond_2a
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1714
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    .line 1716
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1717
    const-string/jumbo v8, "intelligent_sleep_mode"

    .line 1716
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1718
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1719
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1720
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2c

    const v7, 0x7f0b1ad8

    :goto_1a
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1722
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1723
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f100197

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    .line 1724
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v7, 0x3e8

    :goto_1b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1722
    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1721
    :cond_2c
    const v7, 0x7f0b042b

    goto :goto_1a

    .line 1724
    :cond_2d
    const/4 v7, 0x0

    goto :goto_1b

    .line 1726
    :cond_2e
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1727
    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    .line 1728
    const/4 v0, 0x1

    .line 1729
    .local v0, "bKeyboardTestResult":Z
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1730
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1731
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2f

    .line 1732
    const/4 v0, 0x0

    .line 1736
    .end local v1    # "conf":Landroid/content/res/Configuration;
    :cond_2f
    if-nez v0, :cond_31

    .line 1737
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "any_screen_enabled"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_30

    const/4 v7, 0x1

    :goto_1c
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1738
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0c0c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 1737
    :cond_30
    const/4 v7, 0x0

    goto :goto_1c

    .line 1739
    :cond_31
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isReadyOneHandedOperationStatusEnable()Z

    move-result v7

    if-nez v7, :cond_32

    .line 1740
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeOneHandOperationDisablePopup()V

    goto/16 :goto_3

    .line 1742
    :cond_32
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_3

    .line 1745
    .end local v0    # "bKeyboardTestResult":Z
    :cond_33
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_3

    .line 1747
    :cond_34
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 1748
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1749
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1750
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_35

    const v7, 0x7f0b1ad8

    :goto_1d
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1755
    :goto_1e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "airmessage_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1751
    :cond_35
    const v7, 0x7f0b03fe

    goto :goto_1d

    .line 1753
    :cond_36
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 1757
    :cond_37
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1758
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    .line 1759
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1760
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hdr_effect"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1761
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_38

    const v7, 0x7f0b1ad8

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1f
    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1762
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1763
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f1001a1

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    .line 1764
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_39

    const/16 v7, 0x3e8

    :goto_20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1762
    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1761
    :cond_38
    sget-object v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto :goto_1f

    .line 1764
    :cond_39
    const/4 v7, 0x0

    goto :goto_20

    .line 1765
    :cond_3a
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1766
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1767
    const-string/jumbo v8, "red_packet_do_not_show"

    const/4 v9, 0x0

    .line 1766
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3c

    const/4 v5, 0x1

    .line 1768
    .local v5, "showDialog":Z
    :goto_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1769
    const-string/jumbo v8, "hongbao_assistant"

    const/4 v9, 0x0

    .line 1768
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3d

    const/4 v2, 0x1

    .local v2, "enabled":Z
    :goto_22
    move-object v7, p2

    .line 1770
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1771
    .local v4, "isChecked":Z
    const-string/jumbo v7, "Usefulfeature"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPreferenceChange  showDialog:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isChecked:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1772
    const-string/jumbo v9, " enabled:"

    .line 1771
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    if-eq v2, v4, :cond_41

    .line 1776
    if-eqz v4, :cond_3b

    .line 1781
    :cond_3b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "hongbao_assistant"

    .line 1782
    if-eqz v4, :cond_3e

    const/4 v7, 0x1

    .line 1781
    :goto_23
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1783
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "red_packet_mode"

    .line 1784
    if-eqz v4, :cond_3f

    const/4 v7, 0x1

    .line 1783
    :goto_24
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1785
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1786
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.samsung.hongbaoassistant"

    .line 1787
    const-string/jumbo v8, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    .line 1786
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1788
    if-eqz v4, :cond_40

    .line 1789
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    .line 1766
    .end local v2    # "enabled":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "isChecked":Z
    .end local v5    # "showDialog":Z
    :cond_3c
    const/4 v5, 0x0

    .restart local v5    # "showDialog":Z
    goto/16 :goto_21

    .line 1768
    :cond_3d
    const/4 v2, 0x0

    .restart local v2    # "enabled":Z
    goto :goto_22

    .line 1782
    .restart local v4    # "isChecked":Z
    :cond_3e
    const/4 v7, 0x0

    goto :goto_23

    .line 1784
    :cond_3f
    const/4 v7, 0x0

    goto :goto_24

    .line 1791
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_40
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_3

    .line 1795
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_41
    const-string/jumbo v7, "Usefulfeature"

    const-string/jumbo v8, "Changed form Quick Button."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1808
    .end local v2    # "enabled":Z
    .end local v4    # "isChecked":Z
    .end local v5    # "showDialog":Z
    :cond_42
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1817
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_43
    const v7, 0x7f0b0435

    goto/16 :goto_5
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1486
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1488
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1489
    const-string/jumbo v4, "com.samsung.android.game.gamehome.action.SETTING"

    .line 1488
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1490
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in GameHome"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1495
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1497
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1498
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.bst.airmessage"

    .line 1499
    const-string/jumbo v5, "com.bst.airmessage.settings.AirMessageSettings"

    .line 1498
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1500
    const/4 v2, 0x1

    .line 1501
    .local v2, "isCoverAttached":Z
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1502
    :cond_2
    const/4 v2, 0x0

    .line 1504
    :cond_3
    const-string/jumbo v3, "S View cover attached"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1505
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1506
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isCoverAttached":Z
    :catch_1
    move-exception v0

    .line 1507
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mDisplayAirmessage"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1510
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1512
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1513
    const-string/jumbo v4, "com.samsung.android.myeventcenter.MY_EVENT"

    .line 1512
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1514
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1515
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 1516
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mFestivalEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1519
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1521
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1522
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1523
    const-string/jumbo v3, "com.android.phone"

    .line 1524
    const-string/jumbo v4, "com.android.phone.smartcall.SmartCallSettings"

    .line 1523
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V

    .line 1526
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1527
    const v4, 0x7f100186

    .line 1526
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_SMARTCALL:I

    .line 1528
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_SMARTCALL:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1529
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v0

    .line 1530
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in IdentifyUnsavedNumbers"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1533
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1535
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1536
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1537
    const-string/jumbo v3, "com.sec.android.app.firewall"

    .line 1538
    const-string/jumbo v4, "com.sec.android.app.firewall.spamfilter.SpamFilterSettings"

    .line 1537
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1539
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1540
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v0

    .line 1541
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in CalMsgSpamFiter"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1544
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1546
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.app.screenrecorder.START_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1547
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1549
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_5
    move-exception v0

    .line 1550
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in ScreenRecorder"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1553
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1554
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100226

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1556
    :try_start_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1557
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    const-string/jumbo v3, "com.sec.android.app.safetyassurance"

    const-string/jumbo v4, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 1560
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_6
    move-exception v0

    .line 1561
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in SendSOSMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1564
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1566
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1567
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1568
    const-string/jumbo v3, "com.samsung.android.app.galaxylabs"

    .line 1569
    const-string/jumbo v4, "com.samsung.android.app.galaxylabs.GalaxyLabsMainActivity"

    .line 1568
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 1571
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_7
    move-exception v0

    .line 1572
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in GalaxyLabs"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 1581
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1582
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->inEnabledAppearance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1583
    return v4

    .line 1585
    :cond_0
    const-string/jumbo v2, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    const v3, 0x7f0b0423

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1588
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 32

    .prologue
    .line 1014
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 1016
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1018
    .local v13, "isScreenCaptureEnabled":Ljava/lang/Boolean;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1019
    const-string/jumbo v28, "false"

    const/16 v29, 0x0

    aput-object v28, v25, v29

    .line 1021
    .local v25, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v28

    .line 1022
    const-string/jumbo v29, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 1023
    const-string/jumbo v30, "isScreenCaptureEnabled"

    .line 1021
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1024
    .local v12, "isScreenCapture":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v12, v0, :cond_0

    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v12, v0, :cond_0

    .line 1025
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1031
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1032
    const-string/jumbo v29, "access_control_enabled"

    const/16 v30, 0x0

    .line 1031
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 1033
    .local v21, "onInteractionConrol":I
    const/16 v28, 0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 1034
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1036
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 1037
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v28

    if-nez v28, :cond_2

    .line 1038
    sget-object v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1050
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1051
    const-string/jumbo v29, "spam_call_enable"

    const/16 v30, 0x0

    .line 1050
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_26

    const/4 v14, 0x1

    .line 1052
    .local v14, "mIdentifyCheck":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    if-eqz v14, :cond_27

    const v28, 0x7f0b1ad8

    :goto_2
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1055
    const-string/jumbo v29, "spam_call_enable"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    .line 1054
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1059
    .end local v14    # "mIdentifyCheck":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1061
    const-string/jumbo v30, "current_sec_theme_package_festival_enabled"

    const/16 v31, 0x0

    .line 1060
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_28

    .line 1061
    const v28, 0x7f0b1ad8

    .line 1060
    :goto_3
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1064
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1066
    const-string/jumbo v30, "spam_filter_enable"

    const/16 v31, 0x0

    .line 1065
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_29

    .line 1066
    const v28, 0x7f0b1ad8

    .line 1065
    :goto_4
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1069
    const-string/jumbo v29, "spam_filter_enable"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    .line 1069
    const/16 v31, 0x1

    .line 1068
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1072
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    .line 1073
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v28

    if-nez v28, :cond_2b

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1075
    const-string/jumbo v30, "double_tab_launch"

    const/16 v31, 0x0

    .line 1074
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_2a

    const/16 v28, 0x1

    :goto_5
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1081
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    .line 1082
    const/16 v28, 0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_2e

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1084
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_2d

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1087
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b09a0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1109
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    .line 1110
    const/16 v28, 0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_36

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1112
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_35

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1115
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v28

    if-eqz v28, :cond_34

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b099e

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1138
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    .line 1139
    const/16 v28, 0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_3d

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1141
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_3c

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1165
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    .line 1167
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_43

    .line 1168
    const-string/jumbo v28, "Usefulfeature"

    const-string/jumbo v29, "MDM: Screen Capture Disabled"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1170
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_42

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b042a

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1177
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "surface_palm_swipe"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1194
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1195
    const-string/jumbo v29, "surface_palm_swipe"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    .line 1195
    const/16 v31, 0x1

    .line 1194
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1199
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1201
    const-string/jumbo v29, "enable_smart_capture"

    const/16 v30, 0x1

    .line 1200
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_48

    const/16 v20, 0x1

    .line 1202
    .local v20, "mSmartCaptureCheck":Z
    :goto_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_4a

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v20, :cond_49

    const v28, 0x7f0b1ad8

    :goto_d
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1211
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1212
    const-string/jumbo v29, "enable_smart_capture"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    .line 1211
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1214
    .end local v20    # "mSmartCaptureCheck":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-nez v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4c

    .line 1216
    :cond_c
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1217
    const-string/jumbo v29, "access_control_enabled"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    .line 1217
    const/16 v31, 0x1

    .line 1216
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1220
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 1221
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v28

    .line 1222
    const-string/jumbo v29, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    .line 1221
    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    .line 1220
    if-eqz v28, :cond_e

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 1224
    .local v8, "conf":Landroid/content/res/Configuration;
    iget v0, v8, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1227
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_4d

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b042a

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1236
    .end local v8    # "conf":Landroid/content/res/Configuration;
    :cond_e
    :goto_10
    sget-boolean v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    if-eqz v28, :cond_f

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1239
    const-string/jumbo v30, "red_packet_mode"

    const/16 v31, 0x0

    .line 1238
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_4e

    .line 1239
    const v28, 0x7f0b1ad8

    .line 1238
    :goto_11
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1242
    const-string/jumbo v29, "red_packet_mode"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    .line 1242
    const/16 v31, 0x1

    .line 1241
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1247
    :cond_f
    sget-boolean v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v28, :cond_10

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_10

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1250
    const-string/jumbo v29, "hongbao_assistant"

    const/16 v30, 0x0

    .line 1249
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_4f

    const/4 v11, 0x1

    .line 1251
    .local v11, "hongbaoAssistantCheck":Z
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v11, :cond_50

    const v28, 0x7f0b1ad8

    :goto_13
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1255
    const-string/jumbo v29, "hongbao_assistant"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    .line 1255
    const/16 v31, 0x1

    .line 1254
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1259
    .end local v11    # "hongbaoAssistantCheck":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    .line 1260
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1262
    const-string/jumbo v29, "app_lock_enabled"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    .line 1261
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1264
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_12

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1266
    const-string/jumbo v29, "send_emergency_message"

    const/16 v30, 0x0

    .line 1265
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_51

    const/16 v19, 0x1

    .line 1267
    .local v19, "mSendSOSMessagecheck":Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    move-object/from16 v29, v0

    if-eqz v19, :cond_52

    const v28, 0x7f0b1ad8

    :goto_15
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1270
    const-string/jumbo v29, "send_emergency_message"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    .line 1270
    const/16 v31, 0x1

    .line 1269
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1273
    .end local v19    # "mSendSOSMessagecheck":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "direct_share"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_53

    const/4 v9, 0x1

    .line 1275
    .local v9, "directShareCheck":Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v9, :cond_54

    const v28, 0x7f0b1ad8

    :goto_17
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1279
    .end local v9    # "directShareCheck":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_14

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1281
    const-string/jumbo v29, "intelligent_sleep_mode"

    const/16 v30, 0x1

    .line 1280
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_55

    const/16 v26, 0x1

    .line 1282
    .local v26, "smartStayCheck":Z
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v26, :cond_56

    const v28, 0x7f0b1ad8

    :goto_19
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1287
    const-string/jumbo v29, "intelligent_sleep_mode"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    .line 1287
    const/16 v31, 0x1

    .line 1286
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1290
    .end local v26    # "smartStayCheck":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_15

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1292
    const-string/jumbo v29, "any_screen_enabled"

    const/16 v30, 0x0

    .line 1291
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_57

    const/4 v5, 0x1

    .line 1293
    .local v5, "bOnehandCheck":Z
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1294
    const-string/jumbo v29, "one_handed_op_wakeup_type"

    const/16 v30, 0x1

    .line 1293
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_58

    const/4 v6, 0x1

    .line 1295
    .local v6, "bOnehandType":Z
    :goto_1b
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v28

    if-eqz v28, :cond_59

    sget-object v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_59

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1297
    const/4 v5, 0x0

    .line 1301
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v5, :cond_5b

    if-eqz v6, :cond_5a

    const v28, 0x7f0b0c05

    :goto_1d
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1304
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1305
    const-string/jumbo v29, "any_screen_enabled"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    .line 1305
    const/16 v31, 0x1

    .line 1304
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1308
    .end local v5    # "bOnehandCheck":Z
    .end local v6    # "bOnehandType":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1310
    const-string/jumbo v29, "airmessage_on"

    const/16 v30, 0x1

    .line 1309
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_5c

    const/4 v4, 0x1

    .line 1311
    .local v4, "airmessageCheck":Z
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v4, :cond_5d

    const v28, 0x7f0b1ad8

    :goto_1f
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1315
    .end local v4    # "airmessageCheck":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_17

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "hdr_effect"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_5e

    const/4 v10, 0x1

    .line 1317
    .local v10, "hdreffectCheck":Z
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "sem_perfomance_mode"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 1318
    .local v22, "perfomanceMode":I
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v28

    if-eqz v28, :cond_5f

    sget-object v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_5f

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1320
    const/4 v10, 0x0

    .line 1330
    .end local v10    # "hdreffectCheck":Z
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v10, :cond_62

    const v28, 0x7f0b1ad8

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v28

    :goto_22
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1334
    .end local v22    # "perfomanceMode":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_18

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1336
    const-string/jumbo v30, "auto_adjust_touch"

    const/16 v31, 0x0

    .line 1335
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_63

    const/16 v28, 0x1

    :goto_23
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1338
    const-string/jumbo v29, "auto_adjust_touch"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    .line 1338
    const/16 v31, 0x1

    .line 1337
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1341
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_19

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v28, v0

    const-string/jumbo v29, "quick_dial"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 1343
    .local v23, "quickdialCheck":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1345
    .end local v23    # "quickdialCheck":Ljava/lang/Boolean;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1b

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1347
    const-string/jumbo v29, "swipe_to_call_message"

    const/16 v30, 0x0

    .line 1346
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_64

    const/16 v27, 0x1

    .line 1348
    .local v27, "swipeToCallCheck":Z
    :goto_24
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v27, :cond_65

    const v28, 0x7f0b1ad8

    :goto_25
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 1354
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1355
    const-string/jumbo v29, "swipe_to_call_message"

    invoke-static/range {v29 .. v29}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    .line 1354
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1358
    .end local v27    # "swipeToCallCheck":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1c

    .line 1359
    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v28

    if-nez v28, :cond_1c

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1364
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 1365
    const/16 v24, 0x0

    .line 1366
    .local v24, "relativeLink":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1d

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/settings/widget/RelativeLinkView;->resetLinkData()V

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getListView()Landroid/widget/ListView;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/settings/widget/RelativeLinkView;->getRelativeLinkView()Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1370
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1e

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 1372
    const/16 v24, 0x1

    .line 1374
    :cond_1e
    sget-object v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1375
    const-string/jumbo v29, "sem_perfomance_mode"

    const/16 v30, 0x0

    .line 1374
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 1376
    .restart local v22    # "perfomanceMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v28, v0

    if-eqz v28, :cond_20

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v28, 0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    :cond_1f
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v28

    if-eqz v28, :cond_66

    sget-object v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_66

    .line 1380
    :cond_20
    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v28, v0

    if-eqz v28, :cond_21

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 1382
    const/16 v24, 0x1

    .line 1384
    :cond_21
    if-eqz v24, :cond_22

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getListView()Landroid/widget/ListView;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 1390
    .end local v22    # "perfomanceMode":I
    .end local v24    # "relativeLink":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v30, v0

    const-string/jumbo v31, "AdvancedFeatures"

    invoke-virtual/range {v28 .. v31}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 1013
    return-void

    .line 1041
    :cond_23
    sget-object v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 1042
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v28

    if-eqz v28, :cond_24

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMccSmartCall()Z

    move-result v28

    if-eqz v28, :cond_25

    .line 1045
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1043
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1050
    :cond_26
    const/4 v14, 0x0

    .restart local v14    # "mIdentifyCheck":Z
    goto/16 :goto_1

    .line 1053
    :cond_27
    const v28, 0x7f0b1ad9

    goto/16 :goto_2

    .line 1062
    .end local v14    # "mIdentifyCheck":Z
    :cond_28
    const v28, 0x7f0b1ad9

    goto/16 :goto_3

    .line 1067
    :cond_29
    const v28, 0x7f0b1ad9

    goto/16 :goto_4

    .line 1074
    :cond_2a
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 1077
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 1090
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b099f

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 1093
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b1ad9

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 1096
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1098
    const-string/jumbo v29, "motion_pick_up"

    const/16 v30, 0x0

    .line 1097
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_2f

    const/16 v17, 0x1

    .line 1099
    .local v17, "mPickupCheck":Z
    :goto_27
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_32

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v17, :cond_30

    const v28, 0x7f0b1ad8

    :goto_28
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 1097
    .end local v17    # "mPickupCheck":Z
    :cond_2f
    const/16 v17, 0x0

    .restart local v17    # "mPickupCheck":Z
    goto :goto_27

    .line 1102
    :cond_30
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v28

    if-eqz v28, :cond_31

    const v28, 0x7f0b09a0

    goto :goto_28

    :cond_31
    const v28, 0x7f0b099f

    goto :goto_28

    .line 1104
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v17, :cond_33

    const v28, 0x7f0b1ad8

    :goto_29
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 1105
    :cond_33
    const v28, 0x7f0b1ad9

    goto :goto_29

    .line 1118
    .end local v17    # "mPickupCheck":Z
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b099d

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 1121
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b1ad9

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 1124
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1126
    const-string/jumbo v29, "motion_pick_up_to_call_out"

    const/16 v30, 0x0

    .line 1125
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_37

    const/16 v18, 0x1

    .line 1127
    .local v18, "mPickuptoCallOutCheck":Z
    :goto_2a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_3a

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v18, :cond_38

    const v28, 0x7f0b1ad8

    :goto_2b
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 1125
    .end local v18    # "mPickuptoCallOutCheck":Z
    :cond_37
    const/16 v18, 0x0

    .restart local v18    # "mPickuptoCallOutCheck":Z
    goto :goto_2a

    .line 1130
    :cond_38
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v28

    if-eqz v28, :cond_39

    const v28, 0x7f0b099e

    goto :goto_2b

    :cond_39
    const v28, 0x7f0b099d

    goto :goto_2b

    .line 1132
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    .line 1133
    if-eqz v18, :cond_3b

    const v28, 0x7f0b1ad8

    .line 1132
    :goto_2c
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 1134
    :cond_3b
    const v28, 0x7f0b1ad9

    goto :goto_2c

    .line 1146
    .end local v18    # "mPickuptoCallOutCheck":Z
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b1ad9

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 1149
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1151
    const-string/jumbo v29, "motion_merged_mute_pause"

    const/16 v30, 0x0

    .line 1150
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_3e

    const/4 v15, 0x1

    .line 1152
    .local v15, "mMergedMutePauseCheck":Z
    :goto_2d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_40

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    .line 1156
    if-eqz v15, :cond_3f

    const v28, 0x7f0b1ad8

    .line 1155
    :goto_2e
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 1150
    .end local v15    # "mMergedMutePauseCheck":Z
    :cond_3e
    const/4 v15, 0x0

    .restart local v15    # "mMergedMutePauseCheck":Z
    goto :goto_2d

    .line 1157
    :cond_3f
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v28

    goto :goto_2e

    .line 1159
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    .line 1160
    if-eqz v15, :cond_41

    const v28, 0x7f0b1ad8

    .line 1159
    :goto_2f
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 1161
    :cond_41
    const v28, 0x7f0b1ad9

    goto :goto_2f

    .line 1175
    .end local v15    # "mMergedMutePauseCheck":Z
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b1ad9

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 1179
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1181
    const-string/jumbo v29, "surface_palm_swipe"

    const/16 v30, 0x0

    .line 1180
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_44

    const/16 v16, 0x1

    .line 1182
    .local v16, "mPalmSwipeCheck":Z
    :goto_30
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v28

    if-eqz v28, :cond_46

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v16, :cond_45

    const v28, 0x7f0b1ad8

    :goto_31
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 1180
    .end local v16    # "mPalmSwipeCheck":Z
    :cond_44
    const/16 v16, 0x0

    .restart local v16    # "mPalmSwipeCheck":Z
    goto :goto_30

    .line 1186
    :cond_45
    const v28, 0x7f0b042a

    goto :goto_31

    .line 1188
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v16, :cond_47

    const v28, 0x7f0b1ad8

    :goto_32
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 1189
    :cond_47
    const v28, 0x7f0b1ad9

    goto :goto_32

    .line 1200
    .end local v16    # "mPalmSwipeCheck":Z
    :cond_48
    const/16 v20, 0x0

    .restart local v20    # "mSmartCaptureCheck":Z
    goto/16 :goto_c

    .line 1206
    :cond_49
    const v28, 0x7f0b040f

    goto/16 :goto_d

    .line 1208
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v29, v0

    if-eqz v20, :cond_4b

    const v28, 0x7f0b1ad8

    :goto_33
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 1209
    :cond_4b
    const v28, 0x7f0b1ad9

    goto :goto_33

    .line 1215
    .end local v20    # "mSmartCaptureCheck":Z
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-nez v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    goto/16 :goto_f

    .line 1231
    .restart local v8    # "conf":Landroid/content/res/Configuration;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const v29, 0x7f0b1ad9

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 1240
    .end local v8    # "conf":Landroid/content/res/Configuration;
    :cond_4e
    const v28, 0x7f0b1ad9

    goto/16 :goto_11

    .line 1249
    :cond_4f
    const/4 v11, 0x0

    .restart local v11    # "hongbaoAssistantCheck":Z
    goto/16 :goto_12

    .line 1253
    :cond_50
    const v28, 0x7f0b1ad9

    goto/16 :goto_13

    .line 1265
    .end local v11    # "hongbaoAssistantCheck":Z
    :cond_51
    const/16 v19, 0x0

    .restart local v19    # "mSendSOSMessagecheck":Z
    goto/16 :goto_14

    .line 1268
    :cond_52
    const v28, 0x7f0b1ad9

    goto/16 :goto_15

    .line 1274
    .end local v19    # "mSendSOSMessagecheck":Z
    :cond_53
    const/4 v9, 0x0

    .restart local v9    # "directShareCheck":Z
    goto/16 :goto_16

    .line 1277
    :cond_54
    const v28, 0x7f0b041c

    goto/16 :goto_17

    .line 1280
    .end local v9    # "directShareCheck":Z
    :cond_55
    const/16 v26, 0x0

    .restart local v26    # "smartStayCheck":Z
    goto/16 :goto_18

    .line 1285
    :cond_56
    const v28, 0x7f0b042b

    goto/16 :goto_19

    .line 1291
    .end local v26    # "smartStayCheck":Z
    :cond_57
    const/4 v5, 0x0

    .restart local v5    # "bOnehandCheck":Z
    goto/16 :goto_1a

    .line 1293
    :cond_58
    const/4 v6, 0x0

    .restart local v6    # "bOnehandType":Z
    goto/16 :goto_1b

    .line 1299
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1c

    .line 1303
    :cond_5a
    const v28, 0x7f0b0c03

    goto/16 :goto_1d

    :cond_5b
    const v28, 0x7f0b041a

    goto/16 :goto_1d

    .line 1309
    .end local v5    # "bOnehandCheck":Z
    .end local v6    # "bOnehandType":Z
    :cond_5c
    const/4 v4, 0x0

    .restart local v4    # "airmessageCheck":Z
    goto/16 :goto_1e

    .line 1313
    :cond_5d
    const v28, 0x7f0b03fe

    goto/16 :goto_1f

    .line 1316
    .end local v4    # "airmessageCheck":Z
    :cond_5e
    const/4 v10, 0x0

    .restart local v10    # "hdreffectCheck":Z
    goto/16 :goto_20

    .line 1321
    .restart local v22    # "perfomanceMode":I
    :cond_5f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v28

    if-eqz v28, :cond_61

    const/16 v28, 0x2

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_61

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "pbm_video_enhancer"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_60

    const/4 v7, 0x1

    .line 1325
    .local v7, "checked":Z
    :goto_34
    move v10, v7

    .line 1326
    .local v10, "hdreffectCheck":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const v30, 0x7f0b0afe

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    const v30, 0x7f0b042c

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 1324
    .end local v7    # "checked":Z
    .local v10, "hdreffectCheck":Z
    :cond_60
    const/4 v7, 0x0

    goto :goto_34

    .line 1328
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    goto/16 :goto_21

    .line 1332
    .end local v10    # "hdreffectCheck":Z
    :cond_62
    sget-object v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto/16 :goto_22

    .line 1335
    .end local v22    # "perfomanceMode":I
    :cond_63
    const/16 v28, 0x0

    goto/16 :goto_23

    .line 1346
    :cond_64
    const/16 v27, 0x0

    .restart local v27    # "swipeToCallCheck":Z
    goto/16 :goto_24

    .line 1352
    :cond_65
    const v28, 0x7f0b0435

    goto/16 :goto_25

    .line 1377
    .end local v27    # "swipeToCallCheck":Z
    .restart local v22    # "perfomanceMode":I
    .restart local v24    # "relativeLink":Z
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 1378
    const/16 v24, 0x1

    goto/16 :goto_26
.end method
