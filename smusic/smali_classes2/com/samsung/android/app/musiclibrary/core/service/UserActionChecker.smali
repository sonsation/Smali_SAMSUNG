.class final Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;
.super Landroid/os/Handler;
.source "UserActionChecker.java"


# static fields
.field private static final ACTIVE_TIME:I = 0xbb8


# instance fields
.field private mIsBackgroundUserRequest:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    .line 20
    return-void
.end method

.method isUserAction()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    return v0
.end method

.method setUserAction(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    .line 28
    return-void
.end method

.method setUserActionActive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    .line 32
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->removeMessages(I)V

    .line 33
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    return-void
.end method
