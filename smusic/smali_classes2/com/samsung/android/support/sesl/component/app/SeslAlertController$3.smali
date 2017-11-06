.class Lcom/samsung/android/support/sesl/component/app/SeslAlertController$3;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$top:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$3;->val$top:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$3;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mScrollView:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$3;->val$top:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$3;->val$bottom:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 557
    return-void
.end method
