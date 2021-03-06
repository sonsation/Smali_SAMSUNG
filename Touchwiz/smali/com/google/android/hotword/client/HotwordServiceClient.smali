.class public Lcom/google/android/hotword/client/HotwordServiceClient;
.super Ljava/lang/Object;
.source "HotwordServiceClient.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/hotword/client/HotwordServiceClient$1;,
        Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;,
        Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final HOTWORD_SERVICE:Ljava/lang/String; = "com.google.android.googlequicksearchbox.HOTWORD_SERVICE"

.field private static final TAG:Ljava/lang/String; = "HotwordServiceClient"

.field private static final VEL_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mFocusObserver:Landroid/view/WindowId$FocusObserver;

.field private mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

.field private mHotwordStart:Z

.field private mIsAvailable:Z

.field private mIsBound:Z

.field private mIsFocused:Z

.field private mIsRequested:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsRequested:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsFocused:Z

    .line 50
    iput-object p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    .line 51
    new-instance v0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;-><init>(Lcom/google/android/hotword/client/HotwordServiceClient;Lcom/google/android/hotword/client/HotwordServiceClient$1;)V

    iput-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mConnection:Landroid/content/ServiceConnection;

    .line 52
    new-instance v0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;

    invoke-direct {v0, p0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;-><init>(Lcom/google/android/hotword/client/HotwordServiceClient;Lcom/google/android/hotword/client/HotwordServiceClient$1;)V

    iput-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mFocusObserver:Landroid/view/WindowId$FocusObserver;

    .line 53
    return-void
.end method

.method static synthetic access$202(Lcom/google/android/hotword/client/HotwordServiceClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/hotword/client/HotwordServiceClient;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsFocused:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/hotword/client/HotwordServiceClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/hotword/client/HotwordServiceClient;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalRequestHotword()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/hotword/client/HotwordServiceClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/hotword/client/HotwordServiceClient;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/hotword/client/HotwordServiceClient;Lcom/google/android/hotword/service/IHotwordService;)Lcom/google/android/hotword/service/IHotwordService;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/hotword/client/HotwordServiceClient;
    .param p1, "x1"    # Lcom/google/android/hotword/service/IHotwordService;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

    return-object p1
.end method

.method private assertMainThread()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    return-void
.end method

.method private internalBind()V
    .locals 4

    .prologue
    .line 112
    iget-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.googlequicksearchbox.HOTWORD_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    .line 118
    iget-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    iput-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    .line 119
    iget-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsAvailable:Z

    if-nez v1, :cond_0

    const-string v1, "HotwordServiceClient"

    const-string v2, "Hotword service is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private internalRequestHotword()V
    .locals 4

    .prologue
    .line 127
    iget-boolean v2, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsFocused:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsRequested:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 129
    .local v1, "start":Z
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordStart:Z

    if-ne v2, v1, :cond_2

    .line 140
    :cond_0
    :goto_1
    return-void

    .line 127
    .end local v1    # "start":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    .restart local v1    # "start":Z
    :cond_2
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordStart:Z

    .line 132
    iget-boolean v2, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    if-nez v2, :cond_3

    .line 133
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalBind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HotwordServiceClient"

    const-string v3, "requestHotwordDetection - remote call failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mHotwordService:Lcom/google/android/hotword/service/IHotwordService;

    iget-object v3, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/google/android/hotword/service/IHotwordService;->requestHotwordDetection(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isPreKitKatDevice()Z
    .locals 2

    .prologue
    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 105
    const-string v0, "HotwordServiceClient"

    const-string v1, "Hotword service isn\'t usable on pre-Kitkat devices"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->isPreKitKatDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->assertMainThread()V

    .line 64
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mFocusObserver:Landroid/view/WindowId$FocusObserver;

    invoke-virtual {v0, v1}, Landroid/view/WindowId;->registerFocusObserver(Landroid/view/WindowId$FocusObserver;)V

    .line 65
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalBind()V

    goto :goto_0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->isPreKitKatDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->assertMainThread()V

    .line 77
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mFocusObserver:Landroid/view/WindowId$FocusObserver;

    invoke-virtual {v0, v1}, Landroid/view/WindowId;->unregisterFocusObserver(Landroid/view/WindowId$FocusObserver;)V

    .line 78
    iget-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsBound:Z

    goto :goto_0
.end method

.method public final requestHotwordDetection(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->isPreKitKatDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->assertMainThread()V

    .line 92
    iput-boolean p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient;->mIsRequested:Z

    .line 94
    invoke-direct {p0}, Lcom/google/android/hotword/client/HotwordServiceClient;->internalRequestHotword()V

    goto :goto_0
.end method
