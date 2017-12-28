.class public Lcom/android/launcher3/home/HotWord;
.super Ljava/lang/Object;
.source "HotWord.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "Home.HotWord"

    sput-object v0, Lcom/android/launcher3/home/HotWord;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    .line 21
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/HotWord;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 22
    new-instance v0, Lcom/google/android/hotword/client/HotwordServiceClient;

    iget-object v1, p0, Lcom/android/launcher3/home/HotWord;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    .line 23
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onAttachedToWindow()V

    .line 27
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onDetachedFromWindow()V

    .line 31
    return-void
.end method

.method public setEnableHotWord(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lcom/android/launcher3/home/HotWord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableHotWord enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0, p1}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    goto :goto_0

    .line 43
    :cond_2
    sget-object v0, Lcom/android/launcher3/home/HotWord;->TAG:Ljava/lang/String;

    const-string v1, "setEnableHotWord is called by other thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
