.class public Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$17;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$18;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$19;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$1;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$3;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$4;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$6;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$7;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$8;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static option_flag:I


# instance fields
.field public interactioncontrol:Z

.field private mAccessControlDialog:Landroid/app/AlertDialog;

.field private mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mAutoClickDialog:Landroid/app/AlertDialog;

.field private mAutoclickPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDialogTitle:Ljava/lang/String;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private final mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSingleTapModeDialog:Landroid/app/AlertDialog;

.field private mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

.field private mToggleAccessControlObserver:Landroid/database/ContentObserver;

.field private mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mToggleAssistantMenuObserver:Landroid/database/ContentObserver;

.field private mToggleAutoClickControlObserver:Landroid/database/ContentObserver;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field public magnifier:Z

.field public onhandoperation:Z

.field public stalkback:Z

.field public talkback:Z

.field public universalswitch:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isScreenLockUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->setScreenLockUsedSetting(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->switchOnToast()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->turnOnOffInteractionControl(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateMobilityPreferences()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateServicesPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    .line 1146
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$8;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$8;-><init>()V

    .line 1145
    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 136
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->universalswitch:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->talkback:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->stalkback:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->interactioncontrol:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->magnifier:Z

    .line 137
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    .line 138
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAccessControlDialog:Landroid/app/AlertDialog;

    .line 139
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoClickDialog:Landroid/app/AlertDialog;

    .line 145
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$1;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 194
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$3;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$3;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    .line 193
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

    .line 202
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$4;

    .line 203
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 202
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$4;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    .line 210
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;

    .line 211
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 210
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlObserver:Landroid/database/ContentObserver;

    .line 221
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$6;

    .line 222
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 221
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$6;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAssistantMenuObserver:Landroid/database/ContentObserver;

    .line 229
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$7;

    .line 230
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 229
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$7;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAutoClickControlObserver:Landroid/database/ContentObserver;

    .line 1383
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 102
    return-void
.end method

.method private cancelReduceSizeBroadcast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "any_screen_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "is_enabled"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 647
    return-void
.end method

.method private getCurrentSecurityTitle()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0b08fe

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1541
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1542
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1541
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1543
    .local v0, "quality":I
    sparse-switch v0, :sswitch_data_0

    .line 1559
    :cond_0
    const v1, 0x7f0b02c8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1546
    :sswitch_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 1547
    const v2, 0x7f0b110c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1546
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1551
    :sswitch_1
    new-array v1, v4, [Ljava/lang/Object;

    .line 1552
    const v2, 0x7f0b110e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1551
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1554
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1555
    new-array v1, v4, [Ljava/lang/Object;

    .line 1556
    const v2, 0x7f0b110a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1555
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1543
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private initializeAllPreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 658
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "assistant_menu_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 659
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.app.assistantmenu"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_1

    .line 660
    :cond_0
    const-string/jumbo v6, "assistant_menu_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    .line 666
    :goto_0
    const-string/jumbo v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 667
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 668
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 669
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 670
    const v7, 0x7f0c0088

    .line 669
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 671
    .local v5, "timeoutValues":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 672
    .local v1, "mLongPressTimeoutDefault":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 673
    const v7, 0x7f0c0087

    .line 672
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "timeoutTitles":[Ljava/lang/String;
    array-length v4, v5

    .line 675
    .local v4, "timeoutValueCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 676
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v5, v0

    aget-object v8, v3, v0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 662
    .end local v0    # "i":I
    .end local v1    # "mLongPressTimeoutDefault":I
    .end local v3    # "timeoutTitles":[Ljava/lang/String;
    .end local v4    # "timeoutValueCount":I
    .end local v5    # "timeoutValues":[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v6, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 681
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_3

    .line 682
    const-string/jumbo v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    .line 686
    :cond_3
    const-string/jumbo v6, "air_wake_up"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 687
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v6, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 689
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v6, :cond_4

    .line 690
    const-string/jumbo v6, "AccessibilitySettings_Mobility"

    const-string/jumbo v7, "mSContextManager is null, mSContextManager init"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "scontext"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/SContextManager;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 694
    :cond_4
    const-string/jumbo v6, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 695
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 696
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    .line 694
    if-eqz v6, :cond_6

    .line 697
    :cond_5
    const-string/jumbo v6, "air_wake_up"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    .line 712
    :cond_6
    const-string/jumbo v6, "autoclick_preference_screen"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 713
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v6, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 716
    const-string/jumbo v6, "access_control_key"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 717
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 721
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v6, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 723
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.app.accesscontrol"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 724
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 723
    if-eqz v6, :cond_9

    .line 725
    :cond_8
    const-string/jumbo v6, "access_control_key"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    .line 727
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 728
    const-string/jumbo v6, "access_control_key"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    .line 729
    const-string/jumbo v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    .line 654
    :cond_a
    return-void

    .line 718
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 719
    const v7, 0x7f0b02bc

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 718
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private isScreenLockUsed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1535
    const v2, 0x7f0b02c8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1536
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1537
    const-string/jumbo v3, "interaction_control_exit_locked"

    .line 1536
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1535
    .end local v0    # "def":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "def":I
    goto :goto_0
.end method

.method private isSinglePopupNeeded()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    .local v0, "mAutoAssistPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "pref_assistant_noti"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 340
    .local v1, "never_show_assistant_menu_noti":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 341
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 342
    const/4 v2, 0x1

    return v2

    .line 344
    :cond_0
    return v4
.end method

.method private setScreenLockUsedSetting(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "interaction_control_exit_locked"

    .line 1531
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1530
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1529
    return-void

    .line 1531
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAccessControlTurnOffPopup()V
    .locals 3

    .prologue
    .line 962
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 963
    const v1, 0x7f0b02c6

    .line 962
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 964
    const v1, 0x7f0b02c7

    .line 962
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 965
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0438

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$20;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$20;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 962
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 971
    new-instance v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$21;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$21;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    const v2, 0x7f0b107a

    .line 962
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 976
    const/4 v1, 0x0

    .line 962
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 976
    new-instance v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$22;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$22;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 962
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAccessControlDialog:Landroid/app/AlertDialog;

    .line 961
    return-void
.end method

.method private showAutoClickExclusivePopup()V
    .locals 13

    .prologue
    const v12, 0x7f0b158c

    const/4 v11, 0x0

    .line 569
    sput v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    .line 570
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 571
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0021

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 572
    .local v6, "isLightTheme":Z
    const-string/jumbo v4, ""

    .line 574
    .local v4, "dialog_content":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    if-eqz v8, :cond_0

    .line 575
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0bdd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 576
    sget v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v8, v8, 0x8

    sput v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    .line 579
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 580
    .local v0, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 581
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 582
    .local v3, "dialogView":Landroid/view/ViewGroup;
    const v8, 0x7f11010e

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 583
    .local v2, "descText":Landroid/widget/TextView;
    const v8, 0x7f11010f

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 584
    .local v1, "descList":Landroid/widget/TextView;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 585
    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 584
    const v9, 0x7f0b02ec

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 592
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0438

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$14;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$14;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 588
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 599
    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$15;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$15;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    const v10, 0x7f0b107a

    .line 588
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 605
    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$16;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$16;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 588
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoClickDialog:Landroid/app/AlertDialog;

    .line 568
    return-void
.end method

.method private showExclusivePopup()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 481
    sput v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "easy_interaction"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 483
    .local v7, "mSingleTapMode":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0021

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 484
    .local v6, "isLightTheme":Z
    const-string/jumbo v4, ""

    .line 485
    .local v4, "dialog_content":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.universalswitch"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_0

    .line 486
    sget v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    .line 487
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0246

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.google.android.marvin.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 490
    sget v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v8, v8, 0x2

    sput v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0bff

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 493
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b024b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    sget v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v8, v8, 0x4

    sput v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    .line 497
    :cond_2
    iget-boolean v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    if-eqz v8, :cond_3

    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0bdd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 499
    sget v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v8, v8, 0x8

    sput v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    .line 501
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.accesscontrol"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 502
    sget v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v8, v8, 0x10

    sput v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    .line 503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02ba

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "com.sec.feature.overlaymagnifier"

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 506
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0233

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    :cond_5
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 509
    .local v0, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 510
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 511
    .local v3, "dialogView":Landroid/view/ViewGroup;
    const v8, 0x7f11010e

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 512
    .local v2, "descText":Landroid/widget/TextView;
    const v8, 0x7f11010f

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 513
    .local v1, "descList":Landroid/widget/TextView;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 514
    const v9, 0x7f0b01f2

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 513
    const v9, 0x7f0b02ec

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 522
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0438

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 517
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 547
    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$12;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$12;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    const v10, 0x7f0b107a

    .line 517
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 553
    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$13;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$13;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 517
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    .line 480
    return-void
.end method

.method private switchOnToast()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1110
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1111
    .local v1, "mSingleTapMode":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1112
    if-nez v1, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1115
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v0, "assistantMenu":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.assistantmenu"

    .line 1117
    const-string/jumbo v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    .line 1116
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1118
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b023e

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1119
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1109
    return-void
.end method

.method private static turnOnOffInteractionControl(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 1274
    if-eqz p1, :cond_0

    .line 1275
    const-string/jumbo v1, "AccessibilitySettings_Mobility"

    const-string/jumbo v2, "Turn on Interaction control"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_use"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1273
    :goto_0
    return-void

    .line 1290
    :cond_0
    const-string/jumbo v1, "AccessibilitySettings_Mobility"

    const-string/jumbo v2, "Turn off Interaction control"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1292
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v0, "acIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.accesscontrol"

    .line 1294
    const-string/jumbo v3, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    .line 1293
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1295
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateMobilityPreferences()V

    .line 849
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateServicesPreferences()V

    .line 847
    return-void
.end method

.method private updateAutoclickSummary(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 1516
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_enabled"

    const/4 v4, 0x0

    .line 1515
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    const/4 v1, 0x1

    .line 1517
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1518
    if-nez v1, :cond_1

    .line 1519
    const v2, 0x7f0b1592

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 1520
    return-void

    .line 1515
    .end local v1    # "enabled":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 1523
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_delay"

    .line 1524
    const/16 v4, 0x258

    .line 1522
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1526
    .local v0, "delay":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1525
    invoke-static {v2, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1514
    return-void
.end method

.method private updateMobilityPreferences()V
    .locals 9

    .prologue
    const/16 v5, 0x1f4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 854
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 856
    const-string/jumbo v4, "long_press_timeout"

    .line 855
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 858
    .local v0, "currentLongPressTimeout":I
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 859
    if-ne v0, v5, :cond_7

    .line 860
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 861
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 860
    invoke-static {v4, v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 877
    .end local v0    # "currentLongPressTimeout":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v1, :cond_1

    .line 878
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 879
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 883
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "assistant_menu"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v1, :cond_2

    .line 887
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 888
    const-string/jumbo v5, "accessibility_autoclick_enabled"

    .line 887
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 889
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateAutoclickSummary(Landroid/preference/Preference;)V

    .line 892
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v1, :cond_3

    .line 893
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 894
    const-string/jumbo v5, "air_motion_wake_up"

    .line 893
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 898
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v1, :cond_4

    .line 899
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 900
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 904
    :goto_5
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 905
    const-string/jumbo v5, "access_control_use"

    .line 904
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 907
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 908
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 909
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 915
    :cond_5
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v1, :cond_6

    .line 916
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 917
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 852
    :cond_6
    :goto_8
    return-void

    .line 862
    .restart local v0    # "currentLongPressTimeout":I
    :cond_7
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_8

    .line 863
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 864
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 863
    invoke-static {v4, v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 865
    :cond_8
    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_9

    .line 866
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 867
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    .line 866
    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 869
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 870
    new-array v4, v2, [Ljava/lang/Object;

    .line 871
    const-string/jumbo v5, "%.2f"

    new-array v6, v2, [Ljava/lang/Object;

    int-to-float v7, v0

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 870
    const v5, 0x7f0b0213

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 869
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 873
    const/16 v4, 0x2bc

    .line 872
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 881
    .end local v0    # "currentLongPressTimeout":I
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    move v1, v3

    .line 883
    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 887
    goto/16 :goto_3

    :cond_d
    move v1, v3

    .line 893
    goto/16 :goto_4

    .line 902
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_f
    move v1, v3

    .line 904
    goto/16 :goto_6

    .line 911
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 919
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_8
.end method

.method private updateServicesPreferences()V
    .locals 23

    .prologue
    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v20

    if-nez v20, :cond_0

    return-void

    .line 741
    :cond_0
    const/4 v2, 0x0

    .line 742
    .local v2, "AccessibilityApplicationKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    .line 745
    .local v5, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 747
    .local v13, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v20

    .line 746
    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 749
    .local v9, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 750
    const-string/jumbo v21, "accessibility_enabled"

    const/16 v22, 0x0

    .line 749
    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 750
    const/16 v21, 0x1

    .line 749
    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/4 v4, 0x1

    .line 752
    .local v4, "accessibilityEnabled":Z
    :goto_0
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .end local v2    # "AccessibilityApplicationKey":Ljava/lang/String;
    .local v7, "count":I
    :goto_1
    if-ge v11, v7, :cond_1

    .line 753
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 755
    .local v12, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v12, :cond_3

    .line 733
    .end local v12    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return-void

    .line 749
    .end local v4    # "accessibilityEnabled":Z
    .end local v7    # "count":I
    .end local v11    # "i":I
    .restart local v2    # "AccessibilityApplicationKey":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "accessibilityEnabled":Z
    goto :goto_0

    .line 760
    .end local v2    # "AccessibilityApplicationKey":Ljava/lang/String;
    .restart local v7    # "count":I
    .restart local v11    # "i":I
    .restart local v12    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 760
    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 764
    .local v15, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 766
    .local v19, "title":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 767
    .local v17, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 768
    .local v14, "packageName":Ljava/lang/String;
    const-string/jumbo v20, "com.samsung.android.universalswitch"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 769
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 772
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v6, v14, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "AccessibilityApplicationKey":Ljava/lang/String;
    invoke-virtual {v15, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 778
    if-eqz v4, :cond_8

    .line 779
    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 780
    :goto_2
    const-string/jumbo v20, "AccessibilitySettings_Mobility"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "title is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " serviceEnabled : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const v20, 0x7f0b0247

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 783
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 784
    const-class v20, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 785
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 799
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 800
    .local v10, "extras":Landroid/os/Bundle;
    const-string/jumbo v20, "preference_key"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string/jumbo v20, "checked"

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 802
    const-string/jumbo v20, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    .line 805
    .local v8, "description":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 806
    const v20, 0x7f0b15bf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 808
    :cond_4
    const-string/jumbo v20, "summary"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v18

    .line 811
    .local v18, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 812
    const-string/jumbo v20, "settings_title"

    .line 813
    const v21, 0x7f0b1590

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 812
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string/jumbo v20, "settings_component_name"

    .line 815
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    .line 814
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_5
    const-string/jumbo v20, "component_name"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 820
    const-string/jumbo v20, "com.samsung.android.universalswitch"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 821
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 822
    .local v3, "AccessibilityApplicationPreference":Landroid/preference/Preference;
    if-eqz v3, :cond_6

    .line 823
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    .line 825
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 827
    if-eqz v15, :cond_7

    .line 828
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 829
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 752
    .end local v2    # "AccessibilityApplicationKey":Ljava/lang/String;
    .end local v3    # "AccessibilityApplicationPreference":Landroid/preference/Preference;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v18    # "settingsClassName":Ljava/lang/String;
    :cond_7
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 778
    .restart local v2    # "AccessibilityApplicationKey":Ljava/lang/String;
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    :cond_8
    const/16 v16, 0x0

    .local v16, "serviceEnabled":Z
    goto/16 :goto_2

    .line 831
    .end local v16    # "serviceEnabled":Z
    .restart local v3    # "AccessibilityApplicationPreference":Landroid/preference/Preference;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v10    # "extras":Landroid/os/Bundle;
    .restart local v18    # "settingsClassName":Ljava/lang/String;
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 1270
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10027f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public isExclusivePopupNeeded(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1123
    const/4 v0, 0x0

    .line 1124
    .local v0, "is_enabled":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "universal_switch_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->universalswitch:Z

    .line 1127
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->talkback:Z

    .line 1128
    invoke-static {p1}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->stalkback:Z

    .line 1129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    .line 1130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "access_control_use"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->interactioncontrol:Z

    .line 1131
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->magnifier:Z

    .line 1132
    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->universalswitch:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->talkback:Z

    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->stalkback:Z

    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->interactioncontrol:Z

    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->magnifier:Z

    or-int v0, v1, v2

    .line 1133
    .local v0, "is_enabled":Z
    const-string/jumbo v1, "AccessibilitySettings_Mobility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Universal Switch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->universalswitch:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nTalkback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->talkback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nS Talkback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->stalkback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1134
    const-string/jumbo v3, "\nOne-handed operation : "

    .line 1133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1134
    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    .line 1133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1134
    const-string/jumbo v3, "\nInteraction Control : "

    .line 1133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1134
    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->interactioncontrol:Z

    .line 1133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1134
    const-string/jumbo v3, "\nmagnifier : "

    .line 1133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1134
    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->magnifier:Z

    .line 1133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return v0

    .local v0, "is_enabled":Z
    :cond_1
    move v1, v3

    .line 1125
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 1129
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 1130
    goto/16 :goto_2

    :cond_4
    move v2, v3

    .line 1131
    goto :goto_3
.end method

.method public isExclusivePopupNeededForAutoClick(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1138
    const/4 v0, 0x0

    .line 1139
    .local v0, "is_enabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    .line 1140
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    .line 1141
    .local v0, "is_enabled":Z
    const-string/jumbo v1, "AccessibilitySettings_Mobility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\nOne-handed operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v0

    .local v0, "is_enabled":Z
    :cond_0
    move v1, v2

    .line 1139
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$10;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 288
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 259
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccessibilitySettings_Mobility"

    const-string/jumbo v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 250
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->addPreferencesFromResource(I)V

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->initializeAllPreferences()V

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateServicesPreferences()V

    .line 255
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 248
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .param p1, "dialogId"    # I

    .prologue
    const v13, 0x104000a

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 992
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_0

    .line 993
    return-object v10

    .line 996
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1105
    :pswitch_0
    return-object v10

    .line 998
    :pswitch_1
    const-string/jumbo v0, ""

    .line 999
    .local v0, "am_title":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 1000
    .local v7, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "access_control_use"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v12, :cond_2

    .line 1001
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 1000
    if-eqz v8, :cond_2

    .line 1002
    const v8, 0x7f0b02b4

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1003
    const v8, 0x7f0b02b7

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1011
    :cond_1
    :goto_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1016
    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 1011
    invoke-virtual {v8, v13, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1042
    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$24;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$24;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 1041
    const/high16 v10, 0x1040000

    .line 1011
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1048
    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$25;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$25;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 1011
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 1004
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "access_control_use"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v12, :cond_3

    .line 1005
    const v8, 0x7f0b02b6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1006
    const v8, 0x7f0b02b9

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1007
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1008
    const v8, 0x7f0b02b5

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    const v8, 0x7f0b02b8

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1060
    .end local v0    # "am_title":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1061
    .local v5, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1062
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0401ed

    invoke-virtual {v4, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1063
    .local v2, "customView":Landroid/view/View;
    const v8, 0x7f11056a

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1064
    .local v6, "mcheck_assistantmenu":Landroid/widget/CheckBox;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1065
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v1, "assistantMenu":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string/jumbo v9, "com.samsung.android.app.assistantmenu"

    .line 1067
    const-string/jumbo v10, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    .line 1066
    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1069
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1070
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mDialogTitle:Ljava/lang/String;

    .line 1069
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1072
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1073
    const v10, 0x7f0b023e

    .line 1072
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1069
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1075
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1076
    const v10, 0x7f0b023d

    .line 1075
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1069
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1079
    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$26;

    invoke-direct {v9, p0, v3, v6, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$26;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    .line 1069
    invoke-virtual {v8, v13, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1098
    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$27;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$27;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    const v10, 0x7f0b107a

    .line 1069
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 996
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAutoClickControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DexterityAndInteraction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 327
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 315
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 16
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v15, p2

    .line 351
    check-cast v15, Ljava/lang/Boolean;

    .line 353
    .local v15, "value":Ljava/lang/Boolean;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sidesync_source_connect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 354
    .local v13, "sideSyncState":I
    if-eqz v13, :cond_0

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b02e8

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 358
    const-string/jumbo v2, "assistant_menu"

    const/4 v3, 0x0

    .line 357
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    const/4 v1, 0x0

    return v1

    .line 363
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 364
    .local v8, "am":Landroid/app/ActivityManager;
    invoke-virtual {v8}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v11

    .line 365
    .local v11, "isWindowPinned":Z
    if-eqz v11, :cond_1

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    .line 368
    const/4 v1, 0x0

    return v1

    .line 371
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 373
    .local v10, "conf":Landroid/content/res/Configuration;
    iget v1, v10, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b021b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 374
    const v4, 0x7f0b05b0

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 375
    const/4 v3, 0x1

    .line 374
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 376
    const/4 v1, 0x0

    return v1

    .line 380
    .end local v10    # "conf":Landroid/content/res/Configuration;
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v9, "assistantMenu":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.assistantmenu"

    .line 382
    const-string/jumbo v3, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    .line 381
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 383
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isExclusivePopupNeeded(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 385
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->switchOnToast()V

    .line 402
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getMetricsCategory()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100282

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x3e8

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 403
    const/4 v1, 0x1

    return v1

    .line 389
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 390
    const-string/jumbo v1, "AccessibilitySettings_Mobility"

    const-string/jumbo v2, "AssistantMenu Service Start!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 395
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showExclusivePopup()V

    goto :goto_0

    .line 398
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 399
    const-string/jumbo v1, "AccessibilitySettings_Mobility"

    const-string/jumbo v2, "AssistantMenu Service Stop!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 402
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 404
    .end local v8    # "am":Landroid/app/ActivityManager;
    .end local v9    # "assistantMenu":Landroid/content/Intent;
    .end local v11    # "isWindowPinned":Z
    .end local v13    # "sideSyncState":I
    .end local v15    # "value":Ljava/lang/Boolean;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v15, p2

    .line 405
    check-cast v15, Ljava/lang/Boolean;

    .line 406
    .restart local v15    # "value":Ljava/lang/Boolean;
    const-string/jumbo v1, "accessibility"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityManager;

    .line 408
    .local v12, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 410
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityManager;->OnStartGestureWakeup()Z

    .line 415
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getMetricsCategory()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100283

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x3e8

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 416
    const/4 v1, 0x1

    return v1

    .line 412
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    .line 413
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityManager;->OnStopGestureWakeup()Z

    goto :goto_2

    .line 415
    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    .line 417
    .end local v12    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v15    # "value":Ljava/lang/Boolean;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v15, p2

    .line 418
    check-cast v15, Ljava/lang/Boolean;

    .line 419
    .restart local v15    # "value":Ljava/lang/Boolean;
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isExclusivePopupNeededForAutoClick(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showAutoClickExclusivePopup()V

    .line 468
    .end local v15    # "value":Ljava/lang/Boolean;
    :cond_b
    :goto_4
    const/4 v1, 0x0

    return v1

    .line 424
    .restart local v15    # "value":Ljava/lang/Boolean;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 425
    const-string/jumbo v3, "accessibility_autoclick_enabled"

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    .line 424
    :goto_5
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 425
    :cond_d
    const/4 v1, 0x0

    goto :goto_5

    .line 429
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 430
    const-string/jumbo v3, "accessibility_autoclick_enabled"

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    .line 429
    :goto_6
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 430
    :cond_f
    const/4 v1, 0x0

    goto :goto_6

    .line 432
    .end local v15    # "value":Ljava/lang/Boolean;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v15, p2

    .line 433
    check-cast v15, Ljava/lang/Boolean;

    .line 435
    .restart local v15    # "value":Ljava/lang/Boolean;
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "AccessibilitySettings_Mobility"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffInteractionControl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 451
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getMetricsCategory()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100289

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x3e8

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 452
    const/4 v1, 0x1

    return v1

    .line 445
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showAccessControlTurnOffPopup()V

    goto :goto_7

    .line 448
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "AccessibilitySettings_Mobility"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffInteractionControl(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_7

    .line 451
    :cond_13
    const/4 v1, 0x0

    goto :goto_8

    .line 453
    .end local v15    # "value":Ljava/lang/Boolean;
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v1, p2

    .line 454
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 456
    .local v14, "value":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 457
    const/16 v1, 0x2bc

    if-ne v14, v1, :cond_15

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 459
    const-class v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 461
    const v4, 0x7f0b1589

    .line 460
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 461
    const/4 v7, 0x0

    move-object/from16 v6, p0

    .line 458
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 465
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getMetricsCategory()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100286

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 466
    const/4 v1, 0x1

    return v1

    .line 463
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "long_press_timeout"

    invoke-static {v1, v2, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 332
    const-string/jumbo v0, "AccessibilitySettings_Mobility"

    const-string/jumbo v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const-string/jumbo v1, "com.samsung.android.settings.AssistantMenuPreferenceFragment"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setFragment(Ljava/lang/String;)V

    .line 844
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateAllPreferences()V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    .line 298
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlObserver:Landroid/database/ContentObserver;

    .line 300
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant_menu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAssistantMenuObserver:Landroid/database/ContentObserver;

    .line 302
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_autoclick_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAutoClickControlObserver:Landroid/database/ContentObserver;

    .line 304
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DexterityAndInteraction"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public turnOffExlusiveOptions(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "option_flag"    # I

    .prologue
    const/4 v5, 0x0

    .line 620
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 622
    .local v1, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v2, p2, 0x1

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    .line 623
    invoke-static {p1}, Lcom/android/settings/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    .line 624
    const-string/jumbo v2, "AccessibilitySettings_Mobility"

    const-string/jumbo v3, "turnOffExlusiveOptions - UNIVERSAL INPUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    and-int/lit8 v2, p2, 0x2

    if-gtz v2, :cond_1

    and-int/lit8 v2, p2, 0x4

    if-lez v2, :cond_2

    .line 627
    :cond_1
    invoke-static {p1}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 628
    const-string/jumbo v2, "AccessibilitySettings_Mobility"

    const-string/jumbo v3, "turnOffExlusiveOptions - TALKBACK/GALAXY TALKBACK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_2
    and-int/lit8 v2, p2, 0x8

    if-lez v2, :cond_3

    .line 631
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->cancelReduceSizeBroadcast()V

    .line 632
    const-string/jumbo v2, "AccessibilitySettings_Mobility"

    const-string/jumbo v3, "turnOffExlusiveOptions - One-handed Operation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_3
    and-int/lit8 v2, p2, 0x10

    if-lez v2, :cond_4

    .line 635
    const-string/jumbo v2, "access_control_use"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 636
    const-string/jumbo v2, "access_control_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, "icIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.accesscontrol"

    .line 639
    const-string/jumbo v4, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    .line 638
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 640
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 641
    const-string/jumbo v2, "AccessibilitySettings_Mobility"

    const-string/jumbo v3, "turnOffExlusiveOptions - INTERACTION_CONTROL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .end local v0    # "icIntent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v2, "finger_magnifier"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    return-void
.end method
