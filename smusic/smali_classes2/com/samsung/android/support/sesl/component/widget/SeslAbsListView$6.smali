.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$6;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
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
    .line 5498
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5501
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollToPosition(I)V

    .line 5502
    return-void
.end method
