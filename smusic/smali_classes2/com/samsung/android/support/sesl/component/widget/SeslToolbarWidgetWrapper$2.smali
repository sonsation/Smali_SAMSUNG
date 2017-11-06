.class Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;
.source "SeslToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;->val$visibility:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;->mCanceled:Z

    .line 475
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setVisibility(I)V

    .line 470
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setVisibility(I)V

    .line 463
    return-void
.end method
