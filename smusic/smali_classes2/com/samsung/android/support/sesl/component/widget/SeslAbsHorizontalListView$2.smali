.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$2;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFastScrollAlwaysVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

.field final synthetic val$alwaysShow:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$2;->val$alwaysShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$2;->val$alwaysShow:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V

    .line 1763
    return-void
.end method
