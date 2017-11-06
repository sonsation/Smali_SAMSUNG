.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
.super Ljava/lang/Object;
.source "TagWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagObservable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;
    }
.end annotation


# instance fields
.field private mId:I

.field private mOnValueChangedListener:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

.field private final mUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

.field private mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)V
    .locals 0
    .param p1, "updater"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->setOnValueChangedListener(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->setId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mId:I

    return v0
.end method

.method private setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mId:I

    .line 113
    return-void
.end method

.method private setOnValueChangedListener(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mOnValueChangedListener:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

    .line 117
    return-void
.end method


# virtual methods
.method set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 105
    .local v0, "isChanged":Z
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mValue:Ljava/lang/Object;

    .line 106
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mOnValueChangedListener:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->mOnValueChangedListener:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;->onValueChanged(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)V

    .line 109
    :cond_0
    return-void

    .line 104
    .end local v0    # "isChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
