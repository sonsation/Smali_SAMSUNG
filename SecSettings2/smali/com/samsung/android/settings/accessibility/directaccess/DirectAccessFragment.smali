.class public Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DirectAccessFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;
    }
.end annotation


# instance fields
.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAccessControlSwitch:Landroid/preference/SwitchPreference;

.field private mAccessibilitySwitch:Landroid/preference/SwitchPreference;

.field private mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

.field private mDirectAccessCategory:Landroid/preference/PreferenceCategory;

.field private mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

.field private mDirectAccessObserver:Landroid/database/ContentObserver;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mGreyscaleSwitch:Landroid/preference/SwitchPreference;

.field private mMagnifierSwitch:Landroid/preference/SwitchPreference;

.field private mNegativeColorSwitch:Landroid/preference/SwitchPreference;

.field private mPageReaderObserver:Landroid/database/ContentObserver;

.field private mPageReaderSwitch:Landroid/preference/SwitchPreference;

.field private mSTalkbackSwitch:Landroid/preference/SwitchPreference;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackSwitch:Landroid/preference/SwitchPreference;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUniversalInputSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    .line 76
    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    .line 89
    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 102
    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    .line 633
    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 33
    return-void
.end method

.method private checkNoneItemisSelected()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "isDANotCheck":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_9

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_accessibility"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_talkback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_negative"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_greyscale"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_color_adjustment"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind_test"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_samsung_screen_reader"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.talkback"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_s_talkback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x1

    .line 294
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_universal_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    const/4 v0, 0x1

    .line 296
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.overlaymagnifier"

    invoke-static {v2, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 297
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_3

    .line 298
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access_magnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x1

    .line 318
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 319
    const-string/jumbo v3, "direct_access"

    .line 318
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_13

    const/4 v1, 0x1

    .line 321
    .local v1, "state":Z
    :goto_4
    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    .line 322
    return v5

    .line 291
    .end local v1    # "state":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 293
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 295
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 298
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 300
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_accessibility"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_talkback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_negative"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_greyscale"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_color_adjustment"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind_test"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    .line 306
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_use"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    .line 308
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_samsung_screen_reader"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_e

    const/4 v0, 0x1

    .line 309
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.talkback"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 310
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_s_talkback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_10

    const/4 v0, 0x1

    .line 311
    :cond_c
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 312
    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_universal_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    const/4 v0, 0x1

    .line 313
    :cond_d
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.overlaymagnifier"

    invoke-static {v2, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_3

    .line 315
    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access_magnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_12

    const/4 v0, 0x1

    goto/16 :goto_3

    .line 308
    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 300
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 310
    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    .line 312
    :cond_11
    const/4 v0, 0x0

    goto :goto_7

    .line 315
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 318
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "state":Z
    goto/16 :goto_4

    .line 325
    :cond_14
    return v4
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 354
    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 367
    return-void
.end method

.method private updateItemsStatus()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.colorblind"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 589
    .local v1, "mInstalledColorAdjustment":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 590
    .local v5, "mInstalledTalkback":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 591
    .local v4, "mInstalledSTalkback":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.universalswitch"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 592
    .local v6, "mInstalledUniversalSwitch":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.screenreader"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 593
    .local v3, "mInstalledPageReader":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.accesscontrol"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 594
    .local v0, "mInstalledAccessControl":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 596
    .local v2, "mInstalledMagnifierWindow":Z
    if-nez v1, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_color_adjustment"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_greyscale"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    :cond_0
    if-nez v5, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_talkback"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    :cond_1
    if-nez v4, :cond_2

    .line 606
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_s_talkback"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 609
    :cond_2
    if-nez v6, :cond_3

    .line 610
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_universal_switch"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    :cond_3
    if-nez v3, :cond_4

    .line 614
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_samsung_screen_reader"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_7

    if-eqz v0, :cond_7

    .line 622
    :goto_0
    if-eqz v2, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-eqz v7, :cond_6

    .line 623
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_access_magnifier"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    :cond_6
    return-void

    .line 618
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 619
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_access_control"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 629
    const/16 v0, 0x132

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 422
    const-string/jumbo v0, "direct_access_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    .line 423
    const-string/jumbo v0, "direct_accessibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    .line 424
    const-string/jumbo v0, "direct_talkback"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    .line 425
    const-string/jumbo v0, "direct_s_talkback"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    .line 426
    const-string/jumbo v0, "direct_universal_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    .line 427
    const-string/jumbo v0, "direct_negative"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    .line 428
    const-string/jumbo v0, "direct_greyscale"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    .line 429
    const-string/jumbo v0, "direct_color_adjustment"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    .line 430
    const-string/jumbo v0, "direct_accesscontrol"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    .line 431
    const-string/jumbo v0, "direct_page_reader"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    .line 432
    const-string/jumbo v0, "direct_magnifier"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 436
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 437
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 439
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 440
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 421
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    .line 142
    .local v1, "status":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 143
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_accessibility"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_talkback"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    :cond_0
    const/4 v1, 0x1

    .line 158
    .end local v1    # "status":Z
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 159
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 160
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access"

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->installSwitchBarToggleSwitch()V

    .line 137
    return-void

    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_3
    move v1, v2

    .line 141
    goto :goto_0

    .line 145
    .restart local v1    # "status":Z
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_s_talkback"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_samsung_screen_reader"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_universal_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_negative"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_greyscale"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_color_adjustment"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "color_blind_test"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 153
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access_control"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "access_control_use"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 155
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access_magnifier"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    .local v1, "status":Z
    goto/16 :goto_1

    .local v1, "status":Z
    :cond_7
    const/4 v1, 0x0

    .local v1, "status":Z
    goto/16 :goto_1

    .line 143
    .local v1, "status":Z
    :cond_8
    const/4 v1, 0x0

    .local v1, "status":Z
    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->addPreferencesFromResource(I)V

    .line 121
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0248

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->init()V

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateItemsStatus()V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->checkNoneItemisSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 116
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->removeSwitchBarToggleSwitch()V

    .line 349
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DirectAccess"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->checkNoneItemisSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b02d8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->pause()V

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 345
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 329
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f10029e

    const/16 v4, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 374
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 375
    .local v0, "value":Z
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_accessibility"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10029d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 378
    return v2

    :cond_1
    move v1, v3

    .line 376
    goto :goto_0

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_talkback"

    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10029f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 382
    return v2

    :cond_3
    move v1, v3

    .line 380
    goto :goto_1

    :cond_4
    move v4, v3

    .line 381
    goto :goto_2

    .line 383
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_negative"

    if-eqz v0, :cond_6

    move v1, v2

    :goto_3
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_7

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 386
    return v2

    :cond_6
    move v1, v3

    .line 384
    goto :goto_3

    :cond_7
    move v4, v3

    .line 385
    goto :goto_4

    .line 387
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_greyscale"

    if-eqz v0, :cond_9

    move v1, v2

    :goto_5
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_a

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 390
    return v2

    :cond_9
    move v1, v3

    .line 388
    goto :goto_5

    :cond_a
    move v4, v3

    .line 389
    goto :goto_6

    .line 391
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_color_adjustment"

    if-eqz v0, :cond_c

    move v1, v2

    :goto_7
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_d

    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 394
    return v2

    :cond_c
    move v1, v3

    .line 392
    goto :goto_7

    :cond_d
    move v4, v3

    .line 393
    goto :goto_8

    .line 395
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_access_control"

    if-eqz v0, :cond_f

    move v1, v2

    :goto_9
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_10

    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 398
    return v2

    :cond_f
    move v1, v3

    .line 396
    goto :goto_9

    :cond_10
    move v4, v3

    .line 397
    goto :goto_a

    .line 399
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 400
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_s_talkback"

    if-eqz v0, :cond_12

    move v1, v2

    :goto_b
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_13

    :goto_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 402
    return v2

    :cond_12
    move v1, v3

    .line 400
    goto :goto_b

    :cond_13
    move v4, v3

    .line 401
    goto :goto_c

    .line 403
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_universal_switch"

    if-eqz v0, :cond_15

    move v1, v2

    :goto_d
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_16

    :goto_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 406
    return v2

    :cond_15
    move v1, v3

    .line 404
    goto :goto_d

    :cond_16
    move v4, v3

    .line 405
    goto :goto_e

    .line 407
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_samsung_screen_reader"

    .line 409
    if-eqz v0, :cond_18

    move v1, v2

    .line 408
    :goto_f
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_19

    :goto_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 411
    return v2

    :cond_18
    move v1, v3

    .line 409
    goto :goto_f

    :cond_19
    move v4, v3

    .line 410
    goto :goto_10

    .line 412
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v5, "com.sec.feature.overlaymagnifier"

    invoke-static {v1, v5}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 413
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 412
    if-eqz v1, :cond_1d

    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_access_magnifier"

    if-eqz v0, :cond_1b

    move v1, v2

    :goto_11
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_1c

    :goto_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 416
    return v2

    :cond_1b
    move v1, v3

    .line 414
    goto :goto_11

    :cond_1c
    move v4, v3

    .line 415
    goto :goto_12

    .line 418
    :cond_1d
    return v3
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 170
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DirectAccess"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 175
    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->resume()V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_accessibility"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_talkback"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 193
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.app.talkback"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_s_talkback"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 210
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_samsung_screen_reader"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 216
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_universal_switch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 226
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_negative"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 232
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_greyscale"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 238
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_color_adjustment"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 244
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access_control"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 250
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access_magnifier"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 256
    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    const-string/jumbo v1, "direct_access"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    .line 256
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "color_blind_test"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    .line 260
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "access_control_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 264
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    const-string/jumbo v1, "direct_talkback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    .line 268
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    const-string/jumbo v1, "direct_s_talkback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    .line 272
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 223
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 235
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 241
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 253
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_9
.end method

.method public updateDirectAccessMenu()V
    .locals 13

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    .line 448
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 453
    const-string/jumbo v11, "direct_access"

    const/4 v12, 0x0

    .line 452
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 455
    .local v9, "state":I
    const/4 v7, 0x1

    .line 457
    .local v7, "negativeColorCheck":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "powersaving_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    .line 458
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "blackgrey_powersaving_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    const/4 v8, 0x1

    .line 460
    .local v8, "powerSavingModeCheck":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.colorblind"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 461
    .local v1, "mInstalledColorAdjustment":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.google.android.marvin.talkback"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 462
    .local v5, "mInstalledTalkback":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.talkback"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 463
    .local v4, "mInstalledSTalkback":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.universalswitch"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 464
    .local v6, "mInstalledUniversalSwitch":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.screenreader"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 465
    .local v3, "mInstalledPageReader":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.accesscontrol"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 466
    .local v0, "mInstalledAccessControl":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.sec.feature.overlaymagnifier"

    invoke-static {v10, v11}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 468
    .local v2, "mInstalledMagnifierWindow":Z
    if-nez v9, :cond_f

    .line 469
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 470
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 471
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 472
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 473
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 474
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 475
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 477
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 478
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "color_blind_test"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_d

    .line 479
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02d2

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 484
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_use"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_e

    .line 486
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02d5

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 491
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 492
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02d3

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 551
    :cond_2
    :goto_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    const/16 v11, 0x64

    if-ge v10, v11, :cond_16

    if-eqz v0, :cond_16

    .line 555
    :goto_4
    if-nez v7, :cond_3

    .line 556
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 557
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 561
    :cond_3
    if-nez v1, :cond_4

    .line 562
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 563
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 566
    :cond_4
    if-nez v5, :cond_5

    .line 567
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 570
    :cond_5
    if-nez v4, :cond_6

    .line 571
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 574
    :cond_6
    if-nez v6, :cond_7

    .line 575
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 578
    :cond_7
    if-nez v3, :cond_8

    .line 579
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 582
    :cond_8
    if-eqz v2, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_a

    .line 583
    :cond_9
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    :cond_a
    return-void

    .line 458
    .end local v0    # "mInstalledAccessControl":Z
    .end local v1    # "mInstalledColorAdjustment":Z
    .end local v2    # "mInstalledMagnifierWindow":Z
    .end local v3    # "mInstalledPageReader":Z
    .end local v4    # "mInstalledSTalkback":Z
    .end local v5    # "mInstalledTalkback":Z
    .end local v6    # "mInstalledUniversalSwitch":Z
    .end local v8    # "powerSavingModeCheck":Z
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "powerSavingModeCheck":Z
    goto/16 :goto_0

    .line 457
    .end local v8    # "powerSavingModeCheck":Z
    :cond_c
    const/4 v8, 0x0

    .restart local v8    # "powerSavingModeCheck":Z
    goto/16 :goto_0

    .line 481
    .restart local v0    # "mInstalledAccessControl":Z
    .restart local v1    # "mInstalledColorAdjustment":Z
    .restart local v2    # "mInstalledMagnifierWindow":Z
    .restart local v3    # "mInstalledPageReader":Z
    .restart local v4    # "mInstalledSTalkback":Z
    .restart local v5    # "mInstalledTalkback":Z
    .restart local v6    # "mInstalledUniversalSwitch":Z
    :cond_d
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 488
    :cond_e
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 495
    :cond_f
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 496
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 497
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 505
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 506
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 507
    :cond_10
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 508
    if-eqz v8, :cond_11

    .line 509
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 510
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 511
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 518
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "color_blind_test"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_12

    .line 519
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 520
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02d2

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 526
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_use"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_13

    .line 527
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 528
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02d5

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 534
    :goto_7
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "direct_talkback"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_14

    .line 537
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 542
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.talkback"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "direct_s_talkback"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_15

    .line 544
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 513
    :cond_11
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 514
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 515
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 522
    :cond_12
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 523
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 530
    :cond_13
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 531
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 539
    :cond_14
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 546
    :cond_15
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 552
    :cond_16
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method
