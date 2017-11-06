.class public final Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;
.super Landroid/os/Handler;
.source "ClickEventInterceptor.java"


# instance fields
.field private mDuration:I

.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mIsEnabled:Z

    .line 13
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mDuration:I

    .line 14
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mIsEnabled:Z

    .line 38
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mIsEnabled:Z

    return v0
.end method

.method public setBlockDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mDuration:I

    .line 18
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mIsEnabled:Z

    .line 30
    if-nez p1, :cond_0

    .line 31
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    :cond_0
    return-void
.end method
