.class public Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
.super Landroid/widget/FrameLayout;
.source "ServiceBoxPageView.java"


# instance fields
.field protected mIsExpanded:Z

.field protected mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    return-void
.end method


# virtual methods
.method public getPageKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setExpandState(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->mIsExpanded:Z

    .line 32
    return-void
.end method

.method public setPageKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->mKey:Ljava/lang/String;

    .line 40
    return-void
.end method
