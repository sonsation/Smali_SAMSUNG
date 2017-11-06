.class Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$1;
.super Ljava/lang/Object;
.source "PullToRefreshLayout.java"

# interfaces
.implements Lcom/dinuscxj/refresh/IDragDistanceConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(FF)F
    .locals 1
    .param p1, "scrollDistance"    # F
    .param p2, "refreshDistance"    # F

    .prologue
    .line 39
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$1;->val$height:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 40
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$1;->val$height:I

    add-int/lit8 v0, v0, 0x1

    int-to-float p1, v0

    .line 42
    :cond_0
    return p1
.end method
