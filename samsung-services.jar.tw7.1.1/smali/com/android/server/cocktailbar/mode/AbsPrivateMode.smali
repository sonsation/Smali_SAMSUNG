.class public abstract Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.super Ljava/lang/Object;
.source "AbsPrivateMode.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode;


# instance fields
.field private mCocktailType:I

.field protected mContext:Landroid/content/Context;

.field protected mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

.field private mPrivateModeId:I

.field private mPrivateModeName:Ljava/lang/String;

.field private mRegistratonType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "br"    # Landroid/content/BroadcastReceiver;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    .line 26
    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    .line 27
    iput p2, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeId:I

    .line 28
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getDefinedCocktailType()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    .line 29
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getDefinedPrivateModeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .line 25
    return-void
.end method


# virtual methods
.method public getCocktailType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    return v0
.end method

.method abstract getDefinedCocktailType()I
.end method

.method abstract getDefinedPrivateModeName()Ljava/lang/String;
.end method

.method public getModeId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeId:I

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    return v0
.end method

.method abstract isEnableMode()Z
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6
    .param p1, "br"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method protected registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p1, "br"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public renewMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->isEnableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getModeId()I

    move-result p1

    .end local p1    # "mode":I
    :cond_0
    return p1
.end method

.method protected unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "br"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    return-void
.end method
