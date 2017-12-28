.class Lcom/android/launcher3/widget/controller/WidgetController$1;
.super Ljava/lang/Object;
.source "WidgetController.java"

# interfaces
.implements Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applySearchResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->applySearchResult(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState$State;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$100(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    .line 114
    return-void
.end method

.method public openFolder(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetController;->access$000(Lcom/android/launcher3/widget/controller/WidgetController;Landroid/view/View;Z)V

    .line 109
    return-void
.end method

.method public setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V
    .locals 1
    .param p1, "filter"    # Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V

    .line 136
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setSearchString(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetDragController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetDragController;

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v2}, Lcom/android/launcher3/widget/controller/WidgetController;->access$300(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/widget/controller/WidgetDragController;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$202(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/widget/controller/WidgetDragController;)Lcom/android/launcher3/widget/controller/WidgetDragController;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetDragController;->startDrag(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const-string v0, "WidgetController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to widget drag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/controller/WidgetController;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertAddWidgetItemLog(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method
