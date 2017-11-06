.class Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "RecyclerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnIndexViewObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;-><init>()V

    return-void
.end method


# virtual methods
.method notifyStateChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1276
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;

    .line 1277
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;->onIndexVisibleStateChanged(Z)V

    goto :goto_0

    .line 1279
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;
    :cond_0
    return-void
.end method
