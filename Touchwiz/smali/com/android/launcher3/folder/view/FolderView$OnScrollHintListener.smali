.class Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollHintListener"
.end annotation


# instance fields
.field private final mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 0
    .param p2, "object"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 2718
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2719
    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 2720
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/launcher3/util/alarm/Alarm;

    .prologue
    const/4 v2, -0x1

    .line 2727
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$2100(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2728
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->scrollLeft()V

    .line 2729
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$2202(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 2737
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$2102(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 2740
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$2300(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;-><init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 2741
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$2300(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v0

    sget v1, Lcom/android/launcher3/common/drag/DragManager;->RESCROLL_DELAY:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 2742
    :cond_0
    return-void

    .line 2730
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$2100(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2731
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->scrollRight()V

    .line 2732
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$2202(Lcom/android/launcher3/folder/view/FolderView;I)I

    goto :goto_0
.end method
