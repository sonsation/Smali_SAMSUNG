.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;
.super Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
.source "CalendarTask.java"


# static fields
.field public static final TABLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 34
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "subject"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 33
    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;->TABLE_PROJECTION:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;-><init>(Landroid/database/Cursor;)V

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFrom(Landroid/database/Cursor;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 1
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;->copyFrom(Landroid/database/Cursor;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Landroid/database/Cursor;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;
    .locals 3
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 73
    if-nez p1, :cond_0

    return-object p0

    .line 75
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;->id:J

    .line 76
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;->title:Ljava/lang/String;

    .line 77
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;->isAllDay:Z

    .line 79
    return-object p0
.end method

.method protected getCalendarActivityLaunchOptions()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "launchOptions":Landroid/os/Bundle;
    const-string/jumbo v1, "task"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    const-string/jumbo v1, "selected"

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 61
    const-string/jumbo v1, "action_view_focus"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string/jumbo v1, "launch_from_inside"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string/jumbo v1, "DetailMode"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    return-object v0
.end method
