.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniPlayerPlayingItemText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeOutInText"
.end annotation


# static fields
.field private static final DECELERATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TITLE_ANIMATION_DURATION:I = 0x7d


# instance fields
.field private mText:Ljava/lang/String;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->DECELERATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->mTextView:Landroid/widget/TextView;

    .line 143
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 153
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->DECELERATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 160
    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->mText:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->DECELERATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 149
    return-void
.end method
