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
    const-string/jumbo v1, "event_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "begin"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "end"

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
