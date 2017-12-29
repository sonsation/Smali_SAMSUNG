.class public Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateRestrictMode.java"


# static fields
.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "br"    # Landroid/content/BroadcastReceiver;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 25
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;->mActivityManager:Landroid/app/ActivityManager;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p3, v0}, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedCocktailType()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "restrictmode"

    return-object v0
.end method

.method isEnableMode()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .line 37
    .local v1, "enable":Z
    sget-object v2, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_LOCK_TASK_MODE : reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    if-eqz v1, :cond_0

    .line 40
    const/4 v2, 0x4

    return v2

    .line 42
    :cond_0
    const/4 v2, 0x5

    return v2

    .line 45
    .end local v1    # "enable":Z
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
