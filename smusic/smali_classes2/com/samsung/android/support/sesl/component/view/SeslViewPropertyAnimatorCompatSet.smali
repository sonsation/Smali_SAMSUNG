.class public Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "SeslViewPropertyAnimatorCompatSet.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field mListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

.field private final mProxyListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mDuration:J

    .line 121
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet$1;-><init>(Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mProxyListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 51
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 91
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 95
    .local v0, "animator":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->cancel()V

    goto :goto_1

    .line 97
    .end local v0    # "animator":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mIsStarted:Z

    goto :goto_0
.end method

.method onAnimationsEnded()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 88
    return-void
.end method

.method public play(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "animator"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    return-object p0
.end method

.method public playSequentially(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    .locals 2
    .param p1, "anim1"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .param p2, "anim2"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setStartDelay(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-object p0
.end method

.method public setDuration(J)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 102
    iput-wide p1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mDuration:J

    .line 104
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 109
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 111
    :cond_0
    return-object p0
.end method

.method public setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    .line 118
    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 69
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 71
    .local v0, "animator":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 72
    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mDuration:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    .line 78
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mProxyListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 80
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 83
    .end local v0    # "animator":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/SeslViewPropertyAnimatorCompatSet;->mIsStarted:Z

    goto :goto_0
.end method
