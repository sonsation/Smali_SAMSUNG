.class Lcom/android/launcher3/home/HomeLoader$21;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addOrUpdater([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$removedIcons:Ljava/util/ArrayList;

.field final synthetic val$updatedIcons:Ljava/util/ArrayList;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$21;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$21;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$21;->val$updatedIcons:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$21;->val$removedIcons:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeLoader$21;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2581
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$21;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 2582
    .local v0, "cb":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$21;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 2583
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$21;->val$updatedIcons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$21;->val$removedIcons:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$21;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2585
    :cond_0
    return-void
.end method
