.class Lcom/android/launcher3/home/HomeLoader$47$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$47;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$47;

.field final synthetic val$hotseatItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$47;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/HomeLoader$47;

    .prologue
    .line 4645
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$47$1;->this$1:Lcom/android/launcher3/home/HomeLoader$47;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$47$1;->val$hotseatItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4647
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$47$1;->this$1:Lcom/android/launcher3/home/HomeLoader$47;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$47;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 4648
    .local v0, "cb":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$47$1;->this$1:Lcom/android/launcher3/home/HomeLoader$47;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$47;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    .line 4649
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$47$1;->val$hotseatItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindHotseatItems(Ljava/util/ArrayList;)V

    .line 4651
    :cond_0
    return-void
.end method
