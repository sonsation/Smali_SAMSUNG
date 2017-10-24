.class public abstract Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
.super Ljava/lang/Object;
.source "CalendarData.java"


# instance fields
.field public endTime:J

.field public id:J

.field public isAllDay:Z

.field public startTime:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->id:J

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    .line 38
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    .line 39
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v2, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->id:J

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    .line 38
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    .line 39
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->copyFrom(Landroid/database/Cursor;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract copyFrom(Landroid/database/Cursor;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
.end method

.method protected getCalendarActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->id:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->getCalendarActivityLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    return-object v0
.end method

.method protected getCalendarActivityLaunchOptions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCurrentTimeFormatter(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->is24HourFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->servicebox_event_time_all_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->servicebox_event_time_all_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy MMMM d (EEEE)"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "displayFormatter":Ljava/text/SimpleDateFormat;
    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "formattedTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Event info : id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->id:J

    .line 97
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    const-string/jumbo v3, ", title = "

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    const-string/jumbo v3, ", start time = "

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    const-string/jumbo v3, ", end time = "

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    .line 97
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    const-string/jumbo v3, ", is all day = "

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
