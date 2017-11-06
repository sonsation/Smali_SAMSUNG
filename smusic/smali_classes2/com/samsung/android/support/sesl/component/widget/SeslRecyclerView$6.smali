.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addView(Landroid/view/View;I)V

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    .line 1070
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1108
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 1109
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_1

    .line 1110
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1117
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 1119
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v1, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1125
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1126
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 1127
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_1

    .line 1128
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called detach on an already detached child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1135
    :cond_0
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 1138
    .end local v0    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 1139
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1102
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1143
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 1144
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$4100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 1147
    :cond_0
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1151
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 1152
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$4200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 1155
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->getChildCount()I

    move-result v0

    .line 1094
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1095
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 1094
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1097
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeAllViews()V

    .line 1098
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1080
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 1083
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeViewAt(I)V

    .line 1084
    return-void
.end method
