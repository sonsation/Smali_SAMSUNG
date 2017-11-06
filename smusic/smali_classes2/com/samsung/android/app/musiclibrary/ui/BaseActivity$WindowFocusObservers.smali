.class Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowFocusObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers",
        "<",
        "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$1;

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;-><init>()V

    return-void
.end method


# virtual methods
.method notify(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 740
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$WindowFocusObservers;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 741
    .local v0, "l":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    invoke-interface {v0, p1}, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 743
    .end local v0    # "l":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    :cond_0
    return-void
.end method
