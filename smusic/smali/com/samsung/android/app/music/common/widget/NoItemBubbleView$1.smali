.class Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;
.super Ljava/lang/Object;
.source "NoItemBubbleView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;-><init>(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$anchorViewResId:I

.field final synthetic val$parentViewResId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;Landroid/app/Activity;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->this$0:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->val$parentViewResId:I

    iput p4, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->val$anchorViewResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 39
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->val$parentViewResId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 40
    .local v1, "parentView":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->val$anchorViewResId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "anchorView":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 43
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->this$0:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->access$000(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 45
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->this$0:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->access$102(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;Z)Z

    .line 46
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->this$0:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->access$200(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;)Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$OnLazyInitCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;->this$0:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->access$200(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;)Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$OnLazyInitCompleteListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$OnLazyInitCompleteListener;->onComplete()V

    .line 52
    :cond_0
    return-void
.end method
