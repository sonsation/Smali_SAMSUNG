.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$8;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnJumpScrollToFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 6000
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6002
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onJumpScrollToTopFinished()V

    .line 6003
    return-void
.end method
