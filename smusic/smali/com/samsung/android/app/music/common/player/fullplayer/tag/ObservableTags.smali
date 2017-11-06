.class public final Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Type;
    }
.end annotation


# static fields
.field static final MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;->MAP:Landroid/util/SparseArray;

    .line 40
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;->MAP:Landroid/util/SparseArray;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Stream:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;->MAP:Landroid/util/SparseArray;

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Connection:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;->MAP:Landroid/util/SparseArray;

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Lyrics:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;->MAP:Landroid/util/SparseArray;

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Private:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;->MAP:Landroid/util/SparseArray;

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Upscaler:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    .line 70
    return-void
.end method
