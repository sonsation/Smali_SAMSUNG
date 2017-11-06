.class final Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;
.super Ljava/lang/Object;
.source "HighlightProgressUpdater.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDurationTimeText:Landroid/widget/TextView;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOffsetTimeText:Landroid/widget/TextView;

.field private final mParentView:Landroid/view/View;

.field private mProgress:Landroid/widget/ImageView;

.field private mStartTimeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mMainHandler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mParentView:Landroid/view/View;

    .line 40
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->initView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mStartTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mProgress:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mOffsetTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mDurationTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 44
    const v1, 0x7f12056e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "contentView":Landroid/view/View;
    const v1, 0x7f120571

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mStartTimeText:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f12056f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mOffsetTimeText:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f120572

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mDurationTimeText:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f1202a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mProgress:Landroid/widget/ImageView;

    .line 50
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_AUTO_RECOMMENDATION:Z

    if-nez v1, :cond_0

    .line 51
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->TAG:Ljava/lang/String;

    const-string v2, "initView()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method update(JII)V
    .locals 7
    .param p1, "delayMs"    # J
    .param p3, "offset"    # I
    .param p4, "duration"    # I

    .prologue
    .line 57
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_AUTO_RECOMMENDATION:Z

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater$1;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/HighlightProgressUpdater;IIJ)V

    invoke-virtual {v6, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
