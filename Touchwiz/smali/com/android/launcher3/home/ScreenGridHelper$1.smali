.class Lcom/android/launcher3/home/ScreenGridHelper$1;
.super Ljava/lang/Object;
.source "ScreenGridHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ScreenGridHelper;->changeGrid(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ScreenGridHelper;

.field final synthetic val$diffX:I

.field final synthetic val$diffY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ScreenGridHelper;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ScreenGridHelper;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    iput p2, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->val$diffX:I

    iput p3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->val$diffY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 128
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3}, Lcom/android/launcher3/home/ScreenGridHelper;->access$000(Lcom/android/launcher3/home/ScreenGridHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3}, Lcom/android/launcher3/home/ScreenGridHelper;->access$000(Lcom/android/launcher3/home/ScreenGridHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3}, Lcom/android/launcher3/home/ScreenGridHelper;->access$100(Lcom/android/launcher3/home/ScreenGridHelper;)Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    .line 133
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 134
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3}, Lcom/android/launcher3/home/ScreenGridHelper;->access$100(Lcom/android/launcher3/home/ScreenGridHelper;)Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    .line 136
    .local v4, "screenId":J
    const-wide/16 v6, -0x191

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    const-wide/16 v6, -0x12d

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    const-wide/16 v6, -0x1f5

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 133
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3}, Lcom/android/launcher3/home/ScreenGridHelper;->access$100(Lcom/android/launcher3/home/ScreenGridHelper;)Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 144
    .local v0, "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3}, Lcom/android/launcher3/home/ScreenGridHelper;->access$000(Lcom/android/launcher3/home/ScreenGridHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    iget v6, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->val$diffX:I

    iget v7, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->val$diffY:I

    .line 145
    invoke-static {v3, v0, v8, v6, v7}, Lcom/android/launcher3/home/ScreenGridHelper;->access$200(Lcom/android/launcher3/home/ScreenGridHelper;Lcom/android/launcher3/home/WorkspaceCellLayout;ZII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3}, Lcom/android/launcher3/home/ScreenGridHelper;->access$000(Lcom/android/launcher3/home/ScreenGridHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v0    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v4    # "screenId":J
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3}, Lcom/android/launcher3/home/ScreenGridHelper;->access$100(Lcom/android/launcher3/home/ScreenGridHelper;)Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->resetAdditionalPageCount()V

    .line 151
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3}, Lcom/android/launcher3/home/ScreenGridHelper;->access$300(Lcom/android/launcher3/home/ScreenGridHelper;)V

    .line 152
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridHelper$1;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v3, v8}, Lcom/android/launcher3/home/ScreenGridHelper;->access$402(Lcom/android/launcher3/home/ScreenGridHelper;Z)Z

    .line 153
    return-void
.end method
