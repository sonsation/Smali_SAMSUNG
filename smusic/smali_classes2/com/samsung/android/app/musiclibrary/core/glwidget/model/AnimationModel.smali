.class Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
.source "AnimationModel.java"


# instance fields
.field private mAnimation:Landroid/animation/AnimatorSet;

.field private mUserObject:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->mAnimation:Landroid/animation/AnimatorSet;

    .line 62
    .local v0, "a":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->mAnimation:Landroid/animation/AnimatorSet;

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 66
    :cond_0
    return-void
.end method

.method public getUser()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->mUserObject:Ljava/lang/Object;

    return-object v0
.end method

.method public isAnimationStarted()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->mAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->cancelAnimation()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->mAnimation:Landroid/animation/AnimatorSet;

    .line 46
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public setUser(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/AnimationModel;->mUserObject:Ljava/lang/Object;

    .line 51
    return-void
.end method
