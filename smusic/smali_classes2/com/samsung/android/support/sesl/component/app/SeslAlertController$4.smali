.class Lcom/samsung/android/support/sesl/component/app/SeslAlertController$4;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 561
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$4;->val$top:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$4;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "v"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$4;->val$top:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$4;->val$bottom:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 569
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 563
    return-void
.end method
