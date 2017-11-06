.class Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnMultiWindowModeChangedObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindowMode"    # Z

    .prologue
    .line 594
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnMultiWindowModeChangedObservers;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    .line 595
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;->onMultiWindowModeChanged(Z)V

    goto :goto_0

    .line 597
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;
    :cond_0
    return-void
.end method
