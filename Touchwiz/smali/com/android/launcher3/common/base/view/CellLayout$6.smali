.class Lcom/android/launcher3/common/base/view/CellLayout$6;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/CellLayout;->setCrossHairAnimatedVisibility(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$animate:Z

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/CellLayout;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1497
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$6;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$6;->val$visibility:I

    iput-boolean p3, p0, Lcom/android/launcher3/common/base/view/CellLayout$6;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$6;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$6;->val$visibility:I

    iget-boolean v2, p0, Lcom/android/launcher3/common/base/view/CellLayout$6;->val$animate:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 1501
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$6;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->setRunnable(Ljava/lang/Runnable;)V

    .line 1502
    return-void
.end method
