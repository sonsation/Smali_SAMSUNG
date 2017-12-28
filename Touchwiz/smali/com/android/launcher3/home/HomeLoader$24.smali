.class Lcom/android/launcher3/home/HomeLoader$24;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->updateHideItems(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$folderInfos:Ljava/util/ArrayList;

.field final synthetic val$hideItems:Ljava/util/ArrayList;

.field final synthetic val$itemsInFolder:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 2710
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$24;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$folderInfos:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$itemsInFolder:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$hideItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2712
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$24;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 2713
    .local v0, "cb":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    .line 2714
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$folderInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$itemsInFolder:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindAppsInFolderRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2715
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$hideItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindItemsRemoved(Ljava/util/ArrayList;)V

    .line 2717
    :cond_0
    return-void
.end method
