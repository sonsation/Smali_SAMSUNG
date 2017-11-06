.class public abstract Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;
.super Landroid/widget/FrameLayout;
.source "AbsEdgeLightingView.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/view/EdgeLighting;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mDuration:I

.field protected mEffectColors:[I

.field protected mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

.field protected mRepeatCount:I

.field protected mScreenHeight:I

.field protected mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mRepeatCount:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mRepeatCount:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mRepeatCount:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mRepeatCount:I

    .line 41
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mRepeatCount:I

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 54
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$dimen;->navigation_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 56
    .local v1, "navigationBarHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 57
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mScreenWidth:I

    .line 58
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mScreenHeight:I

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mScreenWidth:I

    .line 61
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mScreenHeight:I

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mDuration:I

    .line 45
    return-void
.end method

.method public setEffectAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 48
    return-void
.end method

.method public setEffectColors([I)V
    .locals 0
    .param p1, "effectColors"    # [I

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mEffectColors:[I

    .line 78
    return-void
.end method

.method public setOnDialogListener(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    .line 93
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->mRepeatCount:I

    .line 83
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->setVisibility(I)V

    .line 68
    return-void
.end method
