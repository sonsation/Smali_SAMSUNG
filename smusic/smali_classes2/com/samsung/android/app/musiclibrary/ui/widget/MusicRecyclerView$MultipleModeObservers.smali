.class Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "MusicRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleModeObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyItemCheckedStateChanged()V
    .locals 3

    .prologue
    .line 771
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    .line 772
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;->onItemCheckedStateChanged()V

    goto :goto_0

    .line 774
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;
    :cond_0
    return-void
.end method
