.class Lcom/android/launcher3/home/HomeBindController$15;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindRestoreItemsChange(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeBindController;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$15;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController$15;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$15;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController$15;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    .line 828
    return-void
.end method
