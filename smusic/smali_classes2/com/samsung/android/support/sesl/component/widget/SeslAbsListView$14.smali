.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$14;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
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
    .line 9578
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$14;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9581
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$14;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 9582
    return-void
.end method
