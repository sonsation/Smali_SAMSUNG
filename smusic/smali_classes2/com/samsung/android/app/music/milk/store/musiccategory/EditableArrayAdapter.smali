.class public abstract Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;
.source "EditableArrayAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/IEditableAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;",
        ">",
        "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter",
        "<TItem;TVH;>;",
        "Lcom/samsung/android/app/music/milk/store/widget/IEditableAdapter;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EditableArrayAdapter"


# instance fields
.field private mParent:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

.field private reorderable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter<TItem;TVH;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->reorderable:Z

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;)Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->mParent:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    return-object v0
.end method


# virtual methods
.method public abstract getReorderIconResId()I
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter<TItem;TVH;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->isSelected(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter<TItem;TVH;>;"
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter<TItem;TVH;>;"
    .local p1, "viewHolder":Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;, "TVH;"
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;->reorderIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;->reorderIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V

    .line 75
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter<TItem;TVH;>;"
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;I)V

    return-void
.end method

.method public setParent(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)V
    .locals 0
    .param p1, "parent"    # Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    .prologue
    .line 33
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter<TItem;TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->mParent:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    .line 34
    return-void
.end method

.method public swapArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter<TItem;TVH;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->swapArray(Ljava/util/List;)V

    .line 53
    return-void
.end method

.method public swapOrdering(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "targetPosition"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter<TItem;TVH;>;"
    const-string v0, "EditableArrayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[swapOrdering] fromPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->mList:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 42
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->notifyItemMoved(II)V

    .line 43
    return-void
.end method
