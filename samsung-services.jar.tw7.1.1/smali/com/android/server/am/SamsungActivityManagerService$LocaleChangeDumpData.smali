.class Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleChangeDumpData"
.end annotation


# instance fields
.field public mCallstack:Ljava/lang/RuntimeException;

.field public mMsg:Ljava/lang/String;

.field public mSystemTimeMillis:J

.field public mTimeZone:Ljava/util/TimeZone;

.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;JLjava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/SamsungActivityManagerService;
    .param p2, "systemTimeMillis"    # J
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1718
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mSystemTimeMillis:J

    .line 1720
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mCallstack:Ljava/lang/RuntimeException;

    .line 1724
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->updateData(JLjava/lang/String;)V

    .line 1723
    return-void
.end method


# virtual methods
.method public updateData(JLjava/lang/String;)V
    .locals 1
    .param p1, "systemTimeMillis"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 1728
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mTimeZone:Ljava/util/TimeZone;

    .line 1729
    iput-wide p1, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mSystemTimeMillis:J

    .line 1730
    iput-object p3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mMsg:Ljava/lang/String;

    .line 1732
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mCallstack:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1727
    return-void
.end method
