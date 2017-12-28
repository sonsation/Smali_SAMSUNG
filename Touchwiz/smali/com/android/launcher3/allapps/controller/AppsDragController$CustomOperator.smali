.class Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;
.super Lcom/android/launcher3/allapps/controller/DragOperator;
.source "AppsDragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/DragOperator;-><init>()V

    return-void
.end method


# virtual methods
.method addItemToTarget(Landroid/view/View;Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 6
    .param p1, "cell"    # Landroid/view/View;
    .param p2, "target"    # Lcom/android/launcher3/allapps/DragAppIcon;

    .prologue
    .line 1151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1152
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v1, p2, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1153
    iget-wide v4, p2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1154
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1155
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1157
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v1

    const/4 v4, 0x0

    aget v1, v1, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    .line 1159
    .local v2, "screenId":J
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    long-to-int v4, v2

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 1162
    :cond_0
    return-void

    .line 1157
    .end local v2    # "screenId":J
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    goto :goto_0
.end method

.method animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V
    .locals 13
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "duration"    # I
    .param p5, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p6, "anchorView"    # Landroid/view/View;
    .param p7, "animate"    # Z
    .param p8, "needRunnableDelay"    # Z

    .prologue
    .line 1177
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v10

    .line 1178
    .local v10, "currentPageIndex":I
    const/4 v8, 0x0

    .line 1179
    .local v8, "translatedX":I
    const/4 v9, 0x0

    .line 1180
    .local v9, "translatedY":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1181
    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v2

    sub-int/2addr v2, v10

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    .line 1182
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDesiredWidth()I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPaddingStart()I

    move-result v3

    add-int v11, v2, v3

    .line 1183
    .local v11, "expectedX":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 1184
    .local v12, "pageRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1185
    iget v2, v12, Landroid/graphics/Rect;->left:I

    sub-int v8, v11, v2

    .line 1186
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    .line 1187
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsExtraPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v3

    .line 1190
    .end local v11    # "expectedX":I
    .end local v12    # "pageRect":Landroid/graphics/Rect;
    :cond_0
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_1

    .line 1191
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;II)V

    .line 1196
    :goto_0
    return-void

    .line 1194
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move/from16 v0, p4

    int-to-long v4, v0

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method dragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 9
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1214
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$800(Lcom/android/launcher3/allapps/controller/AppsDragController;)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$800(Lcom/android/launcher3/allapps/controller/AppsDragController;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 1215
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setDragMode(I)V

    .line 1217
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1218
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->setRestorePosition(Z)V

    .line 1219
    const-string v0, "AppsDragController"

    const-string v1, "onDragOver mRestorePositionOnDrop = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_2
    const/16 v8, 0xfa

    .line 1222
    .local v8, "REORDER_DELAY":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0xfa

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1225
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 1226
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v2, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 1228
    .end local v8    # "REORDER_DELAY":I
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    .line 1229
    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v4

    aget v4, v4, v5

    move v6, v5

    .line 1228
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    .line 1231
    :cond_4
    return-void

    .line 1222
    .restart local v8    # "REORDER_DELAY":I
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    .line 1224
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xfa

    :goto_1
    int-to-long v0, v0

    goto :goto_0

    :cond_6
    const/16 v0, 0x1f4

    goto :goto_1
.end method

.method dropAddToExistingFolder()V
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1100(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    .line 1146
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 1147
    return-void
.end method

.method dropCompletedWithOutExtra(Z)V
    .locals 1
    .param p1, "restorePosition"    # Z

    .prologue
    .line 1257
    if-nez p1, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateDirtyItems()V

    .line 1260
    :cond_0
    return-void
.end method

.method dropCreateFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 2
    .param p1, "dragItem"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "internal"    # Z

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1100(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    .line 1140
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 1141
    return-void
.end method

.method dropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 20
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "exitDragStateRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v4

    iget-wide v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v18, v0

    .line 1351
    .local v18, "screenId":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v18

    if-eqz v4, :cond_0

    .line 1352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-wide/from16 v0, v18

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 1355
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v16

    .line 1356
    .local v16, "pageIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    .line 1357
    .local v15, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v15, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v17

    .line 1358
    .local v17, "v":Landroid/view/View;
    if-nez v17, :cond_3

    .line 1359
    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v13

    .line 1360
    .local v13, "count":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findFirstEmptyCell(I)I

    move-result v14

    .line 1361
    .local v14, "empty":I
    if-ge v14, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-le v4, v13, :cond_3

    .line 1362
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iput v13, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 1363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragOperator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/DragOperator;->removeEmptyCellIfNecessary(Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 1365
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove emptycell if necessary : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    .line 1366
    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1365
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iput v13, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 1369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v6, v4, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 1370
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assign empty : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    .end local v13    # "count":I
    .end local v14    # "empty":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/launcher3/allapps/AppsReorderListener;->realTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 1379
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-wide/from16 v0, v18

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v5

    if-lt v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    .line 1380
    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-wide/from16 v0, v18

    long-to-int v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$900(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    .line 1384
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->makeEmptyCellAndReorderIfNecessary(II)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1392
    const/16 v8, 0x12c

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V

    .line 1394
    return-void

    .line 1349
    .end local v15    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v16    # "pageIndex":I
    .end local v17    # "v":Landroid/view/View;
    .end local v18    # "screenId":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v18

    goto/16 :goto_0
.end method

.method dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;Z)V
    .locals 12
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "indexScreen"    # I
    .param p3, "indexRank"    # I
    .param p5, "internal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1265
    .local p4, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1266
    .local v1, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v2, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1268
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p3, v0, :cond_4

    .line 1269
    const/4 p3, 0x0

    .line 1270
    add-int/lit8 p2, p2, 0x1

    .line 1275
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    .line 1276
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$900(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$502(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;)Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1281
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->makeEmptyCellAndReorderIfNecessary(II)V

    .line 1283
    const/4 v10, 0x0

    .line 1284
    .local v10, "recycle":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v4, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1285
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v0

    iget-object v10, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1293
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-interface {v0, v2, v4, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1294
    .local v3, "view":Landroid/view/View;
    int-to-long v4, p2

    invoke-virtual {p0, v2, v4, v5, p3}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V

    .line 1295
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1297
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1298
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1299
    .local v9, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1300
    invoke-virtual {v9, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 1301
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 1304
    .end local v9    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v7, 0x1

    .line 1305
    .local v7, "animate":Z
    :goto_3
    const/16 v4, 0x12c

    iget-object v5, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    .line 1306
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    const/4 v8, 0x0

    move-object v0, p0

    .line 1305
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V

    .line 1308
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    .line 1272
    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "animate":Z
    .end local v10    # "recycle":Landroid/view/View;
    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    .line 1285
    .restart local v10    # "recycle":Landroid/view/View;
    :cond_5
    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v10

    goto :goto_2

    .line 1287
    :cond_6
    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1288
    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1289
    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v10

    goto/16 :goto_2

    .line 1304
    .restart local v3    # "view":Landroid/view/View;
    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .line 1310
    .end local v1    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "view":Landroid/view/View;
    .end local v10    # "recycle":Landroid/view/View;
    :cond_8
    if-eqz p5, :cond_9

    .line 1311
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateDirtyItems()V

    .line 1313
    :cond_9
    return-void
.end method

.method dropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)V
    .locals 8
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "dragView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1317
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1319
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/AppsReorderListener;->realTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1323
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToPageLog(Ljava/lang/Object;Z)V

    .line 1324
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1326
    .local v7, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    const v1, 0x7f0901b4

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09018e

    .line 1327
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1326
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->addItemToTarget(Landroid/view/View;Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 1333
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1334
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1335
    .local v6, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1336
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v3, 0x12c

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    .line 1337
    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v5

    move-object v2, p3

    .line 1336
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 1343
    :goto_0
    invoke-virtual {v6, p3}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 1345
    .end local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    return-void

    .line 1339
    .restart local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    iput-boolean v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1340
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0, p3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateCountBadge(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method makeEmptyCellAndReorderIfNecessary(II)V
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "rank"    # I

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    .line 1201
    .local v0, "cellCountX":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    rem-int v2, p2, v0

    div-int v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1203
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/launcher3/allapps/AppsReorderListener;->makeEmptyCellAndReorder(II)V

    .line 1205
    :cond_0
    return-void
.end method

.method onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "screenId"    # I

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher3/allapps/AppsReorderListener;->realTimeReorder(IFIIII)V

    .line 1236
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iput p3, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 1237
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 1238
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iput p3, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 1239
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 1240
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput p3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1241
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1242
    return-void
.end method

.method refreshObjectsToPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;)V
    .locals 6
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "indexScreen"    # I
    .param p3, "indexRank"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1252
    .local p4, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;Z)V

    .line 1253
    return-void
.end method

.method removeEmptyCellIfNecessary(Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 1
    .param p1, "empty"    # Lcom/android/launcher3/allapps/DragAppIcon;

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 1247
    return-void
.end method

.method updateDirtyItemsToDb()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateDirtyItems()V

    .line 1210
    return-void
.end method

.method updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "screenId"    # J
    .param p4, "rank"    # I

    .prologue
    .line 1166
    const-wide/16 v0, -0x66

    iput-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1167
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1168
    iput p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1170
    return-void
.end method
