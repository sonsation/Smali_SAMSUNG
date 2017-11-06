.class public abstract Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MultiSelectViewHolder.java"


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field private mViewPosition:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "checkBoxResId"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->checkBox:Landroid/widget/CheckBox;

    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public getClickedPosition()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->mViewPosition:I

    return v0
.end method

.method public setClickedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;->mViewPosition:I

    .line 36
    return-void
.end method
