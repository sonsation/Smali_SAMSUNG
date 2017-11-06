.class Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnKeyObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 362
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    .line 363
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const/4 v1, 0x1

    .line 367
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyOnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 371
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$OnKeyObservers;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    .line 372
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const/4 v1, 0x1

    .line 376
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
