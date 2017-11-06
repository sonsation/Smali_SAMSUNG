.class Lcom/samsung/android/support/sesl/core/app/SeslListFragment$1;
.super Ljava/lang/Object;
.source "SeslListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslListFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslListFragment$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslListFragment$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslListFragment;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslListFragment$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslListFragment;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 53
    return-void
.end method
