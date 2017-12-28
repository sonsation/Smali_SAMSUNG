.class Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;
.super Ljava/lang/Object;
.source "WidgetPagedView.java"

# interfaces
.implements Lcom/android/launcher3/widget/view/ViewRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewPool"
.end annotation


# static fields
.field private static final TYPE_FOLDER:I = 0x1

.field private static final TYPE_SINGLE:I


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/view/WidgetPagedView;Landroid/view/LayoutInflater;)V
    .locals 3
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->mPool:Ljava/util/HashMap;

    .line 102
    iput-object p2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->mPool:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->mPool:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->mPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 132
    .local v1, "containers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Landroid/view/ViewGroup;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    .local v0, "container":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "container":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    .end local v1    # "containers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Landroid/view/ViewGroup;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 135
    .restart local v1    # "containers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Landroid/view/ViewGroup;>;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized get(ZLandroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 5
    .param p1, "folder"    # Z
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 109
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 110
    .local v2, "type":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->mPool:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 111
    .local v1, "recycleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 112
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_0
    monitor-exit p0

    return-object v3

    .line 114
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getWidgetItemFolderViewId()I

    move-result v0

    .line 116
    .local v0, "id":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_0

    .line 114
    .end local v0    # "id":I
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    .line 115
    invoke-virtual {v3}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getWidgetItemSingleViewId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    .line 109
    .end local v1    # "recycleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized recycle(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    instance-of v3, p1, Lcom/android/launcher3/widget/view/WidgetItemFolderView;

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 123
    .local v2, "type":I
    :goto_0
    instance-of v3, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v3, :cond_0

    .line 124
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetItemView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->resetToRecycle()V

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->mPool:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 127
    .local v1, "recycleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 122
    .end local v1    # "recycleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    .end local v2    # "type":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
