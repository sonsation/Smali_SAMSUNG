.class public Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateKnoxMode.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentUserId:I

.field private mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "br"    # Landroid/content/BroadcastReceiver;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;
    .param p5, "serviceListener"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    .line 29
    iput-object p5, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v1, "com.samsung.container.LAUNCH_INFO"

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedCocktailType()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "knoxmode"

    return-object v0
.end method

.method isEnableMode()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 38
    .local v13, "action":Ljava/lang/String;
    const-string v0, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    const-string v0, "userId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 41
    .local v2, "userId":I
    sget-object v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT_ACTION_LAUNCH_INFO : userId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    .local v3, "currentUserType":I
    const/4 v4, 0x0

    .line 48
    .local v4, "newUserType":I
    const/4 v5, 0x0

    .line 49
    .local v5, "modeId":I
    const/16 v0, 0x64

    if-lt v2, v0, :cond_3

    .line 50
    iget v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 51
    const/4 v3, 0x1

    .line 55
    :goto_0
    const/16 v4, 0x100

    .line 56
    const/4 v5, 0x2

    .line 62
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v1, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    .line 63
    const/4 v6, 0x0

    .line 62
    invoke-interface/range {v0 .. v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V

    .line 64
    iput v2, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    .line 65
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_2
    const/16 v3, 0x100

    goto :goto_0

    .line 57
    :cond_3
    iget v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v0, 0x64

    if-ge v2, v0, :cond_1

    .line 58
    const/16 v3, 0x100

    .line 59
    const/16 v4, 0x100

    .line 60
    const/4 v5, 0x2

    goto :goto_1

    .line 67
    .end local v2    # "userId":I
    .end local v3    # "currentUserType":I
    .end local v4    # "newUserType":I
    .end local v5    # "modeId":I
    :cond_4
    const-string v0, "com.samsung.knox.container.admin.locked"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_5
    const/4 v3, 0x0

    .line 72
    .restart local v3    # "currentUserType":I
    const/4 v4, 0x0

    .line 73
    .restart local v4    # "newUserType":I
    iget v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_6

    .line 74
    const/16 v3, 0x100

    .line 75
    const/16 v4, 0x100

    .line 76
    iget-object v6, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v7, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    const/4 v8, 0x0

    .line 77
    const/4 v11, 0x2

    .line 78
    const/4 v12, 0x0

    move v9, v3

    move v10, v4

    .line 76
    invoke-interface/range {v6 .. v12}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V

    .line 81
    .end local v3    # "currentUserType":I
    .end local v4    # "newUserType":I
    :cond_6
    const/4 v0, 0x0

    return v0
.end method
