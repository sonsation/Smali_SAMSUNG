.class Lcom/dinuscxj/refresh/RecyclerRefreshLayout$1;
.super Landroid/view/animation/Animation;
.source "RecyclerRefreshLayout.java"


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
    .line 96
    iput-object p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$1;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$1;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-static {v2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->access$000(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)F

    move-result v2

    float-to-int v0, v2

    .line 100
    .local v0, "targetEnd":I
    iget-object v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$1;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-static {v2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->access$100(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$1;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-static {v3}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->access$100(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 102
    .local v1, "targetTop":I
    iget-object v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$1;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$1;->this$0:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-static {v4}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->access$200(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)I

    move-result v4

    neg-int v4, v4

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->access$300(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;II)V

    .line 103
    return-void
.end method
