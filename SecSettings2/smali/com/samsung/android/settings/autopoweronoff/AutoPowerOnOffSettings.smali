.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;,
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;,
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field private mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

.field private mAutoPowerOffTime:Landroid/preference/Preference;

.field private mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field private mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

.field private mAutoPowerOnTime:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCurrentDialogId:I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isByUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isByUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V
    .locals 0
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOffTime(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V
    .locals 0
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOnTime(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 483
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;-><init>()V

    .line 482
    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 502
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 51
    return-void
.end method

.method private registerAutoPowerOffAlarm(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isByUser"    # Z

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "power_off_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    const-string/jumbo v1, "by_user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.method private registerAutoPowerOnAlarm(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isByUser"    # Z

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "power_on_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const-string/jumbo v1, "by_user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method private setAutoPowerOffTime(II)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_power_off_time"

    mul-int/lit8 v2, p1, 0x64

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    .line 316
    return-void
.end method

.method private setAutoPowerOnTime(II)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_power_on_time"

    mul-int/lit8 v2, p1, 0x64

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    .line 308
    return-void
.end method

.method private timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 328
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 329
    .local v1, "startTime":Landroid/text/format/Time;
    iput p2, v1, Landroid/text/format/Time;->hour:I

    .line 330
    iput p3, v1, Landroid/text/format/Time;->minute:I

    .line 331
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 333
    .local v2, "startMillis":J
    const/16 v0, 0x201

    .line 334
    .local v0, "flags":I
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 335
    const/16 v0, 0x281

    .line 338
    :cond_0
    invoke-static {p1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "startTimeText":Ljava/lang/String;
    return-object v4
.end method

.method private unregisterAutoPowerOffAlarm(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "power_off_reg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    return-void
.end method

.method private unregisterAutoPowerOnAlarm(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "power_on_reg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    return-void
.end method

.method private updateStatus()V
    .locals 12

    .prologue
    const/16 v11, 0x7c

    const/4 v10, 0x0

    .line 118
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_on_settings"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_6

    const/4 v1, 0x1

    .line 119
    .local v1, "isAutoPowerOn":Z
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_off_settings"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_7

    const/4 v0, 0x1

    .line 121
    .local v0, "isAutoPowerOff":Z
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_on_time"

    const/16 v10, 0x2bc

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 122
    .local v7, "powerOnTime":I
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_on_repeat_days"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 123
    .local v6, "powerOnRepeatDays":I
    new-instance v3, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    .line 125
    .local v3, "mPowerOnDaysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_off_time"

    const/16 v10, 0x8fc

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 126
    .local v5, "powerOffTime":I
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_off_repeat_days"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 127
    .local v4, "powerOffRepeatDays":I
    new-instance v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v2, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    .line 129
    .local v2, "mPowerOffDaysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_0

    .line 130
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 132
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_1

    .line 133
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 135
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    if-eqz v8, :cond_2

    .line 136
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    div-int/lit8 v10, v7, 0x64

    rem-int/lit8 v11, v7, 0x64

    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    if-eqz v8, :cond_3

    .line 139
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    div-int/lit8 v10, v5, 0x64

    rem-int/lit8 v11, v5, 0x64

    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v8, :cond_4

    .line 142
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v8, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 144
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v8, :cond_5

    .line 145
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 117
    :cond_5
    return-void

    .line 118
    .end local v0    # "isAutoPowerOff":Z
    .end local v1    # "isAutoPowerOn":Z
    .end local v2    # "mPowerOffDaysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .end local v3    # "mPowerOnDaysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .end local v4    # "powerOffRepeatDays":I
    .end local v5    # "powerOffTime":I
    .end local v6    # "powerOnRepeatDays":I
    .end local v7    # "powerOnTime":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isAutoPowerOn":Z
    goto/16 :goto_0

    .line 119
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "isAutoPowerOff":Z
    goto/16 :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    .line 105
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->addPreferencesFromResource(I)V

    .line 107
    const-string/jumbo v0, "auto_power_on_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    .line 108
    const-string/jumbo v0, "auto_power_on_time"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    .line 109
    const-string/jumbo v0, "auto_power_on_days"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    .line 110
    const-string/jumbo v0, "auto_power_off_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    .line 111
    const-string/jumbo v0, "auto_power_off_time"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    .line 112
    const-string/jumbo v0, "auto_power_off_days"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    .line 114
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 100
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/16 v8, 0x20

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 295
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 262
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 263
    const-string/jumbo v2, "auto_power_on_time"

    const/16 v3, 0x2bc

    .line 262
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 265
    .local v7, "powerOnTime":I
    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 268
    div-int/lit8 v3, v7, 0x64

    .line 269
    rem-int/lit8 v4, v7, 0x64

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 272
    .local v0, "t":Lcom/samsung/android/app/SemTimePickerDialog;
    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 273
    return-object v0

    .line 277
    .end local v0    # "t":Lcom/samsung/android/app/SemTimePickerDialog;
    .end local v7    # "powerOnTime":I
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 278
    const-string/jumbo v2, "auto_power_off_time"

    const/16 v3, 0x8fc

    .line 277
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 280
    .local v6, "powerOffTime":I
    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 283
    div-int/lit8 v3, v6, 0x64

    .line 284
    rem-int/lit8 v4, v6, 0x64

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    .line 280
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 287
    .restart local v0    # "t":Lcom/samsung/android/app/SemTimePickerDialog;
    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 288
    return-object v0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AutoPowerOnOff"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 204
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 187
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 210
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 212
    .local v0, "isChecked":Z
    const-string/jumbo v4, "AutoPowerOnOffSettings"

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOnSettings"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "auto_power_on_settings"

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    if-eqz v0, :cond_1

    .line 216
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    .line 221
    :goto_0
    return v3

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 222
    .end local v0    # "isChecked":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 223
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 224
    .restart local v0    # "isChecked":Z
    const-string/jumbo v4, "AutoPowerOnOffSettings"

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOffSettings"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "auto_power_off_settings"

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    if-eqz v0, :cond_4

    .line 228
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    .line 233
    :goto_1
    return v3

    .line 230
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOffAlarm(Landroid/content/Context;)V

    goto :goto_1

    .line 234
    .end local v0    # "isChecked":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v1, p2

    .line 235
    check-cast v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    .line 236
    .local v1, "mDaysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    const-string/jumbo v2, "AutoPowerOnOffSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOnDays, value.getCoded() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "auto_power_on_repeat_days"

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    .line 240
    return v3

    .line 241
    .end local v1    # "mDaysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v1, p2

    .line 242
    check-cast v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    .line 243
    .restart local v1    # "mDaysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    const-string/jumbo v2, "AutoPowerOnOffSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOffDays, value.getCoded() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "auto_power_off_repeat_days"

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    .line 247
    return v3

    .line 249
    .end local v1    # "mDaysOfWeek":Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    :cond_7
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const-string/jumbo v0, "AutoPowerOnOffSettings"

    const-string/jumbo v1, "Show dialog : KEY_AUTO_POWER_ON_TIME"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    .line 154
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->removeDialog(I)V

    .line 155
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->showDialog(I)V

    .line 162
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string/jumbo v0, "AutoPowerOnOffSettings"

    const-string/jumbo v1, "Show dialog : KEY_AUTO_POWER_OFF_TIME"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput v3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    .line 159
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->removeDialog(I)V

    .line 160
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 167
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->updateStatus()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AutoPowerOnOff"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 253
    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/widget/SemTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 301
    iget v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    if-nez v0, :cond_1

    .line 302
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOnTime(II)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOffTime(II)V

    goto :goto_0
.end method
