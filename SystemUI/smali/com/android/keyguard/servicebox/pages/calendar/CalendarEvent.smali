.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;
.super Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
.source "CalendarEvent.java"


# static fields
.field public static final TABLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "dtstart"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "dtend"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "allDay"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 32
    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;JJ)V
    .locals 0
    .param p1, "cur"    # Landroid/database/Cursor;
    .param p2, "dayStartTime"    # J
    .param p4, "dayEndTime"    # J

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;-><init>(Landroid/database/Cursor;)V

    .line 61
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->resetTimeForDay(JJ)V

    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFrom(Landroid/database/Cursor;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 1
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->copyFrom(Landroid/database/Cursor;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Landroid/database/Cursor;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;
    .locals 5
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    .line 70
    if-nez p1, :cond_0

    return-object p0

    .line 72
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->id:J

    .line 73
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->title:Ljava/lang/String;

    .line 74
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    .line 75
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->endTime:J

    .line 76
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    .line 78
    :cond_1
    return-object p0
.end method

.method protected getCalendarActivityLaunchOptions()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "launchOptions":Landroid/os/Bundle;
    const-string/jumbo v1, "beginTime"

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->endTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 115
    const-string/jumbo v1, "DetailMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    const-string/jumbo v1, "launch_from_widget"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    return-object v0
.end method

.method public getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    .line 96
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->servicebox_event_time_all_day:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->getCurrentTimeFormatter(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 101
    .local v0, "timeFormatter":Ljava/text/SimpleDateFormat;
    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    :cond_1
    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->endTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 106
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->servicebox_event_time_all_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 88
    const-string/jumbo v0, "-"

    return-object v0

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->getCurrentTimeFormatter(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetTimeForDay(JJ)V
    .locals 5
    .param p1, "dayStartTime"    # J
    .param p3, "dayEndTime"    # J

    .prologue
    const-wide/16 v2, -0x1

    .line 122
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->endTime:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_3

    .line 127
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->startTime:J

    goto :goto_0

    .line 128
    :cond_3
    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->endTime:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    .line 129
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEvent;->endTime:J

    goto :goto_0
.end method
