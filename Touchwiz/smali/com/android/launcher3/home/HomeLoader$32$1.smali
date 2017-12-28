.class Lcom/android/launcher3/home/HomeLoader$32$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$32;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$removeItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$32;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/HomeLoader$32;

    .prologue
    .line 3255
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$32$1;->this$1:Lcom/android/launcher3/home/HomeLoader$32;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$32$1;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$32$1;->val$removeItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3257
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$32$1;->this$1:Lcom/android/launcher3/home/HomeLoader$32;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$32;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$32$1;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$9600()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->access$5100(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 3258
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eqz v0, :cond_0

    .line 3259
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$32$1;->val$removeItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindItemsRemoved(Ljava/util/ArrayList;)V

    .line 3261
    :cond_0
    return-void
.end method
