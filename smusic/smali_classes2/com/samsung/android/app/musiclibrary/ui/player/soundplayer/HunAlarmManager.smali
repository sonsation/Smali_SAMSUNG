.class public final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;
.super Ljava/lang/Object;
.source "HunAlarmManager.java"


# static fields
.field public static final ACTION_HUN_ALARM:Ljava/lang/String; = "com.samsung.android.app.music.intent.action.HUN_ALARM"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHunPreference:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hunPreference"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;->mHunPreference:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    .line 23
    return-void
.end method

.method private getAlarmPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    .line 54
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAlarm()V
    .locals 4

    .prologue
    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 48
    .local v0, "am":Landroid/app/AlarmManager;
    const-string v2, "com.samsung.android.app.music.intent.action.HUN_ALARM"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;->getAlarmPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 49
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 50
    return-void
.end method

.method public setAlarm()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 27
    .local v4, "currentTime":J
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;->mHunPreference:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    const-string v8, "alarmValue"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    .line 29
    .local v0, "alarmTime":J
    cmp-long v7, v0, v12

    if-eqz v7, :cond_0

    cmp-long v7, v0, v4

    if-gez v7, :cond_1

    .line 30
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 31
    .local v3, "calendar":Ljava/util/Calendar;
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 32
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 33
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;->mHunPreference:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    const-string v8, "alarmValue"

    invoke-virtual {v7, v8, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->putLong(Ljava/lang/String;J)V

    .line 36
    .end local v3    # "calendar":Ljava/util/Calendar;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 37
    .local v2, "am":Landroid/app/AlarmManager;
    const-string v7, "com.samsung.android.app.music.intent.action.HUN_ALARM"

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunAlarmManager;->getAlarmPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 38
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v2, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 39
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_2

    .line 40
    invoke-virtual {v2, v10, v0, v1, v6}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_2
    invoke-virtual {v2, v10, v0, v1, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
