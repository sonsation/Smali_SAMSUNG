.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailWhisperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentWhisperInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mWhisperInfoList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mLock:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public changeResumePackage(Ljava/lang/String;)V
    .locals 8
    .param p1, "resumePackageName"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v7, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    .line 107
    .local v2, "backup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    .line 108
    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 109
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 110
    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    .line 111
    .local v5, "wi":Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 113
    .local v4, "id":I
    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-interface {v6, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onUpdateCocktail(I)V

    .line 109
    .end local v4    # "id":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v5    # "wi":Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 118
    .local v1, "S":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 119
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 120
    .restart local v4    # "id":I
    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 121
    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-interface {v6, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onRemoveUpdatableCocktail(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v4    # "id":I
    :cond_3
    monitor-exit v7

    .line 104
    return-void

    .line 105
    .end local v0    # "N":I
    .end local v1    # "S":I
    .end local v2    # "backup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "state"    # I

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    packed-switch p2, :pswitch_data_0

    :goto_0
    monitor-exit v1

    .line 81
    :cond_0
    return-void

    .line 87
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->whisper:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    new-instance v3, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->whisper:Ljava/lang/String;

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/cocktailbar/Cocktail;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 90
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    new-instance v3, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    invoke-direct {v3, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;-><init>(Lcom/samsung/android/cocktailbar/Cocktail;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCocktailType()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x6

    return v0
.end method

.method public isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .locals 2
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "isUpdated"    # Z

    .prologue
    .line 58
    if-eqz p4, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-interface {v0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onDisableUpdatableCocktail(II)V

    .line 61
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "isUpdated"    # Z

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
    .locals 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .param p4, "userId"    # I
    .param p5, "isUpdated"    # Z

    .prologue
    .line 39
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 40
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 41
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mCurrentWhisperInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    .line 42
    .local v1, "wi":Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget v2, v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->uid:I

    if-ne v0, v2, :cond_1

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-interface {v2, v4, p4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onEanbleUpdatableCocktail(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 46
    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 39
    .end local v0    # "callingUid":I
    .end local v1    # "wi":Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v3, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 67
    sget-object v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isMatchedPolicy: cocktail is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v3

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 71
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_1

    .line 72
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    packed-switch v1, :pswitch_data_0

    .line 77
    :cond_1
    return v3

    .line 74
    :pswitch_0
    const/4 v1, 0x1

    return v1

    nop

    .line 72
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_0
    .end packed-switch
.end method
