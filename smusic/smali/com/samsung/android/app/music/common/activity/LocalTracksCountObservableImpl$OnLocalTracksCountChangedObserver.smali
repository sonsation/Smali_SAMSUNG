.class Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;
.super Ljava/lang/Object;
.source "LocalTracksCountObservableImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnLocalTracksCountChangedObserver"
.end annotation


# instance fields
.field private final mObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->mObserver:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$1;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyLocalTracksCountChanged()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->mObserver:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .line 89
    .local v0, "l":Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;
    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;->onLocalTracksCountChanged()V

    goto :goto_0

    .line 91
    .end local v0    # "l":Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;
    :cond_0
    return-void
.end method

.method public register(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->mObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public unregister(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->mObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public unregisterAll()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->mObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void
.end method
