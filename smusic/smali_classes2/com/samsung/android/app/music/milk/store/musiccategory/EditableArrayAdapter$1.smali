.class Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;
.super Ljava/lang/Object;
.source "EditableArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;

.field final synthetic val$viewHolder:Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;

    .prologue
    .line 58
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;->val$viewHolder:Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;, "Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;"
    const/4 v1, 0x1

    .line 61
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 64
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;->val$viewHolder:Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;->setDraggable(Z)V

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter;)Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/EditableArrayAdapter$1;->val$viewHolder:Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 70
    .end local v0    # "action":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
