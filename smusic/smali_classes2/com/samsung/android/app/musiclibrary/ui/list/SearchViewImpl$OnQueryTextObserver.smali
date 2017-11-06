.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "SearchViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnQueryTextObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers",
        "<",
        "Landroid/widget/SearchView$OnQueryTextListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyOnQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView$OnQueryTextListener;

    .line 106
    .local v0, "l":Landroid/widget/SearchView$OnQueryTextListener;
    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    goto :goto_0

    .line 108
    .end local v0    # "l":Landroid/widget/SearchView$OnQueryTextListener;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public notifyOnQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "submit":Z
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->mObserver:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView$OnQueryTextListener;

    .line 114
    .local v0, "l":Landroid/widget/SearchView$OnQueryTextListener;
    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 115
    :goto_1
    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 116
    .end local v0    # "l":Landroid/widget/SearchView$OnQueryTextListener;
    :cond_2
    return v1
.end method
