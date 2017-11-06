.class public Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;
.super Lcom/dinuscxj/refresh/RecyclerRefreshLayout;
.source "PullToRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PullToRefreshLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$BasicHeader;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "header":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0661

    .line 31
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 32
    .local v1, "height":I
    const-string v3, "PullToRefreshLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init : height - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v2, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v2, "params":Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;->setRefreshView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    int-to-float v3, v1

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;->setRefreshTargetOffset(F)V

    .line 36
    new-instance v3, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/PullToRefreshLayout;->setDragDistanceConverter(Lcom/dinuscxj/refresh/IDragDistanceConverter;)V

    .line 45
    return-void
.end method
