.class final Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
.super Ljava/lang/Object;
.source "MusicImageSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimSet"
.end annotation


# instance fields
.field private final in:Landroid/view/animation/Animation;

.field private final out:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "in"    # Landroid/view/animation/Animation;
    .param p2, "out"    # Landroid/view/animation/Animation;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;->in:Landroid/view/animation/Animation;

    .line 127
    iput-object p2, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;->out:Landroid/view/animation/Animation;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;->in:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;->out:Landroid/view/animation/Animation;

    return-object v0
.end method
