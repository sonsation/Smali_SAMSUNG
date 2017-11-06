.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "ExtrasNotifyDelegationManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater$OnCallbackCountChangeListener;


# instance fields
.field private mAudioId:J

.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mCurrentCallbackCount:I

.field private mNeedNotify:Z

.field private final mSavedExtraMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 2
    .param p1, "facade"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mCurrentCallbackCount:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mNeedNotify:Z

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mAudioId:J

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 27
    return-void
.end method

.method private pushExtras(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v4, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 81
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 82
    return-void
.end method


# virtual methods
.method public onCallbackCountChange(I)V
    .locals 1
    .param p1, "currentCallbackCount"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mCurrentCallbackCount:I

    .line 41
    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mNeedNotify:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->pushExtras(Ljava/util/Map;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mNeedNotify:Z

    .line 45
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 32
    .local v0, "audioId":J
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mAudioId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 33
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mAudioId:J

    .line 34
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 36
    :cond_0
    return-void
.end method

.method public pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mCurrentCallbackCount:I

    if-lez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mNeedNotify:Z

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    return-void
.end method

.method public removeExtraStateUpdate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ExtrasNotifyDelegationManager;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
