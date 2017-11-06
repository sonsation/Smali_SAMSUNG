.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;
.super Ljava/lang/Object;
.source "SeslFragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->popBackStack(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field final synthetic val$flags:I

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$id:I

    iput p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 633
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$id:I

    iget v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 634
    return-void
.end method
