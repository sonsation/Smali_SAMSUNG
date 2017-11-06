.class Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnListActionModeObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyActionModeFinished(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 412
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;->onListActionModeFinished(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 414
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
    :cond_0
    return-void
.end method

.method public notifyActionModeStarted(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 405
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnListActionModeObservers;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 406
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;->onListActionModeStarted(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 408
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
    :cond_0
    return-void
.end method
