.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;
.super Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
.source "CalendarTask.java"


# static fields
.field public static final TABLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "subject"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarTask;->TABLE_PROJECTION:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;-><init>()V

    .line 52
    return-void
.end method
