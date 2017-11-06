.class final Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDoublePenClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

.field x:I

.field y:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0

    .prologue
    .line 4267
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;

    .prologue
    .line 4267
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x0

    .line 4272
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_7

    .line 4273
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 4274
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-ne v2, v4, :cond_5

    .line 4276
    :cond_0
    const/4 v1, 0x0

    .line 4277
    .local v1, "isNeedActionMode":Z
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4278
    .local v0, "dragSelectedViewPosition":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4279
    const/4 v1, 0x1

    goto :goto_0

    .line 4283
    .end local v0    # "dragSelectedViewPosition":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 4285
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 4288
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4289
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4290
    .local v0, "dragSelectedViewPosition":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4291
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 4292
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    .line 4291
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_1

    .line 4298
    .end local v0    # "dragSelectedViewPosition":Ljava/lang/Integer;
    .end local v1    # "isNeedActionMode":Z
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->x:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->y:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;II)V

    .line 4300
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4301
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I

    .line 4303
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1702(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)Z

    .line 4304
    return-void
.end method
