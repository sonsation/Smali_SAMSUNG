.class public Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;
.super Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
.source "ClockServiceBoxPageView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClocksWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onFinishInflate()V

    .line 40
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_clocks_widget:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mClocksWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mClocksWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->setExpandedState(Z)V

    .line 38
    return-void
.end method

.method public setExpandState(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->setExpandState(Z)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mClocksWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->setExpandedState(Z)V

    .line 45
    return-void
.end method
