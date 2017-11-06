.class public Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;
.super Landroid/widget/RelativeLayout;
.source "PullToRefreshLayout.java"

# interfaces
.implements Lcom/dinuscxj/refresh/IRefreshStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicHeader"
.end annotation


# instance fields
.field private message:Landroid/widget/TextView;

.field private progress:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const v1, 0x7f04015f

    const/4 v2, 0x0

    .line 56
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "header":Landroid/view/View;
    const v1, 0x7f1202a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;->progress:Landroid/view/View;

    .line 59
    const v1, 0x7f120417

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;->message:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0, v0, v3, v3}, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;->addView(Landroid/view/View;II)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;->reset()V

    .line 63
    return-void
.end method


# virtual methods
.method public pullProgress(FF)V
    .locals 0
    .param p1, "pullDistance"    # F
    .param p2, "pullProgress"    # F

    .prologue
    .line 92
    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "PullToRefreshLayout"

    const-string v1, "pullToRefresh : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public refreshing()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "PullToRefreshLayout"

    const-string/jumbo v1, "refreshing : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;->message:Landroid/widget/TextView;

    const v1, 0x7f0a03e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;->progress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public releaseToRefresh()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "PullToRefreshLayout"

    const-string/jumbo v1, "releaseToRefresh : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;->message:Landroid/widget/TextView;

    const v1, 0x7f0a03d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "PullToRefreshLayout"

    const-string/jumbo v1, "reset : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;->message:Landroid/widget/TextView;

    const v1, 0x7f0a03d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;->progress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void
.end method
