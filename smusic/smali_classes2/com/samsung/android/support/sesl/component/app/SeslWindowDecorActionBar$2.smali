.class Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;
.source "SeslWindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mCurrentShowAnim:Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;

    .line 142
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->requestLayout()V

    .line 143
    return-void
.end method
