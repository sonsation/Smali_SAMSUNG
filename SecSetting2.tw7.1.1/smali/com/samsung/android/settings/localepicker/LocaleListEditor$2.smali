.class Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/localepicker/LocaleListEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(I)Z
    .locals 3
    .param p1, "startPos"    # I

    .prologue
    const/4 v1, 0x0

    .line 574
    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v2}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v2

    if-gt p1, v2, :cond_1

    const/4 v0, 0x1

    .line 575
    .local v0, "available":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v2}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get6(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0    # "available":Z
    :cond_1
    move v0, v1

    .line 574
    goto :goto_0

    .line 575
    .restart local v0    # "available":Z
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getDragEnabled()Z

    move-result v1

    goto :goto_1
.end method

.method public canDrop(II)Z
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    const/4 v1, 0x0

    .line 581
    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v2}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 582
    if-lez p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v2}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v2

    if-gt p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 583
    .local v0, "available":Z
    :goto_0
    return v0

    .end local v0    # "available":Z
    :cond_1
    move v0, v1

    .line 581
    goto :goto_0
.end method

.method public dropDone(II)V
    .locals 4
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    const/4 v3, 0x1

    .line 589
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->moveItem(II)V

    .line 590
    if-eq p2, p1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get7(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 592
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-wrap2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;I)V

    .line 587
    :cond_0
    return-void
.end method
