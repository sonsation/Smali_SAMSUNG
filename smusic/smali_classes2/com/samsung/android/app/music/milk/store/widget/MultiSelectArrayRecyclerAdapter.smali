.class public abstract Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "MultiSelectArrayRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;",
        ">",
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<TItem;TVH;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultiSelectArrayRecyclerAdapter"


# instance fields
.field protected listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

.field private mCheckboxWidth:I

.field private mModeType:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

.field protected mOnClick:Landroid/view/View$OnClickListener;

.field protected mOnLongClick:Landroid/view/View$OnLongClickListener;


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
    .line 66
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->mCheckboxWidth:I

    .line 63
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;->CHECK_BOX_TYPE:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->mModeType:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    .line 67
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->setSelectableCallback(Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 68
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    .line 69
    return-void
.end method

.method private setCheckBoxTint(Landroid/widget/CheckBox;)V
    .locals 6
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 148
    new-array v1, v3, [[I

    new-array v2, v5, [I

    aput-object v2, v1, v5

    .line 149
    .local v1, "states":[[I
    new-array v0, v3, [I

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11003f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v0, v5

    .line 150
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 151
    return-void
.end method


# virtual methods
.method public deselectAll()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    const/4 v2, 0x0

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->selectItem(IZZ)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;->onSelectCountChanged(I)V

    .line 139
    :cond_1
    return-void
.end method

.method public abstract getCheckBoxResId()I
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V

    return-void
.end method

.method public abstract onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    .local p1, "viewHolder":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;, "TVH;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->isLongClickable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 90
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->isClickable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f12002a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    goto :goto_0
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public abstract playWithCurrentPosition(I)V
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 117
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->selectItem(IZZ)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;->onSelectCountChanged(I)V

    .line 126
    :cond_1
    return-void
.end method

.method protected setCheckboxBackground(Landroid/content/res/Resources;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "checkBox"    # Landroid/widget/CheckBox;
    .param p3, "rippleView"    # Landroid/view/View;

    .prologue
    .line 154
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ROUND_CHECK_BOX:Z

    if-eqz v0, :cond_0

    .line 155
    const v0, 0x7f020084

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 156
    if-eqz p3, :cond_0

    .line 157
    const v0, 0x7f020250

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->setCheckBoxTint(Landroid/widget/CheckBox;)V

    .line 162
    return-void
.end method

.method public setSelectMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 99
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter<TItem;TVH;>;"
    const-string v0, "MultiSelectArrayRecyclerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultiSelectMode : Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-nez p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->mSelectMode:Z

    if-eq v0, p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;->onSelectAllModeChanged(Z)V

    .line 109
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->mSelectMode:Z

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method
