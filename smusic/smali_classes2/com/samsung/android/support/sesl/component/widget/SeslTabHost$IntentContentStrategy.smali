.class Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "SeslTabHost.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 735
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 736
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/content/Intent;
    .param p4, "x3"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;

    .prologue
    .line 726
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 5

    .prologue
    .line 739
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v2, :cond_0

    .line 740
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 744
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 745
    .local v1, "wd":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 746
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 747
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 750
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 758
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 759
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 760
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 761
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 764
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v2

    .line 744
    .end local v1    # "wd":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 771
    :cond_0
    return-void
.end method
