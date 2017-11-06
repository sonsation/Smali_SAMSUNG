.class Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "SeslWindowDecorActionBar.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;


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
    .line 147
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContainerView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    .local v0, "parent":Landroid/view/ViewParent;
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 152
    return-void
.end method
