.class Lcom/android/launcher3/allapps/controller/AppsController$12;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->updateRestoreItems(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1335
    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$updates:Ljava/util/HashSet;

    .line 1336
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    check-cast p2, Lcom/android/launcher3/common/view/IconView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/android/launcher3/common/view/IconView;->applyState(Z)V

    .line 1339
    :cond_0
    return v1
.end method
