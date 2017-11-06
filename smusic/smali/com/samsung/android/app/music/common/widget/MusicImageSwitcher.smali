.class public Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;
.super Landroid/widget/ImageSwitcher;
.source "MusicImageSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

.field private mNextAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

.field private mPrevAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private getListAnimSet()Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->mListAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05001a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050019

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->mListAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->mListAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    return-object v0
.end method

.method private getNextAnimSet()Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->mNextAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05001c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05001b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->mNextAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->mNextAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    return-object v0
.end method

.method private getPrevAnimSet()Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->mPrevAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05001e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05001d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->mPrevAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->mPrevAnim:Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    return-object v0
.end method

.method private setInOutAnimation(I)V
    .locals 4
    .param p1, "viDirection"    # I

    .prologue
    .line 70
    sget-object v1, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInOutAnimation() - viDirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    packed-switch p1, :pswitch_data_0

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getListAnimSet()Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    move-result-object v0

    .line 84
    .local v0, "set":Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;->access$000(Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 85
    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;->access$100(Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 86
    return-void

    .line 75
    .end local v0    # "set":Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getNextAnimSet()Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    move-result-object v0

    .line 76
    .restart local v0    # "set":Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
    goto :goto_0

    .line 78
    .end local v0    # "set":Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getPrevAnimSet()Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;

    move-result-object v0

    .line 79
    .restart local v0    # "set":Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher$AnimSet;
    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p1, "viDirection"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "queueType"    # I

    .prologue
    .line 43
    sget-object v1, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setImageDrawable() viDirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-nez p1, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .local v0, "iv":Landroid/widget/ImageView;
    if-nez p2, :cond_1

    .line 47
    invoke-static {p3}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getDefaultAlbumArt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    .line 49
    .restart local v0    # "iv":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 56
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/widget/MusicImageSwitcher;->setInOutAnimation(I)V

    .line 57
    if-nez p2, :cond_3

    .line 58
    invoke-static {p3}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getDefaultAlbumArt(I)I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_1

    .line 60
    :cond_3
    invoke-super {p0, p2}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
