.class Lcom/android/launcher3/home/HomeLoader$22;
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

.field final synthetic val$widgets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 2593
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$22;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$22;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$22;->val$widgets:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2595
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$22;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 2596
    .local v0, "cb":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$22;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 2597
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$22;->val$widgets:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    .line 2599
    :cond_0
    return-void
.end method
