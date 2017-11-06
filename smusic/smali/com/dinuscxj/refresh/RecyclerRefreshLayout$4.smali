.class Lcom/dinuscxj/refresh/RecyclerRefreshLayout$4;
.super Ljava/lang/Object;
.source "RecyclerRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dinuscxj/refresh/RecyclerRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;


# direct methods
.method constructor <init>(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$4;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$4;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-static {v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->access$500(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)Lcom/dinuscxj/refresh/IRefreshStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/dinuscxj/refresh/IRefreshStatus;->reset()V

    .line 152
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$4;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-static {v0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->access$802(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;Z)Z

    .line 153
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$4;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-static {v0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->access$402(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;Z)Z

    .line 154
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 146
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$4;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->access$402(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;Z)Z

    .line 142
    return-void
.end method
