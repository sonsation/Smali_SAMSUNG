.class public Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
.source "EditableViewHolder.java"


# instance fields
.field private isDraggable:Z

.field public reorderIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "checkBoxResId"    # I
    .param p3, "reorderResId"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;-><init>(Landroid/view/View;I)V

    .line 14
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;->reorderIcon:Landroid/widget/ImageView;

    .line 15
    return-void
.end method


# virtual methods
.method public isDraggable()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;->isDraggable:Z

    return v0
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;->isDraggable:Z

    .line 23
    return-void
.end method
