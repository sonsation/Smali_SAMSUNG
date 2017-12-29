.class public Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
.super Ljava/lang/Object;
.source "CocktailBarModeManager.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;


# static fields
.field public static final COCKTAIL_MODE_KNOX:I = 0x2

.field public static final COCKTAIL_MODE_KNOX_COM:I = 0x3

.field public static final COCKTAIL_MODE_NORMAL:I = 0x1

.field public static final COCKTAIL_MODE_PRIVATE_MODE:I = 0x10000

.field public static final COCKTAIL_MODE_UNKNOWN:I = 0x0

.field public static final COCKTAIL_TYPE_ALONE:I = 0x2

.field public static final COCKTAIL_TYPE_OVERLAY:I = 0x1

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailBarModeId:I

.field private mContext:Landroid/content/Context;

.field private mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field private mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

.field private mNextPrivateModeId:I

.field private mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field private mPrivateModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/high16 v6, 0x10000

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .line 60
    new-instance v0, Lcom/android/server/cocktailbar/mode/NormalMode;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/mode/NormalMode;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 61
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    const/4 v2, 0x2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    .line 68
    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    .line 67
    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 69
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKioskMDMMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    .line 70
    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    .line 69
    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateKioskMDMMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 57
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    .line 65
    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    .line 64
    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_0
.end method

.method private setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupPrivateMode : exist duplicated privateMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .locals 4
    .param p1, "modeId"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    packed-switch p1, :pswitch_data_0

    .line 118
    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pMode$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 119
    .local v1, "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    invoke-interface {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 120
    move-object v0, v1

    .line 126
    .end local v0    # "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .end local v1    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .end local v2    # "pMode$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    .line 108
    .restart local v0    # "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .local v0, "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    goto :goto_0

    .line 111
    .local v0, "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .local v0, "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    goto :goto_0

    .line 114
    .local v0, "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .local v0, "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCocktailBarMode(Ljava/lang/String;)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .locals 1
    .param p1, "privateMode"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    return-object v0
.end method

.method public getCocktailBarModeName(I)Ljava/lang/String;
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 92
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pMode$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 94
    .local v0, "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 99
    .end local v0    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .end local v1    # "pMode$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getCurrentModeId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    return v0
.end method

.method public isDisableCocktailBarMode(I)Z
    .locals 4
    .param p1, "modeId"    # I

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    .line 135
    .local v0, "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailBarType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 138
    :cond_1
    return v1
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 142
    iget-object v4, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pMode$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 143
    .local v2, "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    invoke-interface {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getRegistrationType()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 144
    invoke-interface {v2, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->onBroadcastReceived(Landroid/content/Intent;)I

    move-result v1

    .line 145
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    return v5

    .line 147
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 148
    return v5

    .line 150
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 151
    return v5

    .line 154
    :pswitch_3
    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    .line 155
    .local v0, "enable":Z
    :goto_1
    invoke-interface {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->restrictMode(ZI)V

    .line 156
    return v5

    .line 154
    .end local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_1

    .line 164
    .end local v0    # "enable":Z
    .end local v1    # "mode":I
    .end local v2    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :cond_2
    const/4 v4, 0x0

    return v4

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 205
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onResetMode(IILjava/lang/String;)V

    .line 207
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    .line 208
    sget-boolean v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "debugString":Ljava/lang/StringBuffer;
    const-string v1, "onResetMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    sget-object v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "debugString":Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 186
    if-eqz p2, :cond_1

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 187
    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    .line 188
    .local v0, "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v3

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v5

    .line 191
    invoke-interface {v2, p1, v3, v4, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    .line 193
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    .line 194
    sget-boolean v2, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 195
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "onSetMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "debugString":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    sget-object v2, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    :cond_1
    return-void

    .line 196
    .restart local v0    # "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .restart local v1    # "debugString":Ljava/lang/StringBuffer;
    :cond_2
    const-string v2, " no-current"

    goto :goto_0
.end method

.method public onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 218
    if-eqz p2, :cond_1

    .line 219
    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    .line 220
    .local v0, "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    if-eqz v0, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v3

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v5

    .line 223
    invoke-interface {v2, p1, v3, v4, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    .line 225
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    iput v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    .line 226
    sget-boolean v2, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 227
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "debugString":Ljava/lang/StringBuffer;
    const-string v2, "onSetModeForcely: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    sget-object v2, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v0    # "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    :cond_1
    return-void

    .line 228
    .restart local v0    # "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .restart local v1    # "debugString":Ljava/lang/StringBuffer;
    :cond_2
    const-string v2, " no-current"

    goto :goto_0
.end method

.method public refreshCocktailBarMode()I
    .locals 4

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    .line 85
    .local v0, "mode":I
    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pMode$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 86
    .local v1, "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->renewMode(I)I

    move-result v0

    goto :goto_0

    .line 88
    .end local v1    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :cond_0
    return v0
.end method

.method public resetMode(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 171
    return-void
.end method

.method public restrictMode(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "modeId"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onRestrictMode(ZI)V

    .line 175
    return-void
.end method

.method public setMode(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 167
    return-void
.end method
