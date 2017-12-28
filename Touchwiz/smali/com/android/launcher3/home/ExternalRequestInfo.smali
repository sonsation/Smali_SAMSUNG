.class abstract Lcom/android/launcher3/home/ExternalRequestInfo;
.super Ljava/lang/Object;
.source "ExternalRequestInfo.java"


# static fields
.field static final INSTALL_SHORTCUT:I = 0x1

.field static final INSTALL_WIDGET:I = 0x3

.field static final TYPE_KEY:Ljava/lang/String; = "type"

.field static final TYPE_TIME:Ljava/lang/String; = "time"

.field static final UNINSTALL_SHORTCUT:I = 0x2

.field static final UNINSTALL_WIDGET:I = 0x4


# instance fields
.field requestTime:J

.field final requestType:I

.field protected user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(ILcom/android/launcher3/common/compat/UserHandleCompat;J)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "userHandleCompat"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "time"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/launcher3/home/ExternalRequestInfo;->requestType:I

    .line 38
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .end local p3    # "time":J
    :cond_0
    iput-wide p3, p0, Lcom/android/launcher3/home/ExternalRequestInfo;->requestTime:J

    .line 39
    if-eqz p2, :cond_1

    .end local p2    # "userHandleCompat":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_0
    iput-object p2, p0, Lcom/android/launcher3/home/ExternalRequestInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 40
    return-void

    .line 39
    .restart local p2    # "userHandleCompat":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method abstract encodeToString()Ljava/lang/String;
.end method

.method equals(Lcom/android/launcher3/home/ExternalRequestInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/home/ExternalRequestInfo;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/launcher3/home/ExternalRequestInfo;->requestTime:J

    iget-wide v2, p1, Lcom/android/launcher3/home/ExternalRequestInfo;->requestTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/ExternalRequestInfo;->requestType:I

    iget v1, p1, Lcom/android/launcher3/home/ExternalRequestInfo;->requestType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ExternalRequestInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v1, p1, Lcom/android/launcher3/home/ExternalRequestInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRequestType()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/launcher3/home/ExternalRequestInfo;->requestType:I

    return v0
.end method

.method abstract getTargetPackage()Ljava/lang/String;
.end method

.method getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/home/ExternalRequestInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-object v0
.end method

.method abstract runRequestInfo(Landroid/content/Context;)V
.end method
