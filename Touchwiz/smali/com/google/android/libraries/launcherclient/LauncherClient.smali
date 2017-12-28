.class public Lcom/google/android/libraries/launcherclient/LauncherClient;
.super Ljava/lang/Object;
.source "LauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;,
        Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HIDE_WINDOW_WHEN_OVERLAY_OPEN:Z = false

.field private static final OPTIONS_FLAG_HOTWORD:I = 0x2

.field private static final OPTIONS_FLAG_OVERLAY:I = 0x1

.field private static final OPTIONS_FLAG_PREWARMING:I = 0x4

.field private static final OVERLAY_OPTION_FLAG_ANIMATE:I = 0x1

.field private static final OVERLAY_OPTION_FLAG_IMMEDIATE:I = 0x0

.field private static final SERVICE_STATUS_ALL_FEATURES_OFF:I = 0x0

.field private static final SERVICE_STATUS_HOTWORD_ACTIVE:I = 0x2

.field private static final SERVICE_STATUS_OVERLAY_ATTACHED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DrawerOverlayClient"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mActivityConnection:Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;

.field private final mAppConnection:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

.field private mCurrentServiceConnectionOptions:I

.field private mDestroyed:Z

.field private mIsResumed:Z

.field private final mLauncherClientCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

.field protected mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field private mOverlayCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

.field private mServiceStatus:I

.field private final mUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowAttrs:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/libraries/launcherclient/LauncherClientCallbacksAdapter;

    invoke-direct {v0}, Lcom/google/android/libraries/launcherclient/LauncherClientCallbacksAdapter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

    .prologue
    const/4 v1, 0x1

    .line 160
    new-instance v0, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;
    .param p3, "clientOptions"    # Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v1, Lcom/google/android/libraries/launcherclient/LauncherClient$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/launcherclient/LauncherClient$1;-><init>(Lcom/google/android/libraries/launcherclient/LauncherClient;)V

    iput-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-boolean v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mIsResumed:Z

    .line 140
    iput-boolean v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    .line 142
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceStatus:I

    .line 172
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    .line 173
    iput-object p2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mLauncherClientCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

    .line 175
    new-instance v1, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;

    const/16 v3, 0x41

    invoke-direct {v1, p1, v3}, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivityConnection:Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;

    .line 177
    iput v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    .line 178
    iget v3, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    invoke-static {p3}, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;->access$300(Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    .line 179
    iget v3, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    invoke-static {p3}, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;->access$400(Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    :goto_1
    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    .line 180
    iget v3, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    .line 181
    invoke-static {p3}, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;->access$500(Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    :goto_2
    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    .line 183
    invoke-static {p1}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->get(Landroid/content/Context;)Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mAppConnection:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    .line 184
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mAppConnection:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    invoke-virtual {v1, p0}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->setClient(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    .line 190
    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->reconnect()V

    .line 196
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    move v1, v2

    .line 178
    goto :goto_0

    :cond_2
    move v1, v2

    .line 179
    goto :goto_1

    :cond_3
    move v1, v2

    .line 181
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/libraries/launcherclient/LauncherClient;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivityConnection:Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/AppServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/libraries/launcherclient/LauncherClient;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mAppConnection:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/launcherclient/LauncherClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/libraries/launcherclient/LauncherClient;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/libraries/launcherclient/LauncherClient;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/libraries/launcherclient/LauncherClient;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->notifyStatusChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/libraries/launcherclient/LauncherClient;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/libraries/launcherclient/LauncherClient;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/libraries/launcherclient/LauncherClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/libraries/launcherclient/LauncherClient;

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceStatus:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/libraries/launcherclient/LauncherClient;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mLauncherClientCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

    return-object v0
.end method

.method private applyWindowToken()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlayCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-direct {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlayCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlayCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->setClient(Lcom/google/android/libraries/launcherclient/LauncherClient;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlayCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    iget v3, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    .line 367
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mIsResumed:Z

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "app://"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "v"

    const/4 v3, 0x0

    .line 516
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 517
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 518
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    .line 519
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 520
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 518
    return-object v1
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyStatusChanged(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    iget v2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceStatus:I

    if-eq v2, p1, :cond_0

    .line 504
    iput p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mServiceStatus:I

    .line 505
    iget-object v3, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mLauncherClientCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2

    :goto_1
    invoke-interface {v3, v2, v0}, Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;->onServiceStateChanged(ZZ)V

    .line 509
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 505
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private removeClient(Z)V
    .locals 2
    .param p1, "unbindApp"    # Z

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    .line 315
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivityConnection:Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->unbindSelf()V

    .line 316
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlayCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlayCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->clear()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlayCallbacks:Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mAppConnection:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->clearClientIfSame(Lcom/google/android/libraries/launcherclient/LauncherClient;Z)V

    .line 321
    return-void
.end method

.method private setWindowAttrs(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "windowAttrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 345
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->applyWindowToken()V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->removeClient(Z)V

    .line 284
    return-void
.end method

.method public endMove()V
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideOverlay(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_1

    .line 446
    const/4 v0, 0x1

    .line 445
    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    :goto_1
    return-void

    .line 446
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->setWindowAttrs(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->removeClient(Z)V

    .line 276
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->setWindowAttrs(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mAppConnection:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->setAutoUnbind(Z)V

    .line 255
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivityConnection:Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->unbindSelf()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mIsResumed:Z

    .line 258
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mAppConnection:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->setAutoUnbind(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->reconnect()V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mIsResumed:Z

    .line 232
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method overlayAvailabilityChanged(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 1
    .param p1, "overlay"    # Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 493
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_1

    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->notifyStatusChanged(I)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->applyWindowToken()V

    goto :goto_0
.end method

.method public reconnect()V
    .locals 2

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mAppConnection:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->connectSafely()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivityConnection:Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->connectSafely()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/libraries/launcherclient/LauncherClient$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/launcherclient/LauncherClient$2;-><init>(Lcom/google/android/libraries/launcherclient/LauncherClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public requestHotwordDetection(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->requestVoiceDetection(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setOverlayEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 297
    if-eqz p1, :cond_1

    .line 298
    iget v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    or-int/lit8 v0, v1, 0x1

    .line 302
    .local v0, "newOptions":I
    :goto_0
    iget v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    if-eq v0, v1, :cond_0

    .line 303
    iput v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    .line 304
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mWindowAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->applyWindowToken()V

    .line 308
    :cond_0
    return-void

    .line 300
    .end local v0    # "newOptions":I
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mCurrentServiceConnectionOptions:I

    and-int/lit8 v0, v1, -0x2

    .restart local v0    # "newOptions":I
    goto :goto_0
.end method

.method public showOverlay(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_1
    return-void

    .line 462
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startMove()V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateMove(F)V
    .locals 1
    .param p1, "progressX"    # F

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    goto :goto_0
.end method
