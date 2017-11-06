.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;
.super Landroid/os/Handler;
.source "ToastHandler.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 27
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mToast:Landroid/widget/Toast;

    .line 37
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 38
    return-void

    .line 30
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public showToast(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->sendEmptyMessage(I)Z

    .line 47
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
