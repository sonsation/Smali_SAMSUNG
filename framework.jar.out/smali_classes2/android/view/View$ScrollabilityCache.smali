.class Landroid/view/View$ScrollabilityCache;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final DRAGGING_HORIZONTAL_SCROLL_BAR:I = 0x2

.field public static final DRAGGING_VERTICAL_SCROLL_BAR:I = 0x1

.field public static final FADING:I = 0x2

.field public static final NOT_DRAGGING:I = 0x0

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final OPAQUE:[F

.field private static final TRANSPARENT:[F


# instance fields
.field public fadeScrollBars:Z

.field public fadeStartTime:J

.field public fadingEdgeLength:I

.field public host:Landroid/view/View;

.field public interpolatorValues:[F

.field private mLastColor:I

.field public final mScrollBarBounds:Landroid/graphics/Rect;

.field public mScrollBarDraggingPos:F

.field public mScrollBarDraggingState:I

.field public final matrix:Landroid/graphics/Matrix;

.field public final paint:Landroid/graphics/Paint;

.field public scrollBar:Landroid/widget/ScrollBarDrawable;

.field public scrollBarDefaultDelayBeforeFade:I

.field public scrollBarFadeDuration:I

.field public final scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public scrollBarSize:I

.field public shader:Landroid/graphics/Shader;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24492
    new-array v0, v3, [F

    const/high16 v1, 0x437f0000    # 255.0f

    aput v1, v0, v2

    sput-object v0, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    .line 24493
    new-array v0, v3, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    .line 24458
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .locals 8
    .param p1, "configuration"    # Landroid/view/ViewConfiguration;
    .param p2, "host"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 24518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24490
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 24505
    iput v6, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 24509
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarBounds:Landroid/graphics/Rect;

    .line 24514
    iput v6, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingState:I

    .line 24516
    iput v1, p0, Landroid/view/View$ScrollabilityCache;->mScrollBarDraggingPos:F

    .line 24519
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 24520
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 24521
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 24522
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 24524
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 24525
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    .line 24528
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v5, -0x1000000

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 24529
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 24530
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24532
    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    .line 24518
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 24554
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 24555
    .local v4, "now":J
    iget-wide v6, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 24560
    long-to-int v2, v4

    .line 24563
    .local v2, "nextFrame":I
    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 24561
    .local v1, "interpolator":Landroid/graphics/Interpolator;
    const/4 v3, 0x0

    .line 24566
    const/4 v0, 0x1

    .local v0, "framesCount":I
    sget-object v6, Landroid/view/View$ScrollabilityCache;->OPAQUE:[F

    invoke-virtual {v1, v3, v2, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 24569
    iget v3, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    add-int/2addr v2, v3

    .line 24570
    sget-object v3, Landroid/view/View$ScrollabilityCache;->TRANSPARENT:[F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 24572
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 24575
    iget-object v3, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/View;->invalidate(Z)V

    .line 24553
    .end local v0    # "framesCount":I
    .end local v1    # "interpolator":Landroid/graphics/Interpolator;
    .end local v2    # "nextFrame":I
    :cond_0
    return-void
.end method

.method public setFadeColor(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x1000000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 24536
    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    if-eq p1, v0, :cond_0

    .line 24537
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    .line 24539
    if-eqz p1, :cond_1

    .line 24540
    new-instance v0, Landroid/graphics/LinearGradient;

    or-int/2addr v5, p1

    .line 24541
    const v2, 0xffffff

    and-int v6, p1, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    .line 24540
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 24542
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 24544
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24535
    :cond_0
    :goto_0
    return-void

    .line 24546
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 24547
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 24548
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method
