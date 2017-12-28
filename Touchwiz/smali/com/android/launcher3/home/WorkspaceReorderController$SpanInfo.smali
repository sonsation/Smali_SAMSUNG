.class Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
.super Ljava/lang/Object;
.source "WorkspaceReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/WorkspaceReorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpanInfo"
.end annotation


# instance fields
.field minSpanX:I

.field minSpanY:I

.field spanX:I

.field spanY:I

.field final supportSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIIILjava/util/ArrayList;)V
    .locals 0
    .param p1, "minSpanX"    # I
    .param p2, "minSpanY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList",
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .line 1527
    .local p5, "supportSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1528
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    .line 1529
    iput p2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    .line 1530
    iput p3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    .line 1531
    iput p4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    .line 1532
    iput-object p5, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    .line 1533
    return-void
.end method

.method static getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .locals 9
    .param p0, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1536
    instance-of v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v7, 0x1

    .line 1537
    .local v7, "isWidget":Z
    :goto_0
    const/4 v5, 0x0

    .line 1538
    .local v5, "supportSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    iget v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 1539
    .local v1, "minSpanX":I
    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 1540
    .local v2, "minSpanY":I
    if-eqz v7, :cond_2

    .line 1541
    const/4 v8, 0x0

    .line 1542
    .local v8, "widgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    instance-of v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 1543
    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 1551
    :cond_1
    :goto_1
    if-eqz v8, :cond_5

    .line 1552
    invoke-virtual {v8}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v1

    .line 1553
    invoke-virtual {v8}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v2

    .line 1554
    invoke-virtual {v8}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v5

    .line 1560
    .end local v8    # "widgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :cond_2
    :goto_2
    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    iget v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v4, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    return-object v0

    .line 1536
    .end local v1    # "minSpanX":I
    .end local v2    # "minSpanY":I
    .end local v5    # "supportSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .end local v7    # "isWidget":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .restart local v1    # "minSpanX":I
    .restart local v2    # "minSpanY":I
    .restart local v5    # "supportSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .restart local v7    # "isWidget":Z
    .restart local v8    # "widgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :cond_4
    move-object v0, p0

    .line 1545
    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1546
    .local v6, "hostView":Landroid/appwidget/AppWidgetHostView;
    if-eqz v6, :cond_1

    .line 1547
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    .end local v8    # "widgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    check-cast v8, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .restart local v8    # "widgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    goto :goto_1

    .line 1556
    .end local v6    # "hostView":Landroid/appwidget/AppWidgetHostView;
    :cond_5
    const-string v0, "WSReorderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widgetInfo is null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
