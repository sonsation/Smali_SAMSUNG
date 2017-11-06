.class public Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
.super Lcom/altamirasoft/path_animation/PathLineAnimationView;
.source "MusicPathLineAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimationDirection;
    }
.end annotation


# static fields
.field public static final DIRECTION_CLOCKWISE:I = 0x1

.field public static final DIRECTION_COUNTER_CLOCKWISE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDelays:[J

.field private mAnimationDirections:[I
    .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimationDirection;
    .end annotation
.end field

.field private mAnimationDurations:[J

.field private mAnimationInterpolators:[Landroid/animation/TimeInterpolator;

.field private mImageLineCapStyles:[Landroid/graphics/Paint$Cap;

.field private mImageLineColors:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mImageLineWidths:[I

.field private mImageResourceId:I

.field private final mMusicPathAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field private final mNoAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field private final mPathListener:Lcom/altamirasoft/path_animation/PathListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageResourceId:I

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mNoAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 50
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mMusicPathAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mPathListener:Lcom/altamirasoft/path_animation/PathListener;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageResourceId:I

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mNoAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 50
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mMusicPathAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mPathListener:Lcom/altamirasoft/path_animation/PathListener;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/altamirasoft/path_animation/PathLineAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageResourceId:I

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mNoAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 50
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mMusicPathAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mPathListener:Lcom/altamirasoft/path_animation/PathListener;

    .line 62
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageLineWidths:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageLineColors:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[Landroid/graphics/Paint$Cap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageLineCapStyles:[Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mAnimationInterpolators:[Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mAnimationDurations:[J

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mAnimationDelays:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mAnimationDirections:[I

    return-object v0
.end method


# virtual methods
.method public varargs setAnimationDelays([J)V
    .locals 0
    .param p1, "delays"    # [J

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mAnimationDelays:[J

    .line 90
    return-void
.end method

.method public varargs setAnimationDirections([I)V
    .locals 0
    .param p1, "directions"    # [I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimationDirection;
        .end annotation
    .end param

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mAnimationDirections:[I

    .line 94
    return-void
.end method

.method public varargs setAnimationDurations([J)V
    .locals 0
    .param p1, "durations"    # [J

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mAnimationDurations:[J

    .line 86
    return-void
.end method

.method public varargs setAnimationInterpolators([Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # [Landroid/animation/TimeInterpolator;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mAnimationInterpolators:[Landroid/animation/TimeInterpolator;

    .line 82
    return-void
.end method

.method public varargs setImageLineCapStyle([Landroid/graphics/Paint$Cap;)V
    .locals 0
    .param p1, "style"    # [Landroid/graphics/Paint$Cap;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageLineCapStyles:[Landroid/graphics/Paint$Cap;

    .line 78
    return-void
.end method

.method public varargs setImageLineColor([I)V
    .locals 0
    .param p1, "color"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageLineColors:[I

    .line 74
    return-void
.end method

.method public varargs setImageLineWidth([I)V
    .locals 0
    .param p1, "widths"    # [I

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageLineWidths:[I

    .line 70
    return-void
.end method

.method public setPathLineImage(I)V
    .locals 0
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 65
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageResourceId:I

    .line 66
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 107
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "image resource is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageResourceId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setSVG(I)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mPathListener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mNoAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    .line 112
    invoke-super {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    .line 113
    return-void
.end method

.method public showWithAnimation()V
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "image resource is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mImageResourceId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setSVG(I)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mPathListener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->mMusicPathAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    .line 122
    invoke-super {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    .line 123
    return-void
.end method

.method public start()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    invoke-super {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    .line 103
    return-void
.end method
