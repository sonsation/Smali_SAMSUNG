.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$4;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFastScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 1784
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$4;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$4;->val$enabled:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V

    .line 1788
    return-void
.end method
