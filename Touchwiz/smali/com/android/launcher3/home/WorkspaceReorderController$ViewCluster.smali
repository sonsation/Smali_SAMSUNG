.class Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;
.super Ljava/lang/Object;
.source "WorkspaceReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/WorkspaceReorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

.field config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceReorderController;Ljava/util/ArrayList;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V
    .locals 1
    .param p3, "config"    # Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdge:[I

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdge:[I

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdge:[I

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdge:[I

    .line 392
    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->comparator:Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

    .line 207
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    .line 208
    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->resetEdges()V

    .line 210
    return-void
.end method


# virtual methods
.method addView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->resetEdges()V

    .line 332
    return-void
.end method

.method computeEdge(I[I)V
    .locals 10
    .param p1, "which"    # I
    .param p2, "edge"    # [I

    .prologue
    .line 229
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 230
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_7

    .line 231
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v8, v8, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 232
    .local v2, "cs":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 230
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :pswitch_0
    iget v5, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    .line 235
    .local v5, "left":I
    iget v4, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    .local v4, "j":I
    :goto_1
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 236
    aget v8, p2, v4

    if-lt v5, v8, :cond_1

    aget v8, p2, v4

    if-gez v8, :cond_2

    .line 237
    :cond_1
    aput v5, p2, v4

    .line 235
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 242
    .end local v4    # "j":I
    .end local v5    # "left":I
    :pswitch_1
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int v6, v8, v9

    .line 243
    .local v6, "right":I
    iget v4, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    .restart local v4    # "j":I
    :goto_2
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 244
    aget v8, p2, v4

    if-le v6, v8, :cond_3

    .line 245
    aput v6, p2, v4

    .line 243
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 250
    .end local v4    # "j":I
    .end local v6    # "right":I
    :pswitch_2
    iget v7, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    .line 251
    .local v7, "top":I
    iget v4, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    .restart local v4    # "j":I
    :goto_3
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 252
    aget v8, p2, v4

    if-lt v7, v8, :cond_4

    aget v8, p2, v4

    if-gez v8, :cond_5

    .line 253
    :cond_4
    aput v7, p2, v4

    .line 251
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 258
    .end local v4    # "j":I
    .end local v7    # "top":I
    :pswitch_3
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int v0, v8, v9

    .line 259
    .local v0, "bottom":I
    iget v4, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    .restart local v4    # "j":I
    :goto_4
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 260
    aget v8, p2, v4

    if-le v0, v8, :cond_6

    .line 261
    aput v0, p2, v4

    .line 259
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 267
    .end local v0    # "bottom":I
    .end local v2    # "cs":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v4    # "j":I
    :cond_7
    return-void

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method getBottomEdge()[I
    .locals 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->computeEdge(I[I)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdge:[I

    return-object v0
.end method

.method getBoundingRect()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 335
    iget-boolean v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRectDirty:Z

    if-eqz v3, :cond_1

    .line 336
    const/4 v1, 0x1

    .line 337
    .local v1, "first":Z
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 338
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 339
    .local v0, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    if-eqz v1, :cond_0

    .line 340
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 341
    const/4 v1, 0x0

    goto :goto_0

    .line 343
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 347
    .end local v0    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v1    # "first":Z
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v3
.end method

.method getEdge(I)[I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 351
    packed-switch p1, :pswitch_data_0

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getBottomEdge()[I

    move-result-object v0

    :goto_0
    return-object v0

    .line 353
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getLeftEdge()[I

    move-result-object v0

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getRightEdge()[I

    move-result-object v0

    goto :goto_0

    .line 357
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getTopEdge()[I

    move-result-object v0

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method getLeftEdge()[I
    .locals 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->computeEdge(I[I)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdge:[I

    return-object v0
.end method

.method getRightEdge()[I
    .locals 2

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->computeEdge(I[I)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdge:[I

    return-object v0
.end method

.method getTopEdge()[I
    .locals 2

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->computeEdge(I[I)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdge:[I

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "whichEdge"    # I

    .prologue
    const/4 v3, 0x1

    .line 270
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 271
    .local v0, "cs":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getEdge(I)[I

    move-result-object v1

    .line 273
    .local v1, "edge":[I
    packed-switch p2, :pswitch_data_0

    .line 304
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return v3

    .line 275
    :pswitch_0
    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    .local v2, "i":I
    :goto_0
    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 276
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v2    # "i":I
    :pswitch_1
    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    .restart local v2    # "i":I
    :goto_1
    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 283
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    if-eq v4, v5, :cond_1

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    .end local v2    # "i":I
    :pswitch_2
    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    .restart local v2    # "i":I
    :goto_2
    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 290
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 296
    .end local v2    # "i":I
    :pswitch_3
    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    .restart local v2    # "i":I
    :goto_3
    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 297
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    if-eq v4, v5, :cond_1

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method resetEdges()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdge:[I

    aput v3, v1, v0

    .line 215
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdge:[I

    aput v3, v1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    .line 219
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdgeDirty:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdgeDirty:Z

    .line 223
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdgeDirty:Z

    .line 224
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdgeDirty:Z

    .line 225
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRectDirty:Z

    .line 226
    return-void
.end method

.method shift(II)V
    .locals 4
    .param p1, "whichEdge"    # I
    .param p2, "delta"    # I

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 309
    .local v1, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v3, v3, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .line 310
    .local v0, "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 322
    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    goto :goto_0

    .line 312
    :pswitch_0
    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    goto :goto_0

    .line 315
    :pswitch_1
    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    goto :goto_0

    .line 318
    :pswitch_2
    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    goto :goto_0

    .line 326
    .end local v0    # "c":Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->resetEdges()V

    .line 327
    return-void

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method sortConfigurationForEdgePush(I)V
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->comparator:Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;->whichEdge:I

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->comparator:Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 417
    return-void
.end method
