.class public Lcom/samsung/android/edgelighting/view/EdgeToastContainer;
.super Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;
.source "EdgeToastContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final MSG_DISMISS_CONTAINER:I

.field private final MSG_HIDE_TOAST:I

.field private final MSG_SHOW_TOAST:I

.field private mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

.field mHandler:Landroid/os/Handler;

.field private mToastType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->MSG_SHOW_TOAST:I

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->MSG_HIDE_TOAST:I

    .line 106
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->MSG_DISMISS_CONTAINER:I

    .line 108
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeToastContainer;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->init()V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/view/EdgeToastContainer;)Lcom/samsung/android/edgelighting/view/EdgeToastView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->dismiss()V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->hide(J)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->init()V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/edgelighting/R$layout;->edge_toast_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    sget v1, Lcom/samsung/android/edgelighting/R$id;->edge_toast_view:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edgelighting/view/EdgeToastView;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    .line 60
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mScreenWidth:I

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mScreenHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setScreenSize(II)V

    .line 61
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->onSizeChanged(IIII)V

    .line 94
    if-nez p3, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSizeChanged w : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldW : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setToastInfo(Lcom/samsung/android/edgelighting/EdgeToastInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeToastInfo;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeToastInfo;->getTickerText()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeToastInfo;->getTickerText()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeToastInfo;->getTickerText()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setNotiText([Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeToastInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeToastInfo;->getViewIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setNotiIcon(Landroid/view/View;)V

    .line 77
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeToastInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mToastType:I

    .line 78
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeToastInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setNotiIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 30
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->show()V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->initialize()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->setAlpha(F)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    return-void
.end method

.method public updateText()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mEdgeToastView:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->updateToast()V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->TAG:Ljava/lang/String;

    const-string v1, "Lighting Rotate animation not running. So refresh all animation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->show()V

    goto :goto_0
.end method
