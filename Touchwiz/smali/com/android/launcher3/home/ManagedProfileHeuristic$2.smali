.class Lcom/android/launcher3/home/ManagedProfileHeuristic$2;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeWorkFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ManagedProfileHeuristic;

.field final synthetic val$shortcuts:Ljava/util/ArrayList;

.field final synthetic val$workFolder:Lcom/android/launcher3/folder/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ManagedProfileHeuristic;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ManagedProfileHeuristic;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;->this$0:Lcom/android/launcher3/home/ManagedProfileHeuristic;

    iput-object p2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;->val$shortcuts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;->val$workFolder:Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;->val$shortcuts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 221
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;->val$workFolder:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 223
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    return-void
.end method
