.class public Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;
.super Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
.source "MusicAutoOffActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/settings/AutoOffControllable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;
    }
.end annotation


# static fields
.field private static final CUSTOM_VALUE:I = -0x3e7

.field private static final OFF_VALUE:I = 0x0

.field private static final ONE_HOUR_MS:I = 0x36ee80

.field private static final ONE_MIN_MS:I = 0xea60


# instance fields
.field private final mAutoOffReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomHour:I

.field private mCustomMinute:I

.field private mCustomPosition:I

.field private mOffPosition:I

.field private final mOnTimePickerDialogListener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

.field private mTimePickerDialogCompat:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;-><init>()V

    .line 158
    new-instance v0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$1;-><init>(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mAutoOffReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$2;-><init>(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mOnTimePickerDialogListener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mOffPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setAlarm(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomHour:I

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomMinute:I

    return p1
.end method

.method private getAutoOffPosition(I)I
    .locals 4
    .param p1, "autoTime"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v2

    .line 148
    .local v2, "settingItems":Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemsCount()I

    move-result v0

    .line 149
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 150
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemValue(I)I

    move-result v3

    .line 151
    .local v3, "value":I
    if-ne v3, p1, :cond_0

    .line 155
    .end local v1    # "i":I
    .end local v3    # "value":I
    :goto_1
    return v1

    .line 149
    .restart local v1    # "i":I
    .restart local v3    # "value":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v3    # "value":I
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomPosition:I

    goto :goto_1
.end method

.method private setAlarm(I)V
    .locals 9
    .param p1, "autoOffTime"    # I

    .prologue
    const/4 v8, 0x0

    .line 114
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 115
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x8000000

    invoke-static {v4, v8, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 119
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 120
    const-string v4, "music_auto_off_target_time"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->savePreference(Ljava/lang/String;J)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v2, v4, v6

    .line 123
    .local v2, "targetTime":J
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 124
    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 128
    :goto_0
    const-string v4, "music_auto_off_target_time"

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->savePreference(Ljava/lang/String;J)V

    .line 129
    const-string v4, "on"

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->saveSettingsAutoOff(Ljava/lang/String;)V

    .line 131
    .end local v2    # "targetTime":J
    :cond_0
    return-void

    .line 126
    .restart local v2    # "targetTime":J
    :cond_1
    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method getEntryPosition()I
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "music_auto_off_entry_position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "music_auto_off_entry_position"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSelectedPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->savePreference(Ljava/lang/String;I)V

    .line 92
    const-string v0, "music_auto_off_custom_hour"

    iget v1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomHour:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->savePreference(Ljava/lang/String;I)V

    .line 93
    const-string v0, "music_auto_off_custom_min"

    iget v1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomMinute:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->savePreference(Ljava/lang/String;I)V

    .line 94
    invoke-super {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onBackPressed()V

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 57
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_0

    .line 58
    const-string v2, "SleepTimer"

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/AutoOffControllable;)V

    aput-object v4, v3, v5

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemPosition(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mOffPosition:I

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v2

    const/16 v3, -0x3e7

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemPosition(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomPosition:I

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "music_auto_off_custom_hour"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomHour:I

    .line 67
    const-string v2, "music_auto_off_custom_min"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomMinute:I

    .line 69
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mAutoOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    if-nez p1, :cond_1

    .line 73
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "403"

    .line 74
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 76
    :cond_1
    return-void
.end method

.method onCreateSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;-><init>(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mAutoOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    invoke-super {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onDestroy()V

    .line 101
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MSAF"

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemValue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "403"

    const-string v3, "5051"

    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    .line 195
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "settings_sleepTimer"

    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    .line 199
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomPosition:I

    if-ne p3, v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mTimePickerDialogCompat:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mTimePickerDialogCompat:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

    iget v2, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomHour:I

    iget v3, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomMinute:I

    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mOnTimePickerDialogListener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;-><init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mTimePickerDialogCompat:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mTimePickerDialogCompat:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->setTitle(I)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mTimePickerDialogCompat:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->show()V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemValue(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setAlarm(I)V

    .line 211
    invoke-virtual {p0, p3, v4}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setItemChecked(IZ)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onResume()V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mTimePickerDialogCompat:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mTimePickerDialogCompat:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getSelectedPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setItemChecked(IZ)V

    .line 87
    :cond_1
    return-void
.end method

.method public setAutoOff(II)V
    .locals 4
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 135
    const v2, 0x36ee80

    mul-int/2addr v2, p1

    const v3, 0xea60

    mul-int/2addr v3, p2

    add-int v0, v2, v3

    .line 136
    .local v0, "autoTime":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->getAutoOffPosition(I)I

    move-result v1

    .line 137
    .local v1, "position":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setAlarm(I)V

    .line 138
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setItemChecked(IZ)V

    .line 139
    iget v2, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomPosition:I

    if-ne v1, v2, :cond_0

    .line 140
    iput p1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomHour:I

    .line 141
    iput p2, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->mCustomMinute:I

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->onBackPressed()V

    .line 144
    return-void
.end method
