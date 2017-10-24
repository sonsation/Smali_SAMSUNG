.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$4;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$6;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;
    }
.end annotation


# static fields
.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurDayOfMonth:I

.field private mEventChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIs24HourMode:Z

.field private mLoadTodayEventsCompletedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

.field private final mLoadTodayEventsRunnable:Ljava/lang/Runnable;

.field private mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mTimeTickReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJ)Landroid/database/Cursor;
    .locals 1
    .param p1, "todayStartTime"    # J
    .param p3, "todayTimezoneStartTime"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getEventsFromCalendar(JJ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;J)Landroid/database/Cursor;
    .locals 1
    .param p1, "todayTimezoneStartTime"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getTasksFromCalendar(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 1
    .param p1, "eventList"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getNextEndEvent(Ljava/util/ArrayList;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->handleCalendarUpdated()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;)V
    .locals 0
    .param p1, "nextEndEvent"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->registerAlarm(Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "eventList"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->removeEndedEvents(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->unregisterAlarm()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    .line 51
    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    .line 61
    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    .line 62
    iput v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$1;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    .line 90
    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$4;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$6;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 130
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    .line 131
    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.keyguard.servicebox.pages.calendar.NEXT_EVENT_ENDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    .line 139
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->registerReceivers()V

    .line 129
    return-void
.end method

.method private getEventsFromCalendar(JJ)Landroid/database/Cursor;
    .locals 7
    .param p1, "todayStartTime"    # J
    .param p3, "todayTimezoneStartTime"    # J

    .prologue
    .line 206
    const-string/jumbo v6, "((((dtend>= ?) AND (allDay= ?) ) OR ((dtstart<= ?) AND (dtend> ?) AND (allDay= ?) ) ) AND (deleted= 0) AND (visible= 1) )"

    .line 228
    .local v6, "selection":Ljava/lang/String;
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    .line 230
    const-string/jumbo v2, "0"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    .line 231
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    .line 232
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v4, v3

    .line 233
    const-string/jumbo v2, "1"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    .line 236
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "allDay DESC, dtstart ASC, title ASC"

    .line 240
    .local v5, "orderBy":Ljava/lang/String;
    const-string/jumbo v2, "content://com.android.calendar/events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 241
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    monitor-enter v1

    .line 143
    :try_start_0
    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    .line 147
    :cond_0
    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextEndEvent(Ljava/util/ArrayList;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;"
        }
    .end annotation

    .prologue
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 320
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-object v6

    .line 322
    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    .line 323
    .local v1, "nextEndTimeEvent":Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    iget-wide v2, v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    .line 325
    .local v2, "nextEndTime":J
    const/4 v0, 0x1

    .local v0, "idx":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 326
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v4, v4, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v4, v4, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 327
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "nextEndTimeEvent":Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    check-cast v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    .line 328
    .restart local v1    # "nextEndTimeEvent":Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    iget-wide v2, v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    .line 325
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_3
    const-string/jumbo v4, "CalendarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Next end event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-object v1
.end method

.method private getTasksFromCalendar(J)Landroid/database/Cursor;
    .locals 7
    .param p1, "todayTimezoneStartTime"    # J

    .prologue
    .line 247
    const-string/jumbo v3, "((due_date= ?) AND (deleted= 0) AND (complete= 0) )"

    .line 255
    .local v3, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 256
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    .line 259
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "importance DESC, subject ASC"

    .line 262
    .local v5, "orderBy":Ljava/lang/String;
    const-string/jumbo v2, "content://com.android.calendar/syncTasks"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 263
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;->TABLE_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private handleCalendarUpdated()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method private registerAlarm(Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;)V
    .locals 6
    .param p1, "nextEndEvent"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->unregisterAlarm()V

    .line 339
    if-nez p1, :cond_0

    return-void

    .line 341
    :cond_0
    iget-wide v2, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/32 v4, 0xea60

    add-long v0, v2, v4

    .line 342
    .local v0, "nextAlarmTime":J
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 336
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v1, "com.android.calendar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.android.calendar.ACTION_UPDATE_WIDGET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v1, "com.android.keyguard.servicebox.pages.calendar.NEXT_EVENT_ENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.android.intent.CHANGE_SHARE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 284
    return-void
.end method

.method private removeEndedEvents(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;>;"
    if-nez p1, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 312
    .local v0, "curTimeMillis":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "idx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 313
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v4, v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    iget-wide v4, v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    .line 314
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 312
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 308
    :cond_2
    return-void
.end method

.method private roundDownMillis(J)J
    .locals 3
    .param p1, "mills"    # J

    .prologue
    .line 281
    const-wide/16 v0, 0x3e8

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private unregisterAlarm()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 345
    return-void
.end method


# virtual methods
.method public addEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    .prologue
    const/4 v2, 0x0

    .line 350
    if-nez p1, :cond_0

    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 352
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    .line 358
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    .line 360
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    .line 349
    :goto_1
    return-void

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public getCachedEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEventCnt()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public is24HourFormat()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    return v0
.end method

.method public loadTodayEvents(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 12
    .param p1, "listener"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    .prologue
    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 158
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v4

    .line 159
    .local v4, "todayStartTime":J
    const-wide/32 v2, 0x5265c00

    add-long v8, v4, v2

    .line 160
    .local v8, "todayEndTime":J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v2, v1

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v6

    .line 163
    .local v6, "todayTimezoneStartTime":J
    new-instance v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;

    move-object v3, p0

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJJLcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    .line 201
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 163
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v11

    .line 154
    .local v11, "eventListLoader":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/ArrayList<Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;>;>;"
    return-void
.end method

.method public notifyEventChanged()V
    .locals 3

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    .line 372
    .local v0, "listener":Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;
    if-eqz v0, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 370
    .end local v0    # "listener":Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;
    :cond_1
    return-void
.end method

.method public removeEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method
