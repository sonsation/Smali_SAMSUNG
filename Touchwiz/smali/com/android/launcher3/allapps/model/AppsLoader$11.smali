.class Lcom/android/launcher3/allapps/model/AppsLoader$11;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->bindRemainedItems(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

.field final synthetic val$remainedItemsInFolder:Ljava/util/ArrayList;

.field final synthetic val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$11;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$11;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$11;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    iput-object p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$11;->val$remainedItemsInFolder:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$11;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$11;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$11;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1200(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 739
    .local v0, "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$11;->val$remainedItemsInFolder:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindItemsInFolder(Ljava/util/ArrayList;)V

    .line 742
    :cond_0
    return-void
.end method
