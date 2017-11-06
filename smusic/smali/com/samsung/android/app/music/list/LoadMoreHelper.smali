.class public abstract Lcom/samsung/android/app/music/list/LoadMoreHelper;
.super Ljava/lang/Object;
.source "LoadMoreHelper.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/LoadMoreManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLoadMoreRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/list/LoadMoreHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/LoadMoreHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected hasMore(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 35
    const-string v1, "has_more"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMore()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/LoadMoreHelper;->mLoadMoreRequested:Z

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/LoadMoreHelper;->mLoadMoreRequested:Z

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/LoadMoreHelper;->loadMoreInternal()V

    .line 44
    :cond_0
    return-void
.end method

.method protected abstract loadMoreInternal()V
.end method

.method public updateLoadMoreInfo(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "adapter"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/16 v4, -0x3eb

    .line 21
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/LoadMoreHelper;->hasMore(Landroid/database/Cursor;)Z

    move-result v0

    .line 22
    .local v0, "hasMore":Z
    sget-object v1, Lcom/samsung/android/app/music/list/LoadMoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLoadMoreInfo() | hasMore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/list/LoadMoreHelper;->mLoadMoreRequested:Z

    .line 25
    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->removeFooterView(I)V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->hasFooterView(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    const v1, 0x7f0400af

    invoke-virtual {p1, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addFooterView(II)V

    goto :goto_0
.end method
