.class Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
.super Ljava/lang/Object;
.source "WorkspaceReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/WorkspaceReorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemConfiguration"
.end annotation


# instance fields
.field dragViewSpanX:I

.field dragViewSpanY:I

.field dragViewX:I

.field dragViewY:I

.field intersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field isSolution:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private savedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field sortedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceReorderController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/WorkspaceReorderController;)V
    .locals 1

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    .line 1403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    .line 1404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    .line 1406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/WorkspaceReorderController;Lcom/android/launcher3/home/WorkspaceReorderController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/WorkspaceReorderController;
    .param p2, "x1"    # Lcom/android/launcher3/home/WorkspaceReorderController$1;

    .prologue
    .line 1401
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;)V

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cs"    # Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    invoke-direct {v1}, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    return-void
.end method

.method area()I
    .locals 2

    .prologue
    .line 1430
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method restore()V
    .locals 4

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1419
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->copy(Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;)V

    goto :goto_0

    .line 1421
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method save()V
    .locals 4

    .prologue
    .line 1411
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1412
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->copy(Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;)V

    goto :goto_0

    .line 1414
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
